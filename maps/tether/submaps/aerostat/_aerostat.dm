#include "submaps/virgo2.dm"

// -- Datums -- //

/datum/shuttle_destination/excursion/virgo2orbit
	name = "Virgo 2 Orbit"
	my_area = /area/shuttle/excursion/space
	preferred_interim_area = /area/shuttle/excursion/space_moving
	skip_me = TRUE

	routes_to_make = list(
		/datum/shuttle_destination/excursion/bluespace = 30 SECONDS,
		/datum/shuttle_destination/excursion/virgo2orbit = 30 SECONDS
	)

/datum/shuttle_destination/excursion/aerostat
	name = "Remmi Aerostat"
	my_area = /area/shuttle/excursion/away_aerostat
	preferred_interim_area = /area/shuttle/excursion/space_moving
	skip_me = TRUE

	routes_to_make = list(
		/datum/shuttle_destination/excursion/virgo2orbit = 30 SECONDS
	)

/datum/shuttle/autodock/ferry/aerostat
	name = "Aerostat Ferry"
	warmup_time = 10	//want some warmup time so people can cancel.
	area_station = /area/shuttle/aerostat/docked
	area_offsite = /area/shuttle/aerostat/landed

/datum/random_map/noise/ore/virgo2
	descriptor = "virgo 2 ore distribution map"
	deep_val = 0.2
	rare_val = 0.1

/datum/random_map/noise/ore/virgo2/check_map_sanity()
	return 1 //Totally random, but probably beneficial.

// -- Objs -- //

/obj/machinery/computer/shuttle_control/aerostat_shuttle
	name = "aerostat ferry control console"
	shuttle_tag = "Aerostat Ferry"

/obj/shuttle_connector/aerostat
	name = "shuttle connector - aerostat"
	shuttle_name = "Excursion Shuttle"
	destinations = list(/datum/shuttle_destination/excursion/virgo2orbit, /datum/shuttle_destination/excursion/aerostat)

/obj/away_mission_init/aerostat/Initialize()
	/*seed_submaps(list(Z_LEVEL_AEROSTAT_SURFACE), 50, /area/tether_away/aerostat/surface/unexplored, /datum/map_template/virgo2)
	new /datum/random_map/automata/cave_system/no_cracks(null, 1, 1, Z_LEVEL_AEROSTAT_SURFACE, world.maxx, world.maxy)
	new /datum/random_map/noise/ore/virgo2(null, 1, 1, Z_LEVEL_AEROSTAT_SURFACE, 64, 64)*/

	return INITIALIZE_HINT_QDEL

/obj/tether_away_spawner/aerostat_inside
	name = "Aerostat Indoors Spawner"
	faction = "aerostat_inside"
	atmos_comp = TRUE
	prob_spawn = 100
	prob_fall = 50
	//guard = 20
	mobs_to_pick_from = list(
		/mob/living/simple_mob/mechanical/hivebot/ranged_damage/basic = 3,
		/mob/living/simple_mob/mechanical/hivebot/ranged_damage/ion = 1,
		/mob/living/simple_mob/mechanical/hivebot/ranged_damage/laser = 3,
		/mob/living/simple_mob/vore/aggressive/corrupthound = 1
	)

/obj/tether_away_spawner/aerostat_surface
	name = "Aerostat Surface Spawner"
	faction = "aerostat_surface"
	atmos_comp = TRUE
	prob_spawn = 100
	prob_fall = 30
	//guard = 20
	mobs_to_pick_from = list(
		/mob/living/simple_mob/animal/space/jelly = 1,
		/mob/living/simple_mob/mechanical/viscerator = 1,
		/mob/living/simple_mob/vore/aggressive/corrupthound = 1
	)

/obj/structure/old_roboprinter
	name = "old drone fabricator"
	desc = "Built like a tank, still working after so many years."
	icon = 'icons/obj/machines/drone_fab.dmi'
	icon_state = "drone_fab_idle"
	anchored = TRUE
	density = TRUE

/obj/structure/metal_edge
	name = "metal underside"
	desc = "A metal wall that extends downwards."
	icon = 'icons/turf/cliff.dmi'
	icon_state = "metal"
	anchored = TRUE
	density = FALSE

