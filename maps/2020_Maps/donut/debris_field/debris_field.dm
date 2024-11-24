#include "debris_areas.dm"

//Debris Field
/obj/effect/overmap/visitable/sector/debris
	name = "Debris Field"
	desc = "Various Debris of Human-made structures. Some small asteroids included. might worth to be scavaged."
	icon_state = "sector"
	start_x = 11
	start_y = 10
	initial_generic_waypoints = list(
		"nav_debris_1"
	)

/obj/effect/overmap/visitable/sector/debris/generate_skybox()
	return overlay_image('icons/skybox/rockbox.dmi', "rockbox", COLOR_ASTEROID_ROCK, RESET_COLOR)

/obj/effect/overmap/visitable/sector/debris/get_skybox_representation()
	var/image/res = overlay_image('icons/skybox/rockbox.dmi', "rockbox", COLOR_ASTEROID_ROCK, RESET_COLOR)
	res.transform *= 0.5
	return res

/obj/effect/shuttle_landmark/debris/nav1
	name = "Debris Field Nav Point #1"
	landmark_tag = "nav_mining_debris"

//??

/datum/level_data/debris
	name = "Debris Field"
	level_id = "debris_field"
	use_global_exterior_ambience = FALSE
	base_area = null
	abstract_type = /datum/level_data/default_asteroid
	level_flags = (ZLEVEL_PLAYER|ZLEVEL_SEALED)
	ambient_light_level = 0.3
	strata = /decl/strata/default_asteroid
	level_generators = list(
		/datum/random_map/automata/cave_system,
		/datum/random_map/noise/ore
	)
	daycycle_id = "space_solars"
	daycycle_type = /datum/daycycle/solars

/obj/abstract/level_data_spawner/debris
	level_data_type = /datum/level_data/debris
