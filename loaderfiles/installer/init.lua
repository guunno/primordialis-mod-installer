dofile("data/scripts/lua_mods/pre.lua")
dofile("data/scripts/utilities.lua")

function example_spawn(body_id, x, y)
    local target_x = x
    local target_y = y

    values = {}
    values[3] = target_x
    values[4] = target_y

    return values
end

function example_spawn_explosive_resistance(body_id, x, y)
    local target_x = x
    local target_y = y

    values = {}
    values[3] = target_x
    values[4] = target_y

    give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);

    return values
end

function spawn_rebirth(body_id, x, y)
    give_mutation(body_id, MUT_REBIRTH);
end

function spawn_drifting(body_id, x, y)
    give_mutation(body_id, MUT_DRIFTING);
end

function spawn_drifting_ice(body_id, x, y)
    give_mutation(body_id, MUT_DRIFTING);
    give_mutation(body_id, MUT_FREEZING);
end

function spawn_budding(body_id, x, y)
    give_mutation(body_id, MUT_BUDDING);
end

function spawn_budding_rebirth(body_id, x, y)
    give_mutation(body_id, MUT_BUDDING);
    give_mutation(body_id, MUT_REBIRTH);
end

function spawn_budding_drifting_exp(body_id, x, y)
	give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);
    give_mutation(body_id, MUT_BUDDING);
	give_mutation(body_id, MUT_DRIFTING);
end

function spawn_rebirth_exp(body_id, x, y)
    give_mutation(body_id, MUT_REBIRTH);
	-- give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);
end

function spawn_drifting_exp(body_id, x, y)
    give_mutation(body_id, MUT_DRIFTING);
	-- give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);
end

function spawn_drifting_mutpoison(body_id, x, y)
    give_mutation(body_id, MUT_DRIFTING);
	give_mutation(body_id, MUT_MUTAGENIC_POISON, {"BREK"})
end

function spawn_exp_mutpoison_explosion(body_id, x, y)
    give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);
	give_mutation(body_id, MUT_MUTAGENIC_POISON, {"BOMB"})
end

function spawn_mutpoison_amp(body_id, x, y)
	give_mutation(body_id, MUT_MUTAGENIC_POISON, {"AAMP"})
end

function spawn_drifting_mutpoison_ligt(body_id, x, y)
	give_mutation(body_id, MUT_DRIFTING)
	give_mutation(body_id, MUT_MUTAGENIC_POISON, {"LIGT"})
end

function spawn_freeze(body_id, x, y)
    give_mutation(body_id, MUT_FREEZING);
    give_mutation(body_id, MUT_EXPLOSIVE_RESISTANCE);
    give_mutation(body_id, MUT_REBIRTH);
end

function spawn_lightning_drifting_freeze(body_id, x, y)
    give_mutation(body_id, MUT_CHAIN_LIGHTNING);
    give_mutation(body_id, MUT_DRIFTING);
    give_mutation(body_id, MUT_FREEZING);
end

function spawn_strafing(body_id, x, y)
    give_mutation(body_id, MUT_STRAFING);
end

function spawn_regen(body_id, x, y)
    give_mutation(body_id, MUT_REGEN);
end

