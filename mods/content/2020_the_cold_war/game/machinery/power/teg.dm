/obj/machinery/atmospherics/binary/circulator
	icon = 'mods/content/2020_the_cold_war/icons/machinery/power.dmi'
	icon_state = "circ-unassembled"

/obj/machinery/atmospherics/binary/circulator/on_update_icon()
	icon_state = anchored ? "circ-assembled" : "circ-unassembled"
	overlays.Cut()
	if (stat & (BROKEN|NOPOWER) || !anchored)
		return 1
	if (last_pressure_delta > 0 && recent_moles_transferred > 0)
		if (last_pressure_delta > (5 ATM))
			overlays += image('mods/content/2020_the_cold_war/icons/machinery/power.dmi', "circ-run")
		else
			overlays += image('mods/content/2020_the_cold_war/icons/machinery/power.dmi', "circ-slow")
	else
		overlays += image('mods/content/2020_the_cold_war/icons/machinery/power.dmi', "circ-off")

	return 1

////////The generator

/obj/machinery/generator
	icon = 'mods/content/2020_the_cold_war/icons/machinery/power.dmi'
	icon_state = "teg-unassembled"
	max_power = 1000000

/obj/machinery/generator/on_update_icon()
	icon_state = anchored ? "teg-assembled" : "teg-unassembled"
	overlays.Cut()
	if (stat & (NOPOWER|BROKEN))
		return 1
	else
		overlays += image('mods/content/2020_the_cold_war/icons/machinery/power.dmi', "teg-oc00")
		if (lastgenlev != 0)
			overlays += image('mods/content/2020_the_cold_war/icons/machinery/power.dmi', "teg-op[lastgenlev]")
		return 1