/obj/effect/overmap/visitable/ship/ss13
	name = "USS Cassie"
	desc = "a Medium-Size Spaceship. its from the US Fleet."
	color = "#00ffff"
	start_x = 4
	start_y = 4
	vessel_mass = 5000
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS
	restricted_area = 30
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_BASE|OVERMAP_SECTOR_IN_SPACE
	initial_generic_waypoints = list(
		"nav_utility_station",
		"nav_centcom_station"
	)

/obj/effect/overmap/visitable/sector/asteroid
	name = "Asteroid"
	desc = "a Big Asteroid orbiting alone on the vast of Cassini's outer system."
	icon_state = "sector"
	start_x = 10
	start_y = 11
	initial_generic_waypoints = list(
		"nav_generic_asteroid"
		)

/datum/level_data/cassie
	name = "USS Cassie"
	level_id = "uboot"
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/cassie
	level_data_type = /datum/level_data/cassie