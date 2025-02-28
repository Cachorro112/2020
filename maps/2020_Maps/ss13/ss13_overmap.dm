/obj/effect/overmap/visitable/sector/ss13
	icon_state = "object"
	name = "Space Station 13"
	color = "#00ffff"
	start_x = 5
	start_y = 6
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_BASE|OVERMAP_SECTOR_IN_SPACE
	initial_generic_waypoints = list(
		"nav_mining_station",
		"nav_centcom_station"
	)

/obj/effect/overmap/visitable/sector/asteroid
	name = "Asteroid"
	desc = "A medium-sized asteroid full of minerals. Mining facility detected at one of sides, owner - NanoTrasen."
	icon_state = "sector"
	start_x = 5
	start_y = 5
	initial_generic_waypoints = list(
		"nav_mining_asteroid"
		)

/datum/level_data/ss13
	name = "Space Station 13"
	level_id = "ss13"
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	connected_levels = list(
		"asteroid_mining"     = SOUTH
		)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/ss13
	level_data_type = /datum/level_data/ss13