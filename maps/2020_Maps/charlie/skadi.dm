#define SKADI_AVG_TEMP	-21 CELSIUS //não sei se uma atmosfera com 26% de co2 seria capaz de ter uma temperatura dessa
#define SKADI_ONE_ATMOSPHERE	94.6 //kPa, you can walk outside without an voidsuit. but it's cold, so use a good coat or voidsuit

#define SKADI_PER_CO2		0.36 //vulcanos
#define SKADI_PER_N2		0.64
#define SKADI_PER_O2		0.10 //not breathable

//matematica da atmosfera
#define SKADI_MOL_PER_TURF	(SKADI_ONE_ATMOSPHERE*CELL_VOLUME/(SKADI_AVG_TEMP*R_IDEAL_GAS_EQUATION))
#define SKADI_MOL_N2			(SKADI_MOL_PER_TURF * SKADI_PER_N2)
#define SKADI_MOL_O2			(SKADI_MOL_PER_TURF * SKADI_PER_O2)
#define SKADI_MOL_CO2			(SKADI_MOL_PER_TURF * SKADI_PER_CO2)

/obj/abstract/map_data/skadi
	height = 2

/datum/level_data/skadi
	use_global_exterior_ambience = FALSE
	level_id = "skadi"
	base_area = null
	abstract_type = /datum/level_data/skadi
	level_flags = (ZLEVEL_CONTACT|ZLEVEL_SEALED|ZLEVEL_PLAYER)
	ambient_light_level = 1
	ambient_light_color = "#c1bff5"
	strata = /decl/strata/default_minerals
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   SKADI_MOL_O2,
		/decl/material/gas/nitrogen = SKADI_MOL_N2,
		/decl/material/gas/carbon_dioxide = SKADI_MOL_CO2
	)
	level_generators = list(
		/datum/random_map/automata/cave_system/skadi_ice,
		/datum/random_map/automata/cave_system/skadi,
		/datum/random_map/noise/ore/rich,
		/datum/random_map/noise/forage/skadi
	)
	exterior_atmos_temp = SKADI_AVG_TEMP
	daycycle_type = /datum/daycycle/skadi
	daycycle_id = "daycycle_skadi"

/datum/level_data/skadi/underground
	name             = "skadi underground"
	level_id         = "skadi_underground"
	base_area        = /area/skadi/cave
	base_turf        = /turf/floor/rock/basalt
	border_filler    = /turf/unsimulated/mineral
	use_global_exterior_ambience = FALSE
	abstract_type = /datum/level_data/skadi/underground
	ambient_light_level = 0
	strata = /decl/strata/default_minerals
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   SKADI_MOL_O2,
		/decl/material/gas/nitrogen = SKADI_MOL_N2,
		/decl/material/gas/carbon_dioxide = SKADI_MOL_CO2
	)
	level_generators = list(
		/datum/random_map/automata/cave_system/skadi_ice,
		/datum/random_map/automata/cave_system/skadi,
		/datum/random_map/noise/ore/rich,
		/datum/random_map/noise/forage/skadi
	)
	exterior_atmos_temp = SKADI_AVG_TEMP

/datum/daycycle/skadi
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night. in theory Skadi have a 16 hours cycle, but in game this would be rather boring

// Randomized time of day to start at.
/datum/daycycle/skadi/New()
	time_in_cycle = rand(cycle_duration)
	..()

/obj/abstract/level_data_spawner/skadi
	level_data_type = /datum/level_data/skadi

///Random Map
/datum/random_map/automata/cave_system/skadi
	descriptor          = "skadi caves"
	floor_type          = /turf/floor/rock/basalt
	wall_type           = /turf/wall/natural/basalt
	sparse_mineral_turf = /turf/wall/natural/random/basalt
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt

/datum/random_map/automata/cave_system/skadi_ice
	descriptor          = "skadi permafrost"
	floor_type          = /turf/floor/ice/skadi
	wall_type           = /turf/wall/natural/ice/skadi
	sparse_mineral_turf = /turf/wall/natural/random/ice/skadi
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/ice/skadi
	target_turf_type = /turf/unsimulated/mask_alt

