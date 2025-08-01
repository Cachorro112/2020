/obj/effect/overmap/visitable/ship/luna
	icon_state = "object"
	name = "Luna"
	desc = "Luna, or the moon, it's Earth's natural satellite. its have several posts and colonies on its surface."
	color = "#00ffff"
	start_x = 5
	start_y = 6
	sector_flags = OVERMAP_SECTOR_KNOWN
	initial_generic_waypoints = list("nav_charlie_north_dock")

/datum/level_data/luna
	name = "Luna"
	level_id = "luna"
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	strata = /decl/strata/luna
	level_generators = list()
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/charlie
	level_data_type = /datum/level_data/charlie

