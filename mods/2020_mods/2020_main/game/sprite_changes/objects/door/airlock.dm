/obj/machinery/door/airlock
	icon = 'mods/2020_mods/2020_main/icons/obj/door/doorint.dmi'
	icon_state = "door_closed"

/obj/machinery/door/airlock/do_animate(animation)
	switch(animation)
		if("opening")
			if(overlays) overlays.Cut()
			if(panel_open)
				spawn(2) // The only work around that works. Downside is that the door will be gone for a millisecond.
					flick("o_door_opening", src)  //can not use flick due to BYOND bug updating overlays right before flicking
					update_icon()
			else
				flick("door_opening", src)//[stat ? "_stat":]
				update_icon()
		if("closing")
			if(overlays) overlays.Cut()
			if(panel_open)
				spawn(2)
					flick("o_door_closing", src)
					update_icon()
			else
				flick("door_closing", src)
				update_icon()
		if("spark")
			if(density)
				flick("door_spark", src)
		if("deny")
			if(density && src.arePowerSystemsOn())
				flick("door_deny", src)
				if(secured_wires)
					playsound(src.loc, open_failure_access_denied, 50, 0)
	return

/obj/machinery/door/airlock/update_icon()
	. = ..()
	set_light(0)
	if(overlays) overlays.Cut()
	if(density)
		if(locked && lights && src.arePowerSystemsOn())
			icon_state = "door_locked"
			set_light(2, 0.75, COLOR_RED_LIGHT)
		else
			icon_state = "door_closed"
		if(panel_open || welded)
			overlays = list()
			if(panel_open)
				overlays += image(icon, "panel_open")
			if (!(stat & NOPOWER))
				if(stat & BROKEN)
					overlays += image(icon, "sparks_broken")
				else if (current_health < get_max_health() * 3/4)
					overlays += image(icon, "sparks_damaged")
			if(welded)
				overlays += image(icon, "welded")
		else if (current_health < get_max_health() * 3/4 && !(stat & NOPOWER))
			overlays += image(icon, "sparks_damaged")
	else
		icon_state = "door_open"
		if(src.arePowerSystemsOn())
			set_light(2, 0.65, COLOR_LIME)
		if((stat & BROKEN) && !(stat & NOPOWER))
			overlays += image(icon, "sparks_open")

	if(brace)
		brace.update_icon()
		overlays += image(brace.icon, brace.icon_state)

/obj/machinery/door/airlock/command
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorcom.dmi'

/obj/machinery/door/airlock/security
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsec.dmi'

/obj/machinery/door/airlock/engineering
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Dooreng.dmi'

/obj/machinery/door/airlock/medical
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doormed.dmi'

/obj/machinery/door/airlock/virology
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorviro.dmi'

/obj/machinery/door/airlock/maintenance
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doormaint.dmi'

/obj/machinery/door/airlock/external
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorext.dmi'

/obj/machinery/door/airlock/external/bolted
	icon_state = "door_locked"

/obj/machinery/door/airlock/external/bolted_open
	icon_state = "door_open"

/obj/machinery/door/airlock/sol
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsol.dmi'

/obj/machinery/door/airlock/glass
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorglass.dmi'
	icon_state = "door_closed"

/obj/machinery/door/airlock/centcom
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorele.dmi'

/obj/machinery/door/airlock/vault
	icon = 'mods/2020_mods/2020_main/icons/obj/door/vault.dmi'

/obj/machinery/door/airlock/vault/bolted
	icon_state = "door_locked"

/obj/machinery/door/airlock/freezer
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorfreezer.dmi'

/obj/machinery/door/airlock/hatch
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorhatchele.dmi'

/obj/machinery/door/airlock/hatch/maintenance
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorhatchmaint2.dmi'

/obj/machinery/door/airlock/hatch/maintenance/bolted
	icon_state = "door_locked"

/obj/machinery/door/airlock/glass/command
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorcomglass.dmi'

/obj/machinery/door/airlock/external/glass
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorextglass.dmi'

/obj/machinery/door/airlock/external/glass/bolted
	icon_state = "door_locked"

/obj/machinery/door/airlock/external/glass/bolted_open
	icon_state = "door_open"

/obj/machinery/door/airlock/glass/engineering
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorengglass.dmi'

/obj/machinery/door/airlock/glass/security
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsecglass.dmi'

/obj/machinery/door/airlock/glass/medical
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doormedglass.dmi'

/obj/machinery/door/airlock/glass/virology
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorviroglass.dmi'

/obj/machinery/door/airlock/glass/sol
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsolglass.dmi'

/obj/machinery/door/airlock/mining
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doormining.dmi'

/obj/machinery/door/airlock/atmos
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Dooratmo.dmi'

/obj/machinery/door/airlock/research
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorresearch.dmi'

/obj/machinery/door/airlock/glass/research
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorresearchglass.dmi'

/obj/machinery/door/airlock/glass/mining
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorminingglass.dmi'

/obj/machinery/door/airlock/glass/atmos
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Dooratmoglass.dmi'

/obj/machinery/door/airlock/science
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsci.dmi'

/obj/machinery/door/airlock/glass/science
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Doorsciglass.dmi'

/obj/machinery/door/airlock/highsecurity
	icon = 'mods/2020_mods/2020_main/icons/obj/door/hightechsecurity.dmi'

/obj/machinery/door/airlock/highsecurity/bolted
	icon_state = "door_locked"

/obj/machinery/door/airlock/double/glass
	icon = 'mods/2020_mods/2020_main/icons/obj/door/Door2x1glass.dmi'