/area/shuttle/supply_shuttle
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	req_access = list(access_cargo)

/area/shuttle/escape_shuttle
	name = "\improper Emergency Shuttle"
	icon_state = "shuttle"

/area/shuttle/centcom
	name = "\improper CentCom"
	icon_state = "shuttle"

/area/shuttle/mining
	name = "\improper Mining Shuttle"
	icon_state = "shuttle"

//Shuttles start here

/datum/shuttle/autodock/ferry/emergency/escape_shuttle
	name = "Escape Shuttle"
	warmup_time = 10
	location = 1
	dock_target = "escape_shuttle"
	shuttle_area = /area/shuttle/escape_shuttle
	waypoint_offsite = "nav_escape_shuttle_start"
	waypoint_station = "nav_escape_shuttle_station"
	landmark_transition = "nav_escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape_shuttle/start
	landmark_tag = "nav_escape_shuttle_start"
	docking_controller = "centcom_escape_dock"

/obj/effect/shuttle_landmark/escape_shuttle/transit
	landmark_tag = "nav_escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape_shuttle/station
	landmark_tag = "nav_escape_shuttle_station"
	docking_controller = "escape_dock"

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply Shuttle"
	warmup_time = 10
	location = 1
	dock_target = "supply_shuttle"
	shuttle_area = /area/shuttle/supply_shuttle
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/start
	landmark_tag = "nav_cargo_start"
	docking_controller = "cargo_bay_centcom"

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"

/datum/shuttle/autodock/multi/centcom
	name = "CentCom"
	warmup_time = 10
	destination_tags = list(
		"nav_centcom_start",
		"nav_centcom_station"
		)
	shuttle_area = /area/shuttle/centcom
	dock_target = "nav_centcom_station"
	current_location = "nav_centcom_start"

/obj/effect/shuttle_landmark/centcom/start
	landmark_tag = "nav_centcom_start"

/obj/effect/shuttle_landmark/centcom/station
	landmark_tag = "nav_centcom_station"

/obj/machinery/computer/shuttle_control/multi/centcom
	name = "centcom shuttle control console"
	shuttle_tag = "CentCom"

//Mining Shuttle

/datum/shuttle/autodock/multi/mining
	name = "Mining"
	warmup_time = 10
	destination_tags = list(
		"nav_mining_station",
		"nav_mining_asteroid"
		)
	shuttle_area = /area/shuttle/mining
	dock_target = "nav_mining_asteroid"
	current_location = "nav_mining_station"

/obj/effect/shuttle_landmark/mine/asteroid
	landmark_tag = "nav_mining_asteroid"

/obj/effect/shuttle_landmark/mine/station
	landmark_tag = "nav_mining_station"

/obj/machinery/computer/shuttle_control/multi/mining
	name = "mining shuttle control console"
	shuttle_tag = "Mining"