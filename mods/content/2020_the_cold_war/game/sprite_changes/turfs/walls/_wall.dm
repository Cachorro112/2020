/turf/wall
	icon = 'mods/content/2020_the_cold_war/icons/turf/walls/_previews.dmi'
	icon_state = "generic"

/turf/wall/r_wall
	icon_state = "rgeneric"

/turf/wall/get_wall_icon()
	. = (istype(material) && material.icon_base) || 'mods/content/2020_the_cold_war/icons/turf/walls/wall.dmi'