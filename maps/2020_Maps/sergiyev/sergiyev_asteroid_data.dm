/datum/random_map/automata/cave_system/sergiyev
	iterations = 2
	descriptor = "sergiyev caves"
	wall_type =  /turf/wall/natural/ice
	floor_type = /turf/floor/natural/ice
	target_turf_type = /turf/unsimulated/mask

/datum/level_data/player_level/asteroid
	name = "Sergiyev Asteroid"
	level_id = "asteroid_main"
	loop_turf_type       = /turf/mimic_edge/transition/loop
	level_generators = list(
		/datum/random_map/automata/cave_system/sergiyev,
		/datum/random_map/noise/ore/ice
	)

/datum/level_data/player_level/asteroid
	name = "Sergiyev Asteroid"
	level_id = "asteroid_main"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/player_level/asteroid
	ambient_light_level = 0.8
	strata = /decl/strata/ice_asteroid
	connected_levels = list(
		"asteroid_mining"     = EAST,
		"asteroid_science"    = SOUTH
		)
	level_generators = list(
		/datum/random_map/automata/cave_system/sergiyev,
		/datum/random_map/noise/ore/ice
	)

/datum/level_data/asteroid_mining
	name = "Asteroid Cluster"
	level_id = "asteroid_mining"
	use_global_exterior_ambience = TRUE
	base_area = null
	abstract_type = /datum/level_data/asteroid_mining
	loop_turf_type       = /turf/mimic_edge/transition/loop
	ambient_light_level = 0.8
	strata = /decl/strata/ice_asteroid
	connected_levels = list(
		"asteroid_main"     = WEST
		)
	level_generators = list(
		/datum/random_map/automata/cave_system/sergiyev,
		/datum/random_map/noise/ore/ice
	)

/datum/level_data/asteroid_science
	name = "Small Asteroid Cluster"
	level_id = "asteroid_science"
	use_global_exterior_ambience = TRUE
	base_area = null
	loop_turf_type       = /turf/mimic_edge/transition/loop
	abstract_type = /datum/level_data/asteroid_mining
	ambient_light_level = 0.8
	strata = /decl/strata/ice_asteroid
	connected_levels = list(
		"asteroid_main"     = NORTH
		)
	level_generators = list(
		/datum/random_map/automata/cave_system/sergiyev,
		/datum/random_map/noise/ore/ice
	)

/obj/abstract/level_data_spawner/sergiyev_sci
	level_data_type = /datum/level_data/asteroid_science

/obj/abstract/level_data_spawner/sergiyev_asteroid
	level_data_type = /datum/level_data/player_level/asteroid

/obj/abstract/level_data_spawner/asteroid
	level_data_type = /datum/level_data/asteroid_mining