/obj/machinery/smartfridge
	name = "\improper SmartFridge"
	icon = 'mods/2020_mods/2020_main/icons/machinery/smartfridges/science.dmi'
	var/icon_base = ICON_STATE_WORLD

/obj/machinery/smartfridge/on_update_icon()
	overlays.Cut()
	if(stat & (BROKEN|NOPOWER))
		icon_state = "[icon_base]-off"
	else
		icon_state = icon_base

	if(panel_open)
		overlays += image(icon, "[icon_base]-panel")

	if(inoperable())
		icon_state = "[icon_base]-off"

/obj/machinery/smartfridge/secure/medbay
	icon = 'mods/2020_mods/2020_main/icons/machinery/smartfridges/medical.dmi'

/obj/machinery/smartfridge/chemistry
	icon = 'mods/2020_mods/2020_main/icons/machinery/smartfridges/medical.dmi'

/obj/machinery/smartfridge/drinks
	icon = 'mods/2020_mods/2020_main/icons/machinery/smartfridges/booze.dmi'

/obj/machinery/smartfridge/foods
	icon = 'mods/2020_mods/2020_main/icons/machinery/smartfridges/science.dmi'
