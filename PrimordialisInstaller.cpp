#include <iostream>
#include <string>
#include <fstream>
#include <filesystem>

namespace fs = std::filesystem;

void copynormal(std::string gamepath)
{
    gamepath += "\\lua_mods";
    fs::create_directory(gamepath);
    for (const auto& entry : fs::directory_iterator("loaderfiles"))
    {
        if (fs::is_regular_file(entry.path()))
        {
            std::cout << "Found loader file: " << entry.path().filename() << "\n";
            fs::copy_file(entry.path(), gamepath / entry.path().filename(), fs::copy_options::overwrite_existing);
        }
    }
}

void genModList(std::string gamepath)
{
    std::string modlist = "---@type mod[]\n-- Example settings: {\"modname\", {configA = 16, configB = 0.5}}\n-- Read each mods readme file for more information\nLUA_MODLOADER_MOD_LIST = {\n";

    fs::create_directory(gamepath + "\\lua_mods\\mods");
    if (fs::is_empty("loaderfiles/mods"))
    {
        std::cout << "Found no mods\n";
        return;
    }
    std::cout << "Mods found in installer, autoinstall? (Y/N): ";
    std::string accept;
    std::cin >> accept;
    if (accept != "y" && accept != "Y")
    {
        std::cout << "Skipping mod installation\n";
        return;
    }

    uint32_t filecount = 0;

    for (const auto& entry : fs::directory_iterator("loaderfiles/mods"))
    {
        if (fs::is_directory(entry.path()))
        {
            std::cout << "Found mod: " << entry.path().filename() << "\n";
            fs::copy(entry.path(), (gamepath + "\\lua_mods\\mods") / entry.path().filename(), fs::copy_options::overwrite_existing | fs::copy_options::recursive);
            std::cout << "Installed\nAppending config\n";
            modlist += "\t{ \"" + entry.path().filename().string() + "\", {} },\n";
            filecount++;
        }
    }
    modlist += "}";
    std::ofstream listfile;
    listfile.open(gamepath + "\\lua_mods\\mod_list.lua", std::ofstream::out | std::ofstream::trunc);
    listfile << modlist;
    std::cout << "Loaded all " << filecount << " mods\n";
}

int main()
{
    std::string mode;

    std::cout << "Gunno's Mod Installer for Primordialis\n\n\tU = Uninstall\n\tP = Patch Init.lua (will not modify mod config)\n\tDefault = Install\nEnter mode or leave blank for default (Install): ";
    std::getline(std::cin, mode);


    std::string gamepath = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Primordialis\\data\\scripts"; // default path?
    std::string preline = "dofile(\"data/scripts/lua_mods/pre.lua\")\n";
    std::string postline = "dofile(\"data/scripts/lua_mods/post.lua\")";
    
    while (!fs::exists(gamepath))
    {
        std::cout << "Failed to find folder at location\n";
        std::cout << "Expected at: " << gamepath;
        std::cout << "\nEnter game data\\scripts folder path: ";
        gamepath = "";
        std::getline(std::cin, gamepath);
    }
    std::cout << "Found valid directory\n";

    std::ifstream initfile;
    std::ofstream newinitfile;
    initfile.open(gamepath + "\\init.lua");

    if (!initfile.good())
    {
        std::cout << "Couldn't open init.lua\nDouble check you have it in your game directory.\n";
        std::system("pause");
        return 0;
    }

    newinitfile.open(gamepath + "\\init.temp");

    std::string initcontent, line;
    while (std::getline(initfile, line)) {
        initcontent += line + "\n";
    }
    
    if (mode == "U" || mode == "u")
    {
        std::cout << "Uninstalling\n";

        if (fs::exists(gamepath + "\\lua_mods"))
        {
            std::cout << "Deleting lua_mods\n";
            try
            {
                fs::remove_all(gamepath + "\\lua_mods");
            }
            catch (...)
            {
                std::cerr << "Could not remove directory, skipping\n";
            }
        }

        std::cout << "Reversing init.lua\n";
        
        std::size_t pos = initcontent.find(preline);
        if (pos != std::string::npos)
        {
            initcontent.erase(pos, preline.length());
        }
        pos = initcontent.find(postline);
        if (pos != std::string::npos)
        {
            initcontent.erase(pos, postline.length());
        }

        newinitfile << initcontent;

        initfile.close();
        newinitfile.close();

        fs::remove((gamepath + "\\init.lua").c_str());
        fs::rename((gamepath + "\\init.temp").c_str(), (gamepath + "\\init.lua").c_str());

        std::cout << "Done!\n";
        std::system("pause");
        return 0;
    }

    std::cout << "Patching init.lua\n";

    initfile.close();

    size_t pos = initcontent.find(preline);
    if (pos == std::string::npos)
    {
        initcontent = preline + initcontent;
    }
    else
    {
        std::cout << "Mod loader content already found in init.lua, skipping preline append\nYou should only see this message if you're updating mods\nPress enter to confirm installation (ignore if updating mods)";
        std::cin.get();
    }
    
    pos = initcontent.find(postline);
    if (pos == std::string::npos)
    {
        initcontent = initcontent + postline;
    }
    else
    {
        std::cout << "Mod loader content already found in init.lua, skipping postline append\nYou should only see this message if you're updating mods\nPress enter to confirm installation (ignore if updating mods)";
        std::cin.get();
    }

    newinitfile << initcontent;
    newinitfile.close();

    fs::remove((gamepath + "\\init.lua").c_str());
    fs::rename((gamepath + "\\init.temp").c_str(), (gamepath + "\\init.lua").c_str());

    std::cout << "Completed Init patch\n";

    if (mode != "P" && mode != "p")
    {
        copynormal(gamepath);
        genModList(gamepath);
    }

    std::cout << "Done!\n";
    std::system("pause");
    return 0;
}
