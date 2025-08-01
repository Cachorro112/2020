/obj/machinery/sleeper
	icon = 'mods/2020_mods/2020_main/icons/obj/sleeper.dmi'
	icon_state = "sleeper"
	pixel_z = 0

/obj/machinery/sleeper/on_update_icon()
	if(!occupant)
		icon_state = "sleeper"
	else if(stat & (BROKEN|NOPOWER))
		icon_state = "sleeper_closed"
	else
		icon_state = "sleeper_working"