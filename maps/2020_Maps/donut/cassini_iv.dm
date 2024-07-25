/obj/effect/overmap/visitable/sector/planetoid/cassini_iv
	name         = "Cassini IV / Akovei"
	desc         = "a Garden planet orbiting the Star Cassini IV. it's atmosphere and biology is indentical to Earth. \
	Scientist Suggest a possibility that the planet was terraformed by a intelligent alien race. Cassini IV is also the home of an Alien Specie called: Takivak."
	color        = COLOR_GRAY80
	planetoid_id = "cassini_iv"
	start_x      = 7
	start_y      = 7

//Atmos

/datum/gas_mixture/atmos_cassini_iv
	temperature = T20C
	gas = list(
		/decl/material/gas/oxygen   = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD,
	)

//Noise
/datum/random_map/noise/exoplanet/cassini_iv
	descriptor       = "cassini_iv"
	land_type        = /turf/floor/natural/grass
	water_type       = /turf/floor/natural/mud/water
	coast_type       = /turf/floor/natural/mud
	water_level_min  = 3
	flora_prob       = 10
	grass_prob       = 50
	large_flora_prob = 30

//Flora
/datum/planet_flora/random/cassini_iv
	flora_diversity = 2
	has_trees       = TRUE
	grass_color     = COLOR_GREEN
	plant_colors    = list(
		COLOR_GREEN
	)

//Fuckery
/datum/planetoid_data/cassini_iv
	id                  = "cassiniiv"
	name                = "\improper Cassini IV"
	surface_level_id    = "cassini_iv"
	habitability_class  = HABITABILITY_IDEAL
	atmosphere          = /datum/gas_mixture/atmos_cassini_iv
	surface_color       = COLOR_GREEN
	water_color         = COLOR_BLUE
	rock_color          = COLOR_GRAY40
	has_rings           = TRUE
	ring_color          = COLOR_OFF_WHITE
	ring_type_name      = SKYBOX_PLANET_RING_TYPE_SPARSE
	strata              = /decl/strata/sedimentary
	engraving_generator = /datum/xenoarch_engraving_flavor
	daycycle_type       = /datum/daycycle/exoplanet/cassini_iv
	surface_light_level = 0.8
	surface_light_color = COLOR_OFF_WHITE
	flora               = /datum/planet_flora/random/cassini_iv
	fauna               = null //< For now

/datum/daycycle/exoplanet/cassini_iv
	day_duration        = 60 MINUTES

//Template
/datum/map_template/planetoid/cassini_iv
	name                  = "Cassini IV"
	template_categories   = list(MAP_TEMPLATE_CATEGORY_PLANET)
	template_flags        = TEMPLATE_FLAG_SPAWN_GUARANTEED
	planetoid_data_type   = /datum/planetoid_data/cassini_iv
	level_data_type       = null
	mappaths              = list(
		"maps/2020_Maps/donut/cassini_iv.dmm"
	)

/area/exoplanet/cassini_iv
	name = "surface"
	ambience  = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/ambience/eeriejungle2.ogg',
		'sound/ambience/eeriejungle1.ogg'
	)
	forced_ambience = list(
		'sound/ambience/jungle.ogg'
	)

/datum/level_data/planetoid/cassini_iv
	parent_planetoid     = "cassini_iv"
	level_max_width      = 200
	level_max_height     = 200

/datum/level_data/planetoid/cassini_iv/surface
	name             = "cassini iv surface"
	level_id         = "cassini_iv"
	base_area        = /area/exoplanet/cassini_iv
	base_turf        = /turf/floor/natural/barren
	border_filler    = /turf/unsimulated/dark_filler
	level_generators    = list(
		/datum/planet_flora/random/cassini_iv,
		/datum/map_template/planetoid/cassini_iv,
		/datum/random_map/noise/exoplanet/cassini_iv
	)

/obj/abstract/level_data_spawner/cassini_iv/surface
	level_data_type = /datum/level_data/planetoid/cassini_iv/surface