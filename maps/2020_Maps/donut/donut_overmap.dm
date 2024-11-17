/obj/effect/overmap/visitable/ship/donut
	name = "Donut Station"
	color = "#00ffff"
	start_x = 10
	start_y = 10
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_BASE|OVERMAP_SECTOR_IN_SPACE
	vessel_mass = 50000
	max_speed = 1/(20 SECONDS)
	burn_delay = 20 SECONDS
	initial_generic_waypoints = list(
		"nav_mining_station",
		"nav_centcom_station"
		)

/obj/effect/overmap/visitable/sector/asteroid
	name = "Asteroid"
	desc = "a Asteroid orbiting Cassini. Nanotrasen owned buildings detected on its surface."
	icon_state = "sector"
	start_x = 10
	start_y = 11
	initial_generic_waypoints = list(
		"nav_mining_asteroid"
		)

/datum/level_data/donut
	name = "Donut Station"
	level_id = "donut"
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	connected_levels = list(
		"asteroid_mining"     = SOUTH
		)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/donut
	level_data_type = /datum/level_data/donut