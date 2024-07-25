////////////////////////////////////////////////////////////////////////////
// Overmap Marker
////////////////////////////////////////////////////////////////////////////

/obj/effect/overmap/visitable/sector/planetoid/exoplanet/ceres
	name         = "ceres dwarf planet"
	desc         = "a celestial body nestled within the asteroid belt between Mars and Jupiter, bears the scars of its tumultuous past. \
	Its diminutive stature and feeble gravity failed to anchor the gases against the relentless bombardment of solar winds, leaving it barren and exposed to the harsh realities of space. \
	Theres are some signals coming from Ceres, Outposts, Colonys, Mines and on orbit 4 Space Station and  5 Ships, mostly from United States and Corporate. "
	color        = COLOR_GRAY80
	planetoid_id = "ceres"
	start_x      = 10
	start_y      = 10

////////////////////////////////////////////////////////////////////////////
// Level Data
////////////////////////////////////////////////////////////////////////////

/datum/level_data/planetoid/exoplanet/ceres
	level_max_width      = 200
	level_max_height     = 200
	loop_turf_type       = /turf/mimic_edge/transition/loop

/datum/level_data/planetoid/exoplanet/ceres/surface
	level_id            = CERES_SURFACE_LEVEL_ID
	base_area           = /area/exoplanet/barren/ceres
	base_turf           = /turf/floor/natural/barren/ceres
	border_filler       = /turf/unsimulated/dark_filler
	level_generators    = list(
		/datum/random_map/noise/exoplanet/ceres,
	)

/datum/level_data/planetoid/exoplanet/ceres/undeground
	base_area           = /area/exoplanet/ceres/underground
	base_turf           = /turf/floor/natural/barren/ceres
	border_filler    = /turf/unsimulated/dark_filler
	level_generators    = list(
		/datum/random_map/noise/ore/rich,
	)

////////////////////////////////////////////////////////////////////////////
// Planetoid Data
////////////////////////////////////////////////////////////////////////////

/datum/planetoid_data/ceres
	id                  = "ceres"
	name                = "\improper Ceres"
	surface_level_id    = CERES_SURFACE_LEVEL_ID
	habitability_class  = null
	surface_color       = COLOR_GRAY80
	rock_color          = COLOR_GRAY80
	strata              = /decl/strata/sedimentary
	engraving_generator = /datum/xenoarch_engraving_flavor
	day_duration        = 60 MINUTES
	surface_light_level = 1
	surface_light_color = COLOR_OFF_WHITE
	initial_weather_state          = null // No weather.
	surface_color = COLOR_GRAY80
	water_color   = COLOR_CYAN
	possible_rock_colors           = list(
		COLOR_GRAY80
	)

////////////////////////////////////////////////////////////////////////////
// Map Generator Surface
////////////////////////////////////////////////////////////////////////////

///Generator for fauna and flora spawners for the surface of the barren exoplanet
/datum/random_map/noise/exoplanet/ceres
	descriptor           = "ceres"
	land_type            = /turf/floor/natural/barren
	water_type           = /turf/floor/natural/ice
	flora_prob           = 0
	large_flora_prob     = 0
	fauna_prob           = 0
	smoothing_iterations = 1

////////////////////////////////////////////////////////////////////////////
// Areas
////////////////////////////////////////////////////////////////////////////

/area/exoplanet/ceres
	name       = "\improper Ceres surface"
	ambience   = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)

/area/exoplanet/underground/ceres
	name = "Ceres underground"

/obj/abstract/level_data_spawner/ceres/surface
	level_data_type = /area/exoplanet/ceres

/obj/abstract/level_data_spawner/ceres/underground
	level_data_type = /area/exoplanet/underground/ceres