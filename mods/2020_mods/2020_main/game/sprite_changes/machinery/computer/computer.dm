/obj/machinery/computer
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'
	icon_state = "computer"

/obj/machinery/computer/on_update_icon()

	cut_overlays()
	icon = initial(icon)
	icon_state = initial(icon_state)

	if(reason_broken & MACHINE_BROKEN_NO_PARTS)
		set_light(0)
		icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi' //#FIXME: I really don't know why you'd do that after re-initializing it above.
		icon_state = "wired"
		var/screen = get_component_of_type(/obj/item/stock_parts/console_screen)
		var/keyboard = get_component_of_type(/obj/item/stock_parts/keyboard)
		if(screen)
			add_overlay("comp_screen")
		if(keyboard)
			add_overlay(icon_keyboard ? "[icon_keyboard]_off" : "keyboard")
		return

	var/offline = (stat & NOPOWER)
	if(!offline)
		var/datum/extension/interactive/os/os = get_extension(src, /datum/extension/interactive/os)
		if(os && !os.on)
			offline = TRUE

	if(offline)
		set_light(0)
		if(icon_keyboard)
			add_overlay(image(icon,"[icon_keyboard]_off", overlay_layer))
		if(stat & BROKEN)
			add_overlay(image(icon,"[icon_state]_broken", overlay_layer))
		return

	set_light(light_range_on, light_power_on, light_color)
	if(stat & BROKEN)
		add_overlay(image(icon,"[icon_state]_broken", overlay_layer))
	else
		var/screen_overlay = get_screen_overlay()
		if(screen_overlay)
			add_overlay(screen_overlay)
	var/keyboard_overlay = get_keyboard_overlay()
	if(keyboard_overlay)
		add_overlay(keyboard_overlay)

/obj/machinery/computer/air_control
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/central_atmos
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/drone_control
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/gravity_control_computer
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/prisoner
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/robotics
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/shuttle_control
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'

/obj/machinery/computer/turbine_computer
	icon = 'mods/2020_mods/2020_main/icons/machinery/computer.dmi'