// -- Turfs -- //

//Turfmakers
#define VIRGO2_SET_ATMOS	initial_gas_mix=ATMOSPHERE_ID_VIRGO2
#define VIRGO2_TURF_CREATE(x)	x/virgo2/initial_gas_mix=ATMOSPHERE_ID_VIRGO2;x/virgo2/color="#eacd7c"

/turf/unsimulated/floor/sky/virgo2_sky
	name = "virgo 2 atmosphere"
	desc = "Be careful where you step!"
	color = "#eacd7c"
	VIRGO2_SET_ATMOS

/turf/unsimulated/floor/sky/virgo2_sky/Initialize()
	skyfall_levels = list(z+1)
	. = ..()

/turf/wall/shuttle/voidcraft/green/virgo2
	VIRGO2_SET_ATMOS
	color = "#eacd7c"

/turf/wall/shuttle/voidcraft/green/virgo2/nocol
	color = null

VIRGO2_TURF_CREATE(/turf/unsimulated/wall/planetary)

VIRGO2_TURF_CREATE(/turf/wall)
VIRGO2_TURF_CREATE(/turf/floor/plating)
VIRGO2_TURF_CREATE(/turf/floor/bluegrid)
VIRGO2_TURF_CREATE(/turf/floor/tiled/techfloor)

VIRGO2_TURF_CREATE(/turf/mineral)
/turf/mineral/virgo2/make_ore()
	if(mineral)
		return

	var/mineral_name = pickweight(list("marble" = 5, "uranium" = 5, "platinum" = 10, "hematite" = 5, "carbon" = 5, "diamond" = 10, "gold" = 20, "silver" = 20, "lead" = 10, "verdantium" = 5))

	if(mineral_name && (mineral_name in ore_data))
		mineral = ore_data[mineral_name]
		UpdateMineral()
	update_icon()

VIRGO2_TURF_CREATE(/turf/mineral/ignore_mapgen)
VIRGO2_TURF_CREATE(/turf/mineral/floor)
VIRGO2_TURF_CREATE(/turf/mineral/floor/ignore_mapgen)

// -- Areas -- //

/area/shuttle/excursion/away_aerostat
	name = "\improper Excursion Shuttle - Aerostat"
	base_turf = /turf/unsimulated/floor/sky/virgo2_sky

// The aerostat shuttle
/area/shuttle/aerostat/docked
	name = "\improper Aerostat Shuttle - Dock"
	base_turf = /turf/unsimulated/floor/sky/virgo2_sky

/area/shuttle/aerostat/landed
	name = "\improper Aerostat Shuttle - Surface"
	base_turf = /turf/floor/plating/virgo2

//The aerostat itself
/area/tether_away/aerostat
	name = "\improper Away Mission - Aerostat Outside"
	icon_state = "away"
	base_turf = /turf/unsimulated/floor/sky/virgo2_sky
	requires_power = FALSE
	dynamic_lighting = FALSE

/area/tether_away/aerostat/inside
	name = "\improper Away Mission - Aerostat Inside"
	icon_state = "crew_quarters"
	base_turf = /turf/floor/plating/virgo2
	requires_power = TRUE
	dynamic_lighting = TRUE
	forced_ambience = list('sound/ambience/tension/tension.ogg', 'sound/ambience/tension/argitoth.ogg', 'sound/ambience/tension/burning_terror.ogg')

/area/tether_away/aerostat/solars
	name = "\improper Away Mission - Aerostat Solars"
	icon_state = "crew_quarters"
	base_turf = /turf/floor/plating/virgo2
	dynamic_lighting = TRUE

/area/tether_away/aerostat/surface
	flags = RAD_SHIELDED
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	base_turf = /turf/mineral/floor/ignore_mapgen/virgo2

/area/tether_away/aerostat/surface/explored
	name = "Away Mission - Aerostat Surface (E)"
	icon_state = "explored"

/area/tether_away/aerostat/surface/unexplored
	name = "Away Mission - Aerostat Surface (UE)"
	icon_state = "unexplored"