dofile("data/scripts/enemies/fleer_brain.lua")
dofile("data/scripts/enemies/tongue_brain.lua")
dofile("data/scripts/enemies/chainsaw_brain.lua")
dofile("data/scripts/enemies/miner_brain.lua")
dofile("data/scripts/enemies/furnace_brain.lua")
dofile("data/scripts/enemies/scorpion_brain.lua")
dofile("data/scripts/enemies/saw_shark_brain.lua")
dofile("data/scripts/enemies/neuron_brain.lua")
dofile("data/scripts/enemies/polychaete_tiny_brain.lua")
dofile("data/scripts/enemies/snail_brain.lua")
dofile("data/scripts/enemies/crab_brain.lua")
dofile("data/scripts/enemies/goblin_brain.lua")
dofile("data/scripts/enemies/nautilus_brain.lua")
dofile("data/scripts/enemies/trilobite_brain.lua")
dofile("data/scripts/enemies/acid_shark_brain.lua")
dofile("data/scripts/enemies/mole_brain.lua")
dofile("data/scripts/enemies/predator_brain.lua")
dofile("data/scripts/enemies/mantis_brain.lua")
-- dofile("data/scripts/enemies/dragonfly_brain.lua")
-- dofile("data/scripts/enemies/fly_brain.lua")
dofile("data/scripts/enemies/tardigrade_brain.lua")
dofile("data/scripts/enemies/flowersploder_brain.lua")
dofile("data/scripts/enemies/swarmer_brain.lua")
dofile("data/scripts/enemies/droner_brain.lua")
dofile("data/scripts/enemies/corpse_brain.lua")
dofile("data/scripts/enemies/ball_plant_brain.lua")
dofile("data/scripts/enemies/grapple_brain.lua")
dofile("data/scripts/enemies/plant_boss_brain.lua")
dofile("data/scripts/enemies/gyre_boss_brain.lua")
dofile("data/scripts/enemies/eel_brain.lua")
dofile("data/scripts/enemies/vampire_brain.lua")
dofile("data/scripts/enemies/net_squid_brain.lua")
dofile("data/scripts/enemies/fan_worm_brain.lua")
dofile("data/scripts/enemies/geyser_brain.lua")
dofile("data/scripts/enemies/ghost_jelly_brain.lua")
dofile("data/scripts/enemies/sticker_brain.lua")
dofile("data/scripts/enemies/meteor_brain.lua")
dofile("data/scripts/enemies/plusser_brain.lua")
-- dofile("data/scripts/enemies/mosquito_brain.lua")
-- dofile("data/scripts/enemies/firefly_brain.lua")
dofile("data/scripts/enemies/caterpillar_brain.lua")

-- MEAT enemies
dofile("data/scripts/enemies/beamer_brain.lua")
dofile("data/scripts/enemies/turret_brain.lua")
dofile("data/scripts/enemies/polychaete_brain.lua")
dofile("data/scripts/enemies/thunder_brain.lua")
dofile("data/scripts/enemies/lazor_brain.lua")

dofile("data/scripts/enemies/bouncer_brain.lua")
dofile("data/scripts/enemies/puffer_brain.lua")
dofile("data/scripts/enemies/spear_brain.lua")
dofile("data/scripts/enemies/spiral_worm_brain.lua")
dofile("data/scripts/enemies/tentacle_brain.lua")
dofile("data/scripts/enemies/matrix_brain.lua")
dofile("data/scripts/enemies/hydra_brain.lua")
dofile("data/scripts/enemies/throngler_brain.lua")
dofile("data/scripts/enemies/snuil_brain.lua")
dofile("data/scripts/enemies/mouth_brain.lua")
dofile("data/scripts/enemies/slapper_brain.lua")
dofile("data/scripts/enemies/blood_cell_brain.lua")
dofile("data/scripts/enemies/chainsaw_chariot_brain.lua")

--
dofile("data/scripts/enemies/magna_brain.lua")
dofile("data/scripts/enemies/spring_brain.lua")
dofile("data/scripts/enemies/glaucus_brain.lua")
dofile("data/scripts/enemies/cucumber_brain.lua")
dofile("data/scripts/enemies/snowflake_brain.lua")
dofile("data/scripts/enemies/volcano_brain.lua")
dofile("data/scripts/enemies/mooner_brain.lua")
dofile("data/scripts/enemies/whisp_brain.lua")
dofile("data/scripts/enemies/dumbo_brain.lua")
dofile("data/scripts/enemies/atolla_brain.lua")
dofile("data/scripts/enemies/radioactive_brain.lua")

dofile("data/scripts/enemies/venus_brain.lua")
dofile("data/scripts/enemies/fern_brain.lua")
dofile("data/scripts/enemies/mush_brain.lua")
dofile("data/scripts/enemies/mush_big_brain.lua")
dofile("data/scripts/enemies/brambler_brain.lua")
dofile("data/scripts/enemies/beehive_brain.lua")
dofile("data/scripts/enemies/popper_brain.lua")

dofile("data/scripts/enemies/lobster_brain.lua")
dofile("data/scripts/enemies/clubber_brain.lua")
dofile("data/scripts/enemies/rocket_slow_brain.lua")
dofile("data/scripts/enemies/school_brain.lua")

