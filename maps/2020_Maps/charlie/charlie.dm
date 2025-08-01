#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/scaling_descriptors.dm"
	#include "../../../mods/mobs/borers/_borers.dme"
	#include "../../../mods/content/psionics/_psionics.dme"
	#include "../../../mods/species/ascent/_ascent.dme"
	#include "../../../mods/2020_mods/2020_main/_2020_the_cold_war.dme"
	#include "../../../mods/2020_mods/charlie_gamemode/_charlie.dme"
	#include "../../../mods/content/baychems/_baychems.dme"
	#include "../../../mods/content/fov_module/_fov_module.dme"

	#include "charlie_areas.dm"
	#include "charlie_departments.dm"
	#include "charlie_jobs.dm"
	#include "charlie_overmap.dm"
	#include "charlie_setup.dm"
	#include "charlie_shuttle.dm"
	#include "skadi.dm"
	#include "charlie.dmm"
	#include "skadi.dmm"

	#include "jobs/charlie_jobs.dm"
	#include "jobs/job_outfits.dm"

	#define USING_MAP_DATUM /datum/map/charlie

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Charlie Station
#endif
