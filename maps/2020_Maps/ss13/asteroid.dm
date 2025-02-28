/datum/random_map/automata/cave_system/mining_asteroid
	iterations = 5
	descriptor = "asteroid caves"
	wall_type =  /turf/wall/natural
	floor_type = /turf/floor/barren
	target_turf_type = /turf/unsimulated/mask

/datum/level_data/asteroid_mining
	name = "Mining Asteroid"
	level_id = "asteroid_mining"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/asteroid_mining
	level_flags = (ZLEVEL_PLAYER|ZLEVEL_SEALED|ZLEVEL_CONTACT)
	ambient_light_level = 0.8
	strata = /decl/strata/asteroid
	connected_levels = list(
		"ss13"     = NORTH
		)
	level_generators = list(
		/datum/random_map/automata/cave_system/mining_asteroid,
		/datum/random_map/noise/ore
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/asteroid_mining
	level_data_type = /datum/level_data/asteroid_mining