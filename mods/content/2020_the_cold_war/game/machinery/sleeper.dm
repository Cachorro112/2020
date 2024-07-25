/obj/machinery/sleeper
	icon = 'mods/content/2020_the_cold_war/icons/obj/sleeper.dmi'
	icon_state = "sleeper"
	pixel_z = 0

/obj/machinery/sleeper/on_update_icon()
	if(!occupant)
		icon_state = "sleeper"
	else if(stat & (BROKEN|NOPOWER))
		icon_state = "sleeper_closed"
	else
		icon_state = "sleeper_working"