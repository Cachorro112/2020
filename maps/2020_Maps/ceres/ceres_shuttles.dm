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

/obj/machinery/computer/shuttle_control/explore/general
	name = "General shuttle control console"
	shuttle_tag = "General Shuttle"
/datum/shuttle/autodock/overmap/general
	name = "General Shuttle"
	shuttle_area = /area/ship/ceres_general_shuttle
	dock_target = "general_shuttle"
	current_location = "nav_ceres_general_shuttle_dock"
/area/ship/exodus_shuttle_general
	name = "General Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/overmap/visitable/ship/landable/shuttle/general
	name = "Ceres General Shuttle"
	shuttle = "General Shuttle"
/obj/effect/shuttle_landmark/general_shuttle_dock
	name = "Shuttle Docking Port"
	landmark_tag = "nav_exodus_mining_pod_dock"
	docking_controller = "general_dock_airlock"