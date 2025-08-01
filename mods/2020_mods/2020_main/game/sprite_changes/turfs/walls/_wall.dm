/turf/wall
	icon = 'mods/2020_mods/2020_main/icons/turf/walls/_previews.dmi'
	icon_state = "generic"

/turf/wall/r_wall
	icon_state = "rgeneric"

/turf/wall/get_wall_icon()
	. = (istype(material) && material.icon_base) || 'mods/2020_mods/2020_main/icons/turf/walls/wall.dmi'