/datum/map/facility/finalize_map_generation()
	. = ..()
	var/datum/level_data/facility = SSmapping.levels_by_id["facility_surface"]
	if(istype(facility)) // if this is false, something has badly exploded
		SSweather.setup_weather_system(facility)

/obj/abstract/map_data/facility
	height = 2

/datum/level_data/player_level/facility
	use_global_exterior_ambience = FALSE
	level_id = "facility_surface"
	base_area = null
	abstract_type = /datum/level_data/player_level/facility
	level_flags = (ZLEVEL_STATION|ZLEVEL_CONTACT|ZLEVEL_PLAYER)
	ambient_light_level = 1
	ambient_light_color = "#f3e6ca"
	strata = /decl/strata/facility
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	level_generators = list(
		/datum/random_map/automata/cave_system/facility,
		/datum/random_map/noise/ore/poor,
		/datum/random_map/noise/forage/facility
	)
	daycycle_type = /datum/daycycle/facility
	daycycle_id = "daycycle_facility"

/datum/daycycle/facility
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

// Randomized time of day to start at.
/datum/daycycle/facility/New()
	time_in_cycle = rand(cycle_duration)
	..()

/obj/abstract/level_data_spawner/facility
	level_data_type = /datum/level_data/player_level/facility

///Random Map
/datum/random_map/automata/cave_system/facility
	descriptor          = "facility caves"
	floor_type          = /turf/floor/rock/basalt
	wall_type           = /turf/wall/natural/basalt
	sparse_mineral_turf = /turf/wall/natural/random/basalt
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt

/datum/random_map/noise/forage/facility
	tree_weight = 4
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut = 8,
		/obj/structure/flora/tree/hardwood/yew = 8,
		/obj/structure/flora/tree/hardwood/mahogany = 8,
		/obj/structure/flora/bush/pointybush = 5,
		/obj/structure/flora/tree/dead/walnut = 1,
		/obj/structure/flora/tree/dead/yew = 1,
		/obj/structure/flora/tree/dead/mahogany = 1,
		/obj/structure/flora/bush/genericbush = 1,
		/obj/structure/flora/bush/grassybush = 1,
		/obj/structure/flora/bush/stalkybush = 1,
		/obj/structure/flora/bush/reedbush = 1,
		/obj/structure/flora/bush/fernybush = 1,
	)

///Strata
// Simplified metal list.
/decl/strata/facility
	name = "mountainous rock"
	base_materials = list(/decl/material/solid/stone/basalt)
	default_strata_candidate = FALSE
	ores_sparse = list(
		/decl/material/solid/quartz,
		/decl/material/solid/graphite,
		/decl/material/solid/tetrahedrite,
		/decl/material/solid/hematite
	)
	ores_rich = list(
		/decl/material/solid/gemstone/diamond,
		/decl/material/solid/metal/gold,
		/decl/material/solid/metal/platinum,
		/decl/material/solid/densegraphite,
		/decl/material/solid/galena
	)

/decl/material/solid/graphite
	name = "coal"
	codex_name = "loose coal"
	ore_name = "coal"

/decl/material/solid/densegraphite
	name = "dense coal"
	codex_name = "dense coal"
	ore_name = "dense coal"