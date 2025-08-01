/area/ship/shuttle/outgoing/exploration
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/shuttle/outgoing/exploration/rear1
	name = "\improper Chronos Rear Compartment 1"
	icon_state = "engine"

/area/ship/shuttle/outgoing/exploration/rear2
	name = "\improper Chronos Rear Compartment 2"
	icon_state = "yellow"

/area/ship/shuttle/outgoing/exploration/center
	name = "\improper Chronos Central Compartment"
	icon_state = "green"

/area/ship/shuttle/outgoing/exploration/helm
	name = "\improper Chronos Helm"
	icon_state = "bridge"

/obj/machinery/computer/shuttle_control/explore/charlie
	name = "chronos console"
	shuttle_tag = "Exploration Shuttle"

/datum/shuttle/autodock/overmap/charlie
	name = "Chronos"
	shuttle_area = list(/area/ship/shuttle/outgoing/exploration/rear1, /area/ship/shuttle/outgoing/exploration/rear2, /area/ship/shuttle/outgoing/exploration/center, /area/ship/shuttle/outgoing/exploration/helm)
	dock_target = "chronos_airlock"
	current_location = "nav_charlie_science_dock"

/obj/effect/overmap/visitable/ship/landable/charlie
	name = "Chronos"
	shuttle = "Exploration Shuttle"
	max_speed = 5/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4500
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/shuttle_landmark/north_dock
	name = "Charlie North Docking Port"
	landmark_tag = "nav_charlie_north_dock"
	docking_controller = "north_dock"

/obj/effect/shuttle_landmark/science_dock
	name = "Charlie Science Docking Port"
	landmark_tag = "nav_charlie_science_dock"
	docking_controller = "science_dock"