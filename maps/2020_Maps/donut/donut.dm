#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/mobs/borers/_borers.dme"
	#include "../../../mods/content/psionics/_psionics.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/content/2020_the_cold_war/_2020_the_cold_war.dme"
	#include "../../../mods/content/baychems/_baychems.dme"
	#include "../../../mods/content/fov_module/_fov_module.dme"

	#include "asteroid.dm"
	#include "donut_areas.dm"
	#include "donut_departments.dm"
	#include "donut_jobs.dm"
	#include "donut_overmap.dm"
	#include "donut_setup.dm"
	#include "donut_shuttles.dm"
	#include "asteroid.dmm"
	#include "cent_com.dmm"
	#include "donut.dmm"

	#include "geology/ores.dm"
	#include "geology/stone.dm"

	#include "jobs/assistants.dm"
	#include "jobs/engineering.dm"
	#include "jobs/heads.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"
	#include "jobs/service.dm"

	#include "outfits/_ids.dm"
	#include "outfits/_job.dm"
	#include "outfits/assistants.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"
	#include "outfits/service.dm"

	#define USING_MAP_DATUM /datum/map/donut

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Donut
#endif
