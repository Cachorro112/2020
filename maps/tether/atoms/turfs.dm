// STUBS DEFINED FOR FUTURE IMPLEMENTATION
// THESE NEED NAMES, ICONS, AND FUNCTIONALITY ADDED!
/turf/simulated/floor/asteroid/cave
	temperature = T20C
	initial_gas = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
/turf/simulated/floor/tiled/steel_dirty/virgo3b
	initial_gas = null
/turf/simulated/shuttle/wall
	var/hard_corner = FALSE
/turf/simulated/shuttle/wall/hard_corner
	hard_corner = TRUE
/turf/simulated/floor/shuttle/airless
	initial_gas = null
/turf/simulated/floor/shuttle/yellow/airless
	initial_gas = null
/turf/simulated/floor/reinforced/virgo3b
	initial_gas = null
/turf/simulated/floor/virgo3b_indoors
	initial_gas = null

/turf/exterior/sif_growth
	name = "growth"
	desc = "A natural moss that has adapted to the sheer cold climate."
	icon = 'maps/tether/icons/sif_grass.dmi'
	possible_states = 1

// Voidcraft Shuttle Walls
/turf/simulated/shuttle/wall/voidcraft
	name = "voidcraft wall"
	icon = 'maps/tether/icons/shuttle_void.dmi'
	icon_state = "void"
	var/stripe_color = null // If set, generates a colored stripe overlay.  Accepts #XXXXXX as input.

/turf/simulated/shuttle/wall/voidcraft/red
	stripe_color = "#ff0000"

/turf/simulated/shuttle/wall/voidcraft/blue
	stripe_color = "#0000ff"

/turf/simulated/shuttle/wall/voidcraft/green
	stripe_color = "#00ff00"

/turf/simulated/shuttle/wall/voidcraft/Initialize()
	. = ..()
	update_icon()

/turf/simulated/shuttle/wall/voidcraft/on_update_icon()
	. = ..()
	if(stripe_color)
		cut_overlays()
		var/image/I = image(icon = src.icon, icon_state = "o_[icon_state]")
		I.color = stripe_color
		add_overlay(I)

// override the default tiled floor icon to match the steel decals
/turf/simulated/floor/tiled
	name = "steel floor"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "steel"
	color = null

/decl/flooring/tiling
	name = "floor"
	desc = "A solid, heavy set of flooring plates."
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_base = "steel"
	color = null

/turf/simulated/floor/tiled/dark
	icon_state = "dark"
	color = null

/decl/flooring/tiling/dark
	icon_base = "dark"
	color = null

/turf/simulated/floor/tiled/monotile
	initial_flooring = /decl/flooring/tiling/mono/steel

/decl/flooring/tiling/mono/steel
	icon_base = "steel_monotile"

/turf/unsimulated/floor/wood
	icon = 'icons/turf/flooring/wood.dmi'
	icon_state = "wood"
	color = WOOD_COLOR_GENERIC

//Unsimulated
/turf/unsimulated/wall/planetary/virgo3b
	name = "facility wall"
	desc = "An eight-meter tall carbyne wall. For when the wildlife on your planet is mostly militant megacorps."
	alpha = 0xFF

/turf/unsimulated/mineral/virgo3b
	blocks_air = TRUE

/turf/unsimulated/floor/steel
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "steel"

/turf/unsimulated/wall
	blocks_air = 1

// Some turfs to make floors look better in centcom tram station.



/turf/unsimulated/floor/techfloor_grid
	name = "floor"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "techfloor_grid"

/turf/unsimulated/floor/maglev
	name = "maglev track"
	desc = "Magnetic levitation tram tracks. Caution! Electrified!"
	// icon = 'icons/turf/flooring/maglevs.dmi'
	icon_state = "maglevup"

/turf/unsimulated/wall/transit
	// icon = 'icons/turf/transit_vr.dmi'

/turf/unsimulated/floor/transit
	// icon = 'icons/turf/transit_vr.dmi'

/obj/effect/floor_decal/transit/orange
	// icon = 'icons/turf/transit_vr.dmi'
	icon_state = "transit_techfloororange_edges"

/obj/effect/transit/light
	// icon = 'icons/turf/transit_128.dmi'
	icon_state = "tube1-2"

// Bluespace jump turf!
/turf/space/infinity/bluespace
	name = "bluespace"

// Desert jump turf!
/turf/space/sandyscroll
	name = "sand transit"
	// icon = 'icons/turf/transit_vr.dmi' // DOES NOT EXIST CURRENTLY
	icon_state = "desert_ns"

// originally /turf/simulated/floor/outdoors/rocks.
// todo: port polaris rock turf sprite
// pr this upstream
/turf/exterior/rocks
	name = "ground"
	icon = 'icons/turf/exterior/barren.dmi'
	icon_edge_layer = EXT_EDGE_BARREN

/turf/exterior/rocks/Initialize()
	if(prob(20))
		LAZYADD(decals, image('icons/turf/flooring/decals.dmi', "asteroid[rand(0,9)]"))
	. = ..()