/datum/random_map/noise/forage/skadi
	tree_weight = 1
	trees = list(
	/obj/structure/boulder/basalt = 1,
	)

/area/skadi/outside
	name = "\improper Skadi Surface"
	color = COLOR_WHITE
	is_outside = OUTSIDE_YES
	base_turf = /turf/floor/barren
	ambience = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)
	area_blurb_category = /area/skadi/outside
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_EXTERNAL
	interior_ambient_light_modifier = -0.3

/area/skadi/cave
	name = "Skadi Caves"
	icon_state = "cave"
	base_turf = /turf/floor/rock/basalt
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_EXTERNAL

/decl/strata/default_minerals //Same as asteroid. not realistic, but GAME
	name = "skadi basalt"
	base_materials = list(/decl/material/solid/stone/basalt)
	ores_sparse = list(
		/decl/material/solid/metal/platinum,
		/decl/material/solid/metal/gold,
		/decl/material/solid/borax,
		/decl/material/solid/cassiterite,
		/decl/material/solid/galena,
		/decl/material/solid/phoron
	)
	ores_rich = list(
		/decl/material/solid/graphite,
		/decl/material/solid/hematite,
		/decl/material/solid/bauxite,
		/decl/material/solid/rutile,
		/decl/material/solid/tetrahedrite,
		/decl/material/solid/densegraphite,
		/decl/material/solid/chalcopyrite,
		/decl/material/solid/crocoite,
		/decl/material/solid/metal/uranium
	)

/datum/level_data/skadi/after_generate_level()
	. = ..()
	var/static/list/banned_weather = list(
		/decl/state/weather/rain,
		/decl/state/weather/rain/storm,
		/decl/state/weather/rain/hail
	)
	var/datum/level_data/skadi = SSmapping.levels_by_id["skadi"]
	if(istype(skadi)) // if this is false, something has badly exploded
		SSweather.setup_weather_system(skadi, banned_states = banned_weather)

/obj/effect/shuttle_landmark/skadi
	base_turf = /turf/floor/snow/skadi
	base_area = /area/skadi/outside

/obj/effect/shuttle_landmark/skadi/nav1
	name = "Skadi - Valley Landing"
	landmark_tag = "nav_skadi_one"

/obj/effect/shuttle_landmark/skadi/nav2
	name = "Skadi - Coast Landing"
	landmark_tag = "nav_skadi_two"

/turf/floor/snow/skadi
	name = "snow"
	icon = 'icons/turf/flooring/snow.dmi'
	icon_state = "snow0"
	_flooring = /decl/flooring/snow
	_base_flooring = /turf/floor/barren

/turf/floor/ice/skadi
	name = "ice"
	icon = 'icons/turf/flooring/ice.dmi'
	icon_state = "ice"
	color = COLOR_LIQUID_WATER
	_flooring = /decl/flooring/ice
	_base_flooring = /turf/floor/barren

/turf/wall/natural/ice/skadi
	floor_type = /turf/floor/ice/skadi

/turf/wall/natural/random/ice/skadi
	floor_type = /turf/floor/ice/skadi

/turf/wall/natural/random/high_chance/ice/skadi
	floor_type = /turf/floor/ice/skadi

/obj/effect/overmap/visitable/sector/skadi
	name = "Skadi"
	desc = "Skadi is a recently discovered dwarf planet located after the Favy asteroid belt, in the Outer Cassini System. the planet atmosphere have O2, indicating maybe the existence of life."
	icon         = 'icons/obj/overmap.dmi'
	icon_state   = "globe"
	color        = "#4e3570"
	start_x = 5
	start_y = 6
	initial_generic_waypoints = list(
	"nav_skadi_one",
	"nav_skadi_two")

/obj/effect/overmap/visitable/sector/skadi/generate_skybox()
	return overlay_image ('mods/2020_mods/2020_main/icons/skybox/planets.dmi', "skadi", null, null)

/obj/effect/overmap/visitable/ship/charlie/generate_skybox()
	return overlay_image ('mods/2020_mods/2020_main/icons/skybox/planets.dmi', "skadi", null, null)
