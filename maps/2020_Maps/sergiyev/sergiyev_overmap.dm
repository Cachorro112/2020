/obj/effect/overmap/visitable/ship/sergiyev
	name = "Sergiyev asteroid"
	desc = "a Medium asteroid."
	start_x = 10
	start_y = 10
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_BASE|OVERMAP_SECTOR_IN_SPACE
	vessel_mass = 100000
	max_speed = 1/(50 SECONDS)
	burn_delay = 50 SECONDS
	icon_state = "sector"
	initial_generic_waypoints = list(
		"nav_sergiyev_northwest",
		"nav_sergiyev_south",
		"nav_sergiyev_east",
		"nav_soyuz_dock",
		"nav_soyuz_science_dock",
		)

/obj/effect/shuttle_landmark/sergiyev_northwest
	name = "Sergiyev North West approach"
	landmark_tag = "nav_sergiyev_northwest"

/obj/effect/shuttle_landmark/sergiyev_south
	name = "Sergiyev South approach"
	landmark_tag = "nav_sergiyev_south"

/obj/effect/shuttle_landmark/sergiyev_east
	name = "Sergiyev East approach"
	landmark_tag = "nav_sergiyev_east"


/obj/effect/overmap/visitable/ship/landable/soyuz
	name = "Soyuz Pod"
	desc = "A small transport pod."
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4000
	fore_dir = EAST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/soyuz
	name = "soyuz pod control console"
	shuttle_tag = "Soyuz Pod"
/datum/shuttle/autodock/overmap/soyuz
	name = "Soyuz Pod"
	shuttle_area = /area/ship/soyuz
	dock_target = "soyuz_shuttle"
	current_location = "nav_soyuz_dock"
/area/ship/soyuz
	name = "Soyuz Pod"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/shuttle_landmark/soyuz_pod_dock
	name = "Soyuz dock"
	landmark_tag = "nav_soyuz_dock"
	docking_controller = "soyuz_dock"

/obj/effect/shuttle_landmark/soyuz_pod_science
	name = "Science Soyuz Dock"
	landmark_tag = "nav_soyuz_science_dock"
	docking_controller = "sci_dock"
