///////////// DEFAULT 2020 MINING ASTEROID DATA /////////////////
/datum/random_map/automata/cave_system/mining_asteroid
	iterations = 5
	descriptor = "asteroid caves"
	wall_type =  /turf/wall/natural
	floor_type = /turf/floor/barren
	target_turf_type = /turf/unsimulated/mask

/datum/level_data/default_asteroid
	name = "Asteroid"
	level_id = "asteroid"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/default_asteroid
	level_flags = (ZLEVEL_PLAYER|ZLEVEL_SEALED)
	ambient_light_level = 0.3
	strata = /decl/strata/default_asteroid
	level_generators = list(
		/datum/random_map/automata/cave_system,
		/datum/random_map/noise/ore
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/default_asteroid
	level_data_type = /datum/level_data/default_asteroid

/decl/material/solid/stone/sandstone/asteroid
	color = "#7A0000"

///////////// ASTEROID ORES ///////////////
/decl/strata/default_asteroid
	name = "sedimentary asteroid"
	base_materials = list(/decl/material/solid/stone/sandstone/asteroid)
	ores_sparse = list(
	)
	ores_rich = list(
		/decl/material/solid/graphite,
		/decl/material/solid/hematite,
		/decl/material/solid/bauxite,
		/decl/material/solid/rutile,
		/decl/material/solid/tetrahedrite,
		/decl/material/solid/densegraphite,
		/decl/material/solid/chalcopyrite,
		/decl/material/solid/crocoite,
		/decl/material/solid/borax,
		/decl/material/solid/cassiterite,
		/decl/material/solid/galena,
		/decl/material/solid/metal/platinum,
		/decl/material/solid/metal/gold,
		/decl/material/solid/phoron
	)
	maximum_temperature = T0C

///////// STONE
/decl/material/solid/stone/sandstone/asteroid
	color = "#7A0000"