dofile("data/scripts/enemies/sniper_brain.lua")
dofile("data/scripts/enemies/parasite_brain.lua")

dofile("data/scripts/enemies/flutter_brain.lua")
dofile("data/scripts/enemies/teleporter_brain.lua")

dofile("data/scripts/enemies/thunder_chariot_brain.lua")
dofile("data/scripts/enemies/thundernado_brain.lua")

dofile("data/scripts/enemies/varmint_brain.lua")
dofile("data/scripts/enemies/sawer_brain.lua")

function creature_list()
	register_creature("SNYL", "body plans/SNAIL.bod", "snail_brain")

    --START
	register_creature("SCRP", "body plans/SCORPION.bod", "scorpion_brain")
	register_creature("PCTT", "body plans/POLYCHAETE_TINY.bod", "polychaete_tiny_brain")

	register_creature("CMBR", "body plans/CUCUMBER.bod", "cucumber_brain", "spawn_rebirth")
	register_creature("SPRI", "body plans/SPRING.bod", "spring_brain", "spawn_drifting")

	register_creature("SCHL", "body plans/SCHOOL.bod", "school_brain")
	register_creature("RCKT", "body plans/ROCKET_SLOW.bod", "rocket_slow_brain")
	register_creature("CLUB", "body plans/CLUBBER.bod", "clubber_brain")
	register_creature("MIND", "body plans/PARASITE.bod", "parasite_brain")

    --DARK
	register_creature("TONG", "body plans/TONGUE.bod", "tongue_brain")
	register_creature("TRLB", "body plans/TRILOBITE.bod", "trilobite_brain")
	register_creature("EEEL", "body plans/EEL.bod", "eel_brain")
	register_creature("GHST", "body plans/GHOST_JELLY.bod", "ghost_jelly_brain")
	register_creature("VAMP", "body plans/VAMPIRE_SQUID.bod", "vampire_brain")
	register_creature("SNET", "body plans/NET_SQUID.bod", "net_squid_brain")

	register_creature("ATOL", "body plans/ATOLLA_JELLY.bod", "atolla_brain", "spawn_mutpoison_amp")
	register_creature("MGNA", "body plans/MAGNA_PINNA.bod", "magna_brain", "spawn_drifting")
	register_creature("DMBO", "body plans/DUMBO.bod", "dumbo_brain")
	register_creature("LBST", "body plans/LOBSTER.bod", "lobster_brain")

    --ICE
	register_creature("FLER", "body plans/FLEER.bod", "fleer_brain", "spawn_rebirth")
	register_creature("DRNR", "body plans/DRONER.bod", "droner_brain", "example_spawn_explosive_resistance")
	register_creature("COMP", "body plans/COMPRESSOR.bod", "saw_shark_brain")
	register_creature("SSRK", "body plans/SAW_SHARK.bod", "saw_shark_brain")
	register_creature("NEUR", "body plans/NEURON.bod", "neuron_brain")
	register_creature("WISP", "body plans/WHISP.bod", "whisp_brain")
	register_creature("SNFL", "body plans/SNOWFLAKE.bod", "snowflake_brain", "spawn_drifting_ice")
	register_creature("MOON", "body plans/MOONER.bod", "mooner_brain", "spawn_exp_mutpoison_explosion")
	register_creature("SNPR", "body plans/SNIPER.bod", "sniper_brain")
    register_creature("TELE", "body plans/TELEPORTER.bod", "teleporter_brain")

    --FIRE
	register_creature("FRNX", "body plans/FURNACE.bod", "furnace_brain", "example_spawn_explosive_resistance")
	register_creature("CHIN", "body plans/CHAINSAW.bod", "chainsaw_brain")
	register_creature("MINE", "body plans/MINER.bod", "miner_brain", "example_spawn_explosive_resistance")
	register_creature("METR", "body plans/METEOR.bod", "meteor_brain", "example_spawn_explosive_resistance")
    register_creature("PLUS", "body plans/PLUSSER.bod", "plusser_brain")
	register_creature("VOLC", "body plans/VOLCANO.bod", "volcano_brain", "spawn_budding_drifting_exp")
	register_creature("SAWR", "body plans/SAWER.bod", "sawer_brain", "spawn_strafing")

	--TOXIC
	register_creature("FWRM", "body plans/FAN_WORM.bod", "fan_worm_brain")
	register_creature("GYSR", "body plans/ACID_GEYSER.bod", "geyser_brain")
	register_creature("CRAB", "body plans/CRAB.bod", "crab_brain")
	register_creature("GBLN", "body plans/GOBLIN.bod", "goblin_brain")
	register_creature("NAUT", "body plans/NAUTILUS.bod", "nautilus_brain")
	register_creature("ASHK", "body plans/ACID_SHARK.bod", "acid_shark_brain")
    register_creature("STKR", "body plans/STICKER.bod", "sticker_brain", "spawn_drifting")
    register_creature("GLAU", "body plans/GLAUCUS.bod", "glaucus_brain", "spawn_drifting")
    register_creature("RADI", "body plans/RADIOACTIVE.bod", "radioactive_brain", "spawn_drifting_mutpoison_ligt")

	--JUNGLE
	register_creature("MOLE", "body plans/MOLE.bod", "mole_brain")
	register_creature("LILY", "body plans/CORPSE.bod", "corpse_brain")
	-- register_creature("PLNT", "body plans/PLANT_BOSS.bod", "plant_boss_brain") --moved to C++ so it doesn't fail spawning bosses due to lua errors
	register_creature("GRPL", "body plans/GRAPPLE.bod", "grapple_brain")
	register_creature("FLWR", "body plans/FLOWERSPLODER.bod", "flowersploder_brain")
	register_creature("BPNT", "body plans/BALL_PLANT.bod", "ball_plant_brain")
	register_creature("PRED", "body plans/PREDATOR.bod", "predator_brain")
	register_creature("MNTS", "body plans/MANTIS.bod", "mantis_brain")
	register_creature("SRDG", "body plans/SMALLDIGRADE.bod", "tardigrade_brain", "example_spawn_explosive_resistance")
	register_creature("SWRM", "body plans/SWARMER.bod", "swarmer_brain")
	-- register_creature("DRFY", "body plans/DRAGONFLY.bod", "dragonfly_brain") --moved to C++ for performance
	-- register_creature("BFLY", "body plans/FLY.bod", "fly_brain")
	-- register_creature("MSQT", "body plans/MOSQUITO.bod", "mosquito_brain")
	-- register_creature("FFLY", "body plans/FIREFLY.bod", "firefly_brain")
	register_creature("CTPL", "body plans/CATERPILLAR.bod", "caterpillar_brain")
    register_creature("FLTR", "body plans/FLUTTERPEDE.bod", "flutter_brain")
    register_creature("VRMT", "body plans/VARMINT.bod", "varmint_brain")

	register_creature("POPC", "body plans/POPCORN.bod", nil, "spawn_drifting")
	register_creature("POPR", "body plans/POPPER.bod", "popper_brain")
	register_creature("VNUS", "body plans/VENUS.bod", "venus_brain")
	register_creature("FERN", "body plans/FERN.bod", "fern_brain")
	register_creature("MUSH", "body plans/MUSH.bod", "mush_brain")
	register_creature("MSHB", "body plans/MUSH_BIG.bod", "mush_big_brain")
	register_creature("BRMB", "body plans/BRAMBLER.bod", "brambler_brain", "spawn_drifting")
	register_creature("HIVE", "body plans/BEEHIVE.bod", "beehive_brain", "spawn_drifting")

	--MEAT
	register_creature("PFFR", "body plans/PUFFER.bod", "puffer_brain", "example_spawn")
	register_creature("SPRM", "body plans/SPIRAL_WORM.bod", "spiral_worm_brain", "example_spawn")
	register_creature("EYEB", "body plans/BOUNCER.bod", "bouncer_brain", "spawn_drifting")
	register_creature("TNTC", "body plans/TENTACLE.bod", "tentacle_brain")
	register_creature("SPRE", "body plans/SPEAR.bod", "spear_brain", "example_spawn")
	register_creature("MTRX", "body plans/MATRIX.bod", "matrix_brain", "spawn_rebirth_exp")
	register_creature("HYDR", "body plans/HYDRA.bod", "hydra_brain", "spawn_budding_rebirth")
	register_creature("MOUT", "body plans/MOUTH.bod", "mouth_brain", "example_spawn")
	register_creature("TRNG", "body plans/THRONGLER.bod", "throngler_brain", "example_spawn")
	register_creature("SLPR", "body plans/SLAPPER.bod", "slapper_brain", "spawn_drifting_exp")
	register_creature("CHCH", "body plans/CHAINSAW_CHARIOT.bod", "chainsaw_chariot_brain", "example_spawn")
	register_creature("SNUL", "body plans/SNUIL.bod", "snuil_brain")

	register_creature("REDB", "body plans/BLOOD_CELL.bod", "blood_cell_brain")

	register_creature("LZER", "body plans/LAZOR.bod", "lazor_brain", "example_spawn")
	register_creature("BEAM", "body plans/BEAMER.bod", "beamer_brain", "spawn_lightning_drifting_freeze")
	register_creature("PCHT", "body plans/POLYCHAETE.bod", "polychaete_brain", "example_spawn")
	register_creature("TNDR", "body plans/THUNDER.bod", "thunder_brain")
	register_creature("TRRT", "body plans/TURRET.bod", "turret_brain")
    register_creature("THCH", "body plans/THUNDER_CHARIOT.bod", "thunder_chariot_brain", "spawn_regen")
    register_creature("TDNO", "body plans/THUNDERNADO.bod", "thundernado_brain", "spawn_freeze")
