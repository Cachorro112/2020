/turf/floor/water/indoors
	temperature = T20C
	initial_gas = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)

// STUBS DEFINED FOR FUTURE IMPLEMENTATION
// THESE NEED NAMES, ICONS, AND FUNCTIONALITY ADDED!
/turf/floor/asteroid/cave
	temperature = T20C
	initial_gas = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
/turf/floor/tiled/steel_dirty/virgo3b
	initial_gas = null
/turf/wall/shuttle
	var/hard_corner = FALSE
/turf/wall/shuttle/hard_corner
	hard_corner = TRUE
/turf/floor/shuttle/blue/airless
	initial_gas = null
/turf/floor/shuttle/yellow/airless
	initial_gas = null
/turf/floor/reinforced/virgo3b
	initial_gas = null
/turf/floor/virgo3b_indoors
	initial_gas = null

/decl/flooring/grass/sif_growth
	name = "growth"
	desc = "A natural moss that has adapted to the sheer cold climate."
	icon_edge_layer = FLOOR_EDGE_GRASS
	icon_base = "sif_grass"
	icon = 'maps/tether/icons/sif_grass.dmi'
	has_base_range = 1
	growth_value = 1.1
	color = null
	force_material = /decl/material/solid/organic/plantmatter/grass // todo: sifgrass material?

/decl/flooring/grass/sif_growth/thick
	name = "thick growth"
	icon_edge_layer = FLOOR_EDGE_GRASS_WILD
	icon = 'maps/tether/icons/sif_grass_thick.dmi'
	growth_value = 1.5
	harvest_type = /decl/flooring/grass/sif_growth

/decl/flooring/grass/sif_growth/thick/get_movable_alpha_mask_state(atom/movable/mover)
	. = ..() || "mask_grass"

/turf/floor/sif_growth
	name = "growth"
	icon = 'maps/tether/icons/sif_grass.dmi'
	icon_state = "sif_grass0"
	_flooring = /decl/flooring/grass/sif_growth
	_base_flooring = /decl/flooring/dirt

/turf/floor/sif_growth/thick
	name = "thick growth"
	icon = 'maps/tether/icons/sif_grass_thick.dmi'
	icon_state = "sif_grass0"
	_flooring = /decl/flooring/grass/sif_growth/thick
	_base_flooring = /decl/flooring/dirt

// Voidcraft Shuttle Walls
// TODO: Remove these and replace their uses with literally anything else.
// /turf/wall/shuttle/voidcraft/green is only used for elevators, really
// and the shuttle other should just be replaced with normal hull.
/turf/wall/shuttle/voidcraft
	name = "voidcraft wall"
	icon = 'maps/tether/icons/shuttle_void.dmi'
	icon_state = "void"

/turf/wall/shuttle/voidcraft/red
	stripe_color = "#ff0000"

/turf/wall/shuttle/voidcraft/blue
	stripe_color = "#0000ff"

/turf/wall/shuttle/voidcraft/green
	stripe_color = "#00ff00"

/turf/wall/shuttle/voidcraft/get_wall_icon()
	return icon

/turf/wall/shuttle/voidcraft/Initialize()
	. = ..()
	update_icon()

/turf/wall/shuttle/voidcraft/get_turf_validation_single_states()
	return list("void")

/turf/wall/shuttle/voidcraft/get_turf_validation_corner_states()
	return list()

/turf/wall/shuttle/voidcraft/update_wall_icon()
	icon_state = initial(icon_state)
	if(stripe_color)
		cut_overlays()
		var/image/I = image(icon = src.icon, icon_state = "o_[icon_state]")
		I.color = stripe_color
		add_overlay(I)

// override the default tiled floor icon to match the steel decals
/turf/floor/tiled
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

/turf/floor/tiled/steel_dirty
	name = "steel floor"
	icon_state = "steel_dirty"
	_flooring = /decl/flooring/tiling/steel_dirty

/obj/item/stack/tile/floor/steel_dirty
	name = "steel floor tile"
	singular_name = "steel floor tile"
	icon_state = "tile_steel"
	material = /decl/material/solid/metal/plasteel

/decl/flooring/tiling/steel_dirty
	name = "floor"
	icon_base = "steel_dirty"
	build_type = /obj/item/stack/tile/floor/steel_dirty

/turf/floor/tiled/dark
	icon_state = "dark"
	color = null

/decl/flooring/tiling/dark
	icon_base = "dark"
	color = null

/turf/floor/tiled/monotile
	_flooring = /decl/flooring/tiling/mono/steel

/decl/flooring/tiling/mono/steel
	icon_base = "steel_monotile"

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
	icon = 'icons/turf/flooring/techfloor.dmi'
	icon_state = "techfloor_grid"

/turf/unsimulated/floor/maglev
	name = "maglev track"
	desc = "Magnetic levitation tram tracks. Caution! Electrified!"
	icon = 'maps/tether/icons/maglevs.dmi'
	icon_state = "maglevup"

/turf/unsimulated/wall/transit
	abstract_type = /turf/unsimulated/wall/transit
	icon = 'maps/tether/icons/obj/transit_vr.dmi'

/turf/unsimulated/floor/transit
	abstract_type = /turf/unsimulated/floor/transit
	icon = 'maps/tether/icons/obj/transit_vr.dmi'

/obj/effect/floor_decal/transit
	abstract_type = /obj/effect/floor_decal/transit

/obj/effect/floor_decal/transit/orange
	icon = 'maps/tether/icons/obj/transit_vr.dmi'
	icon_state = "transit_techfloororange_edges"

/obj/effect/transit/light
	icon = 'maps/tether/icons/obj/transit_128.dmi'
	icon_state = "tube1-2"

// Bluespace jump turf!
/turf/space/infinity/bluespace
	name = "bluespace"

// Desert jump turf!
/turf/space/sandyscroll
	name = "sand transit"
	icon = 'maps/tether/icons/obj/transit_vr.dmi'
	icon_state = "desert_ns"
