#include "usv_voyager_areas.dm"
#include "usv_voyager_jobs.dm"

/obj/abstract/submap_landmark/joinable_submap/voyager
	name = "USV Voyager"
	archetype = /decl/submap_archetype/voyager

/decl/submap_archetype/voyager
	descriptor = "USV Voyager"
	crew_jobs = list(
		/datum/job/submap/scout_captain,
		/datum/job/submap/scout_crewman
	)

/obj/effect/overmap/visitable/ship/voyager
	name = "USV Voyager"
	color = "#00ffff"
	vessel_mass = 4000
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS
	restricted_area = 30
	sector_flags = OVERMAP_SECTOR_IN_SPACE
	initial_generic_waypoints = list(
		"nav_scout_utah_bay"
	)

/obj/effect/overmap/visitable/ship/landable/utah
	name = "Utah Pod"
	shuttle = "Utah"
	desc = "A small pod used for aproximated survey."
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 500
	fore_dir = EAST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL


/obj/machinery/computer/shuttle_control/explore/utah
	name = "utah control console"
	shuttle_tag = "Utah"
/datum/shuttle/autodock/overmap/utah
	name = "Utah"
	shuttle_area = /area/ship/utah
	dock_target = "utah_shuttle"
	current_location = "nav_scout_utah_bay"
/area/ship/utah
	name = "Utah"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/shuttle_landmark/utah_bay
	name = "Utah landing bay"
	landmark_tag = "nav_scout_utah_bay"
	base_area = /area/ship/scout/bay
	base_turf = /turf/floor/plating

/datum/map_template/ruin/away_site/voyager
	name = "USV Voyager"
	description = "A light American Scout spaceship."
	prefix = "mods/2020_mods/2020_main/maps/away_sites/"
	suffixes = list("usv_voyager/usv_voyager.dmm")
	cost = 1
	spawn_weight = 50
	area_usage_test_exempted_root_areas = list(/area/ship)