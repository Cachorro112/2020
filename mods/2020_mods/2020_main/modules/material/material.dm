// Fuckery Start here (i could just make the native wall sprites the new/old ones, but i'am so autistic to do that, i'am sorry, but i will do it soon.)
/decl/material
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'

/decl/material/solid
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/aliumium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/metal.dmi'

/decl/material/solid/metal/aliumium/Initialize()
	. = ..()
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/metal.dmi'

/decl/material/solid/metal
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/metal.dmi'

/decl/material/solid/phoron
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/supermatter
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/depleted_uranium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/neptunium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/plutonium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/fission_byproduct
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/uranium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi'

/decl/material/solid/metal/bronze
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/metal/blackbronze
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/metal/steel
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'
	color = "#666666"

/decl/material/solid/metal/stainlesssteel
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/metal/aluminium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/metal/plasteel
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'
	temperature_damage_threshold = 35000
	color = "#777777"

/decl/material/solid/metal/plasteel/ocp
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'
	temperature_damage_threshold = 150000

/decl/material/solid/metal/chromium
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/metal/alienalloy
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/organic/cardboard
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/organic/paper
	icon_base = 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'
	icon_reinf = 'mods/2020_mods/2020_main/icons/turf/walls/reinforced.dmi'

/decl/material/solid/stone
	wall_blend_icons = list(
		'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi' = TRUE
	)

/decl/material/solid/organic/wood
	wall_blend_icons = list(
		'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi' = TRUE
	)

/decl/material/solid/glass/borosilicate
	temperature_damage_threshold = 35000

/decl/material/solid/metal/plasteel
	temperature_damage_threshold = 35000

/decl/material/solid/metal/plasteel/ocp
	temperature_damage_threshold = 150000

/decl/material/solid/stone
	wall_blend_icons = list(
		'mods/2020_mods/2020_main/icons/turf/walls/stone.dmi' = TRUE,
		'mods/2020_mods/2020_main/icons/turf/walls/metal.dmi' = TRUE
	)
