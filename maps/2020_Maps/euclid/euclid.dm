#if !defined(USING_MAP_DATUM)

	#include "../../../mods/content/mundane.dm"
	#include "../../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../../mods/content/government/_government.dme"
	#include "../../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../../mods/content/psionics/_psionics.dme"
	#include "../../../mods/content/scaling_descriptors.dm"

	#include "../../../mods/mobs/borers/_borers.dme"

	#include "../../../mods/species/ascent/_ascent.dme"

	#include "../../../mods/content/2020_culture/2020_culture.dme"
	#include "../../../mods/content/2020_languages/2020_languages.dme"
	#include "../../../mods/content/2020_corporate/_2020_corporate.dme"

	#include "../../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"

	#include "../../away/liberia/liberia.dm"
	#include "../../away/bearcat/bearcat.dm"
	#include "../../away/casino/casino.dm"
	#include "../../away/derelict/derelict.dm"
	#include "../../away/errant_pisces/errant_pisces.dm"
	#include "../../away/lost_supply_base/lost_supply_base.dm"
	#include "../../away/magshield/magshield.dm"
	#include "../../away/mining/mining.dm"
	#include "../../away/mobius_rift/mobius_rift.dm"
	#include "../../away/unishi/unishi.dm"
	#include "../../away/yacht/yacht.dm"

	#include "euclid_areas.dm"

	#define USING_MAP_DATUM /datum/map/euclid

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Euclid
#endif
