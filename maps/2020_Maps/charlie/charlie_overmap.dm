/obj/effect/overmap/visitable/ship/charlie
	icon_state = "object"
	name = "Charlie Station"
	desc = "Charlie Station, a small-sized station with the propouse of being a gateway and outpost. owned by Nanotrasen."
	color = "#00ffff"
	start_x = 5
	start_y = 6
	sector_flags = OVERMAP_SECTOR_KNOWN
	initial_generic_waypoints = list("nav_charlie_north_dock")

/datum/level_data/charlie
	name = "Charlie Station"
	level_id = "charlie"
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	strata = /decl/strata/default_asteroid
	level_generators = list(
		/datum/random_map/noise/ore/filthy_rich,
		/datum/random_map/automata/cave_system/mining_asteroid
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/charlie
	level_data_type = /datum/level_data/charlie

