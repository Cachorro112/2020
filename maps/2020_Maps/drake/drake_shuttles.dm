/area/shuttle/supply_shuttle
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	req_access = list(access_cargo)

/area/shuttle/centcom
	name = "\improper CentCom"
	icon_state = "shuttle"

/// Supply

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	warmup_time = 10
	location = 1
	dock_target = "supply_shuttle"
	shuttle_area = /area/shuttle/supply_shuttle
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/start
	landmark_tag ="nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"
//	docking_controller = "cargo_bay"
	base_area = /area/cassie/hangar
	base_turf = /turf/floor/plating

/// Utility

/area/cassie/shuttle/utility
	name = "\improper Utility Shuttle"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/utility
	name = "utility shuttle console"
	shuttle_tag = "Utility Shuttle"

/datum/shuttle/autodock/overmap/utility_shuttle
	name = "Science Shuttle"
	shuttle_area = /area/cassie/shuttle/utility
	dock_target = "utility_shuttle"
	current_location = "nav_ministation_science_dock_shuttle"

/obj/effect/shuttle_landmark/utility_hangar
	name = "Cassie Utility Shuttle Hangar"
//	docking_controller = "cassie_utility_hangar"
	landmark_tag = "nav_cassie_utility_hangar"

/obj/effect/overmap/visitable/ship/landable/utility_shuttle
	name = "Utility Shuttle"
	shuttle = "Utility Shuttle"
	moving_state = "ship_moving"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 3000
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL