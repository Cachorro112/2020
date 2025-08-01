///////////// DEFAULT 2020 MINING ASTEROID DATA /////////////////
/datum/random_map/automata/cave_system/mining_asteroid
	iterations = 10
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
	level_flags = (ZLEVEL_PLAYER|ZLEVEL_SEALED|ZLEVEL_CONTACT)
	ambient_light_level = 1
	strata = /decl/strata/default_asteroid
	level_generators = list(
		/datum/random_map/automata/cave_system/mining_asteroid,
		/datum/random_map/noise/ore
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/default_asteroid
	level_data_type = /datum/level_data/default_asteroid

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
	name = "Asteroid Stone"
	color = "#7A0000"

/area/mine_asteroid
	name = "Asteroid"
	icon_state = "cave"
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/barren
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_EXTERNAL
//	is_outside = OUTSIDE_YES Asteroid is closed. maybe?

//OVERMAP AND SHUTTLE
/obj/effect/overmap/visitable/sector/asteroid
	name = "Asteroid"
	desc = "A medium-sized asteroid full of minerals. Mining facility detected at one of sides, owner - NanoTrasen."
	icon_state = "sector"
	start_x = 5
	start_y = 5
	initial_generic_waypoints = list(
		"nav_mining_asteroid"
		)

/obj/effect/shuttle_landmark/mine/asteroid
	name = "Mining Outpost Hangar"
	landmark_tag = "nav_mining_asteroid"