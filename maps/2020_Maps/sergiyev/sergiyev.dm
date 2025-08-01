#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
//	#include "../../../mods/content/bigpharma/_bigpharma.dme" //<< eu vou mudar isso.
//	#include "../../../mods/content/government/_government.dme"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/modern_earth/_modern_earth.dme"
//	#include "../../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../../mods/content/psionics/_psionics.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/mobs/borers/_borers.dme"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/2020_mods/2020_main/_2020_the_cold_war.dme"
	#include "../../../mods/content/baychems/_baychems.dme"
	#include "../../../mods/content/fov_module/_fov_module.dme"

	#include "../../../mods/2020_mods/2020_main/maps/away_sites/usv_voyager/usv_voyager.dm"

	#include "jobs/command.dm"
	#include "jobs/crew.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"

	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/crew.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"

	#include "sergiyev_antagonism.dm"
	#include "sergiyev_areas.dm"
	#include "sergiyev_departments.dm"
	#include "sergiyev_jobs.dm"
	#include "sergiyev_overmap.dm"
	#include "sergiyev_setup.dm"
	#include "sergiyev_shuttles.dm"
	#include "sergiyev_asteroid_data.dm"

	#include "geology/strata_asteroid.dm"

	#include "sergiyev.dmm"
	#include "sergiyev_science.dmm"
	#include "cluster_1.dmm"
	#include "admin.dmm"


	#define USING_MAP_DATUM /datum/map/sergiyev

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Sergiyev
#endif
