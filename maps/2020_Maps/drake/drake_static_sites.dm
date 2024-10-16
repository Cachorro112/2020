/datum/random_map/automata/cave_system/mining_asteroid
	iterations = 3
	descriptor = "asteroid caves"
	wall_type =  /turf/wall/natural
	floor_type = /turf/floor/natural/barren
	target_turf_type = /turf/unsimulated/mask

/obj/effect/overmap/visitable/sector/asteroid
	name = "Asteroid"
	desc = "a Big Asteroid orbiting Cassini IV. Nanotrasen owned buildings detected on its surface."
	icon_state = "sector"
	start_x = 10
	start_y = 11
	initial_generic_waypoints = list(
		"nav_mining_asteroid"
		)

/datum/level_data/asteroid_mining
	name = "Mining Asteroid"
	level_id = "asteroid_mining"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/asteroid_mining
	level_flags = (ZLEVEL_PLAYER|ZLEVEL_SEALED|ZLEVEL_CONTACT)
	ambient_light_level = 0.8
	strata = /decl/strata/asteroid
	level_generators = list(
		/datum/random_map/automata/cave_system/mining_asteroid,
		/datum/random_map/noise/ore
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/asteroid_mining
	level_data_type = /datum/level_data/asteroid_mining