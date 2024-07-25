	//Main Atmospheric Reservoir, starts with air mixture.  10x normal holding capacity/starting amount.  Anchored.
	//This is just for testing, it's not permanent as the overlays don't look right and something a little more sophisticated
	//Would be nice.

	//just putting the old comment for nostalgia, but i think; make the reservoir as tank is better than canister. really.

/obj/machinery/atmospherics/unary/tank/air_reservoir
	name = "Main Atmosphere Reservoir"
	desc = "a Big Atmosphere Reservoir, holding a giant amount of air. make atmospheric technician job actually easy."
	icon = 'mods/content/2020_the_cold_war/icons/atmos/reservoir.dmi'
	icon_state = "reservoir"
	volume = 1.3E9
	filling = list(/decl/material/gas/oxygen = O2STANDARD, /decl/material/gas/nitrogen = N2STANDARD)