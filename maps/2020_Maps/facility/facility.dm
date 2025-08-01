#if !defined(USING_MAP_DATUM)

	#ifdef UNIT_TEST
		#include "../../code/unit_tests/offset_tests.dm"
	#endif

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/verbs/antighost/_subtle_antighost.dme"

	#include "../../../mods/content/pheromones/_pheromones.dme"

	#include "../../../mods/mobs/borers/_borers.dme"

	// Must come after borers for compatibility.
	#include "../../../mods/content/psionics/_psionics.dme"

	#include "../../../mods/2020_mods/2020_main/_2020_the_cold_war.dme"
	#include "../../../mods/content/baychems/_baychems.dme"
	#include "../../../mods/content/fov_module/_fov_module.dme"

	#include "facility_alerts.dm"
	#include "facility_area.dm"
	#include "facility_define.dm"
	#include "facility_departments.dm"
	#include "facility_setup.dm"
	#include "surface.dm"
	#include "facility1.dmm"

	#include "jobs/outfits/cargo.dm"
	#include "jobs/outfits/engineering.dm"
	#include "jobs/outfits/misc.dm"
	#include "jobs/outfits/security.dm"
	#include "jobs/engineering.dm"
	#include "jobs/misc.dm"
	#include "jobs/security.dm"

	#define USING_MAP_DATUM /datum/map/facility

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Facility
#endif
