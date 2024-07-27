#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/mobs/borers/_borers.dme"

	#include "../../../mods/content/psionics/_psionics.dme"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/content/2020_the_cold_war/_2020_the_cold_war.dme"
	#include "../../../mods/content/baychems/_baychems.dme"
	#include "../../../mods/content/fov_module/_fov_module.dme"

	#include "uboot_areas.dm"
	#include "uboot_departaments.dm"

	#define USING_MAP_DATUM /datum/map/uboot

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Uboot
#endif
