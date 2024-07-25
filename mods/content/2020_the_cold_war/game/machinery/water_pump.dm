/obj/machinery/water_pump
	name = "Water Pump"
	desc = "A high-volume pump to help keep you dry when it's getting damp."
	icon = 'icons/obj/atmos.dmi'
	icon_state = "siphon:0"
	anchored = TRUE
	density = TRUE

	construct_state = /decl/machine_construction/default/panel_closed
	uncreated_component_parts = null
	base_type = /obj/machinery/water_pump
	stat_immune = 0

	power_channel = EQUIP
	use_power = POWER_USE_OFF

	obj_flags = OBJ_FLAG_ANCHORABLE
	atom_flags = ATOM_FLAG_CLIMBABLE
	clicksound = "switch"

	var/active = FALSE
	var/drainage = TRUE
	var/last_gurgle = 0

/obj/machinery/water_pump/Initialize()
	. = ..()
	queue_icon_update()

/obj/machinery/water_pump/on_update_icon()
	icon_state = "siphon:[active ? "1" : "0"]"
	overlays.Cut()
	if(panel_open)
		overlays.Add("siphon-open")

/obj/machinery/water_pump/examine(mob/user)
	. = ..()
	if(.)
		to_chat(user, "The water pump is [active ? "1" : "0"] and the hatch is [panel_open ? "open" : "closed"].")

/obj/machinery/water_pump/proc/set_active(new_active)
	if(active != new_active)
		active = new_active
		queue_icon_update()

/obj/machinery/water_pump/components_are_accessible(path)
	return !active && ..()

/obj/machinery/water_pump/physical_attack_hand(mob/user)
	if(!panel_open)
		if(stat & NOPOWER)
			to_chat(user, SPAN_WARNING("You try to switch [src] on, but nothing happens."))
			return TRUE
		set_active(!active)
		user.visible_message(
			SPAN_NOTICE("[user] switches [active ? "1" : "0"] the [src]."),
			SPAN_NOTICE("You switch [active ? "1" : "0"] the [src]."))
		return TRUE

/obj/machinery/water_pump/Process()
	if(!active)
		return

	if(!(stat & NOPOWER))
		var/turf/T = get_turf(src)
		if(!istype(T))
			return
		var/fluid_here = T.get_fluid_depth()
		if(fluid_here <= 0)
			use_power_oneoff(drainage * 1000)
			return

		T.remove_fluid(CEILING(fluid_here * drainage))
		T.show_bubbles()
		use_power_oneoff(drainage * 10000)

		if(world.time > last_gurgle + 30)
			last_gurgle = world.time
			playsound(T, pick(SSfluids.gurgles), 50, 1)
	else
		set_active(FALSE)
