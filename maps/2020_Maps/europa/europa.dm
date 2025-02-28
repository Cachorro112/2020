#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../../mods/content/psionics/_psionics.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/mobs/borers/_borers.dme"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/content/2020_the_cold_war/_2020_the_cold_war.dme"

	#include "jobs/command_security.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical_science.dm"
	#include "jobs/service.dm"

	#include "jobs/outfits/command_security.dm"
	#include "jobs/outfits/engineering.dm"
	#include "jobs/outfits/med_sci.dm"
	#include "jobs/outfits/support.dm"

	#include "europa_areas.dm"
	#include "europa_departments.dm"
	#include "europa_jobs.dm"

	#include "europa.dmm"

	#define USING_MAP_DATUM /datum/map/europa

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Europa Base
#endif