end

function init_biomes()
    add_creature_spawn_chance("SAFE", "DUMY", 0.05, 0)
    add_creature_spawn_chance("SAFE", "SNYL", 0.1, 3)

    add_creature_spawn_chance("STRT", "FISH", 0.05, 3)
    add_creature_spawn_chance("STRT", "SHLD", 0.01, 5, 3.0)
    add_creature_spawn_chance("STRT", "MWRM", 0.002, 15, 0/0)
    add_creature_spawn_chance("STRT", "CHRT", 0.008, 5, 0/0)
    add_creature_spawn_chance("STRT", "SCRP", 0.005, 8, 0/0)
    add_creature_spawn_chance("STRT", "STKR", 0.01, 5, 0/0)
    add_creature_spawn_chance("STRT", "GRUB", 0.1, 1, 0/0)
    add_creature_spawn_chance("STRT", "AANT", 0.1, 1, 0/0)
    add_creature_spawn_chance("STRT", "SNYL", 0.05, 3)
    add_creature_spawn_chance("STRT", "PCTT", 0.01, 1, 0/0)
    add_creature_spawn_chance("STRT", "CMBR", 0.005, 1, 0/0)
    add_creature_spawn_chance("STRT", "SPRI", 0.04, 3)
    add_creature_spawn_chance("STRT", "CLUB", 0.005, 3)
    add_creature_spawn_chance("STRT", "RCKT", 0.005, 3, 0/0)
    add_creature_spawn_chance("STRT", "SCHL", 0.005, 3)
    add_creature_spawn_chance("STRT", "MIND", 0.005, 3)
	-- add_creature_spawn_chance("STRT", "MOON", 0.001, 20)

    add_plant_spawn_chance("STRT", "BUSH", 0.02, 2)
    add_plant_spawn_chance("STRT", "GRAS", 0.01, 2)
    add_plant_spawn_chance("STRT", "STRP", 0.005, 2)

    add_creature_spawn_chance("TOXC", "JSQD", 0.02, 5, 0/0)
    add_creature_spawn_chance("TOXC", "GBLN", 0.015, 6, 0/0)
    add_creature_spawn_chance("TOXC", "NAUT", 0.02, 8, 0/0)
    add_creature_spawn_chance("TOXC", "SCRP", 0.015, 8, 0/0)
    add_creature_spawn_chance("TOXC", "STKR", 0.010, 8, 0/0)
    add_creature_spawn_chance("TOXC", "MWRM", 0.005, 15, 0/0)
    add_creature_spawn_chance("TOXC", "CRAB", 0.05, 3)
    add_creature_spawn_chance("TOXC", "ASHK", 0.01, 6, 0/0)
    add_creature_spawn_chance("TOXC", "GLAU", 0.02, 3, 0/0)
	add_creature_spawn_chance("TOXC", "RADI", 0.005, 15, 0/0)
	add_plant_spawn_chance("TOXC", "FWRM", 0.02, 2)
    add_plant_spawn_chance("TOXC", "GYSR", 0.005, 2)

    add_creature_spawn_chance("ICEE", "FISH", 0.05, 5)
    add_creature_spawn_chance("ICEE", "FSH2", 0.01, 20)
    add_creature_spawn_chance("ICEE", "EJEL", 0.008, 20, 0/0)
    add_creature_spawn_chance("ICEE", "TXPL", 0.01, 20)
    add_creature_spawn_chance("ICEE", "LSTR", 0.02, 10)
    add_creature_spawn_chance("ICEE", "FLER", 0.002, 40)
    add_creature_spawn_chance("ICEE", "NEUR", 0.002, 40, 0/0)
    add_creature_spawn_chance("ICEE", "DRNR", 0.002, 40)
    add_creature_spawn_chance("ICEE", "COMP", 0.0005, 40)
    add_creature_spawn_chance("ICEE", "SSRK", 0.01, 20)
    add_creature_spawn_chance("ICEE", "MJEL", 0.1, 1, 0/0)
	add_creature_spawn_chance("ICEE", "WISP", 0.01, 20)
    add_creature_spawn_chance("ICEE", "SNFL", 0.01, 20)
	add_creature_spawn_chance("ICEE", "MOON", 0.01, 30, 0/0)
    add_creature_spawn_chance("ICEE", "SNPR", 0.01, 20)
    add_creature_spawn_chance("ICEE", "TELE", 0.01, 20, 0/0)

    add_plant_spawn_chance("ICEE", "CORL", 0.02, 2)

    add_creature_spawn_chance("FIRE", "MSLR", 0.01, 100)
    add_creature_spawn_chance("FIRE", "ESTR", 0.02, 40)
    add_creature_spawn_chance("FIRE", "FNOM", 0.01, 80)
    add_creature_spawn_chance("FIRE", "METR", 0.0025, 100)
    add_creature_spawn_chance("FIRE", "CHIN", 0.01, 60)
    add_creature_spawn_chance("FIRE", "FRNX", 0.005, 100, 0/0)
    add_creature_spawn_chance("FIRE", "MINE", 0.01, 80)
    add_creature_spawn_chance("FIRE", "PLUS", 0.002, 70)
    add_creature_spawn_chance("FIRE", "WIGL", 0.03, 1, 0/0)
    add_creature_spawn_chance("FIRE", "VOLC", 0.005, 100)
	add_creature_spawn_chance("FIRE", "SAWR", 0.005, 100)

	add_creature_spawn_chance("JNGL", "SWRM", 0.01, 30)
    add_creature_spawn_chance("JNGL", "MOLE", 0.008, 80)
    add_creature_spawn_chance("JNGL", "GRPL", 0.01, 80)
	add_creature_spawn_chance("JNGL", "LILY", 0.008, 80)
	add_creature_spawn_chance("JNGL", "FLWR", 0.008, 120)
	add_creature_spawn_chance("JNGL", "PRED", 0.002, 150)
	add_creature_spawn_chance("JNGL", "MNTS", 0.002, 120)
	add_creature_spawn_chance("JNGL", "SRDG", 0.001, 100)
    add_creature_spawn_chance("JNGL", "FLTR", 0.01, 20)
    add_creature_spawn_chance("JNGL", "VRMT", 0.002, 100)

	add_plant_spawn_chance("JNGL", "BPNT", 0.002, 50)
    add_plant_spawn_chance("JNGL", "VINE", 0.005, 5)
    add_plant_spawn_chance("JNGL", "CTPL", 0.008, 5)
	add_plant_spawn_chance("JNGL", "HIVE", 0.01, 5)
	add_plant_spawn_chance("JNGL", "MSHB", 0.01, 5)
	add_plant_spawn_chance("JNGL", "MUSH", 0.025, 5)
	add_plant_spawn_chance("JNGL", "VNUS", 0.015, 5)
	add_plant_spawn_chance("JNGL", "POPC", 0.005, 1)
	add_plant_spawn_chance("JNGL", "POPR", 0.015, 5)
	add_plant_spawn_chance("JNGL", "FERN", 0.005, 5)
	add_plant_spawn_chance("JNGL", "BRMB", 0.003, 5)

    add_creature_spawn_chance("JNGL", "DRFY", 0.05, 1)
	add_creature_spawn_chance("JNGL", "BFLY", 0.2, 1)
    add_creature_spawn_chance("JNGL", "MSQT", 0.1, 1)
	add_creature_spawn_chance("JNGL", "FFLY", 0.08, 1)

    add_creature_spawn_chance("MEAT", "AMOE", 0.01, 200)
    add_creature_spawn_chance("MEAT", "CHCH", 0.01, 200)
    add_creature_spawn_chance("MEAT", "PFFR", 0.015, 200)
    add_creature_spawn_chance("MEAT", "SPRM", 0.003, 150)
    add_creature_spawn_chance("MEAT", "SPRE", 0.015, 120)
    add_creature_spawn_chance("MEAT", "MTRX", 0.006, 120)
    add_creature_spawn_chance("MEAT", "HYDR", 0.006, 120)
    add_creature_spawn_chance("MEAT", "TRNG", 0.008, 120)
    add_creature_spawn_chance("MEAT", "SLPR", 0.006, 120)
    add_creature_spawn_chance("MEAT", "LZER", 0.01, 100)
    add_creature_spawn_chance("MEAT", "BEAM", 0.008, 150)
    add_creature_spawn_chance("MEAT", "TRRT", 0.008, 150)
    add_creature_spawn_chance("MEAT", "PCHT", 0.006, 200)
    add_creature_spawn_chance("MEAT", "THCH", 0.01, 150)
    add_creature_spawn_chance("MEAT", "TDNO", 0.006, 100)

    add_plant_spawn_chance("MEAT", "TNDR", 0.005, 300)
    add_plant_spawn_chance("MEAT", "TNTC", 0.005, 3)
    add_plant_spawn_chance("MEAT", "SNUL", 0.0035, 3)
    add_plant_spawn_chance("MEAT", "MOUT", 0.002, 3)

    add_creature_spawn_chance("MEAT", "EYEB", 0.02, 1)
    add_creature_spawn_chance("MEAT", "REDB", 0.05, 1)

    add_creature_spawn_chance("DARK", "ASSN", 0.05, 10)
    add_creature_spawn_chance("DARK", "TONG", 0.01, 15)
    add_creature_spawn_chance("DARK", "SPDY", 0.008, 20)
    add_creature_spawn_chance("DARK", "GLBG", 0.2, 1)
    add_creature_spawn_chance("DARK", "TRLB", 0.03, 5)
    add_creature_spawn_chance("DARK", "GHST", 0.003, 30)
	add_creature_spawn_chance("DARK", "VAMP", 0.003, 10)
	-- add_creature_spawn_chance("DARK", "SNET", 0.003, 10) -- disabled because it's too laggy for what it adds
	add_creature_spawn_chance("DARK", "EEEL", 0.01, 5)
	add_creature_spawn_chance("DARK", "MGNA", 0.004, 10)
	add_creature_spawn_chance("DARK", "DMBO", 0.005, 10)
	add_creature_spawn_chance("DARK", "ATOL", 0.003, 10)

	add_plant_spawn_chance("DARK", "LBST", 0.005, 10)

    add_creature_spawn_chance("BOSS", "B100", 0.005, 1000)
    add_creature_spawn_chance("BOSS", "BMSL", 0.02, 1000)
    add_creature_spawn_chance("BOSS", "DNUT", 0.02, 200)
    add_plant_spawn_chance("BOSS", "PLNT", 0.0002, 2000)

    -- seasonal
    local tim = os.time()
    local d = os.date("*t", tim)
    if d.month==12 and d.day >= 24 then
        add_creature_spawn_chance("SAFE", "XMAS", 0.01, 1)
        add_creature_spawn_chance("STRT", "XMAS", 0.01, 1)
        add_creature_spawn_chance("TOXC", "XMAS", 0.01, 1)
        add_creature_spawn_chance("ICEE", "XMAS", 0.01, 1)
        add_creature_spawn_chance("FIRE", "XMAS", 0.01, 1)
        add_creature_spawn_chance("JNGL", "XMAS", 0.01, 1)
    end
end
dofile("data/scripts/lua_mods/post.lua")