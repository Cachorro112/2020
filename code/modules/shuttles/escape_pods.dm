var/global/list/escape_pods = list()
var/global/list/escape_pods_by_name = list()

/datum/shuttle/autodock/ferry/escape_pod
	var/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/arming_controller
	category = /datum/shuttle/autodock/ferry/escape_pod
	move_time = 100

/datum/shuttle/autodock/ferry/escape_pod/New(map_hash)
	..()
	if(map_hash)
		ADJUST_TAG_VAR(arming_controller, map_hash) // Unclear how functional this is with lateloaded maps; adjusting for consistency.
	if(!SSevac.evacuation_controller)
		PRINT_STACK_TRACE("This pod should not be used on any map with no evacuation controller, which includes this one.")
	if(name in escape_pods_by_name)
		CRASH("An escape pod with the name '[name]' has already been defined.")
	move_time = SSevac.evacuation_controller.evac_transit_delay + rand(-30, 60)
	escape_pods_by_name[name] = src
	escape_pods += src
	move_time = round(SSevac.evacuation_controller.evac_transit_delay/10)

	//find the arming controller (berth)
	var/arming_controller_tag = arming_controller
	arming_controller = SSshuttle.docking_registry[arming_controller_tag]
	if(!istype(arming_controller))
		CRASH("Could not find arming controller for escape pod \"[name]\", tag was '[arming_controller_tag]'.")

	//find the pod's own controller
	var/datum/computer/file/embedded_program/docking/simple/prog = SSshuttle.docking_registry[dock_target]
	var/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod/controller_master = prog.master
	if(!istype(controller_master))
		CRASH("Escape pod \"[name]\" could not find it's controller master!")

	controller_master.pod = src

/datum/shuttle/autodock/ferry/escape_pod/can_launch()
	if(arming_controller && !arming_controller.armed)	//must be armed
		return 0
	if(location)
		return 0	//it's a one-way trip.
	return ..()

/datum/shuttle/autodock/ferry/escape_pod/can_force()
	if (arming_controller.eject_time && world.time < arming_controller.eject_time + 50)
		return 0	//dont allow force launching until 5 seconds after the arming controller has reached it's countdown
	return ..()

/datum/shuttle/autodock/ferry/escape_pod/can_cancel()
	return 0


//This controller goes on the escape pod itself
/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod
	name = "escape pod controller"
	program = /datum/computer/file/embedded_program/docking/simple/escape_pod
	var/datum/shuttle/autodock/ferry/escape_pod/pod
	var/tag_pump

/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	var/data[0]
	var/datum/computer/file/embedded_program/docking/simple/docking_program = program

	data = list(
		"docking_status" = docking_program.get_docking_status(),
		"override_enabled" = docking_program.override_enabled,
		"door_state" = 	docking_program.memory["door_status"]["state"],
		"door_lock" = 	docking_program.memory["door_status"]["lock"],
		"can_force" = pod.can_force() || (SSevac.evacuation_controller?.has_evacuated() && pod.can_launch()),	//allow players to manually launch ahead of time if the shuttle leaves
		"is_armed" = pod.arming_controller.armed,
	)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)

	if (!ui)
		ui = new(user, src, ui_key, "escape_pod_console.tmpl", name, 470, 290)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod/OnTopic(user, href_list)
	if(href_list["command"] == "manual_arm")
		pod.arming_controller.arm()
		return TOPIC_REFRESH

	if(href_list["command"] == "force_launch")
		if (pod.can_force())
			pod.force_launch(src)
		else if (SSevac.evacuation_controller?.has_evacuated() && pod.can_launch())	//allow players to manually launch ahead of time if the shuttle leaves
			pod.launch(src)
		return TOPIC_REFRESH

//This controller is for the escape pod berth (station side)
/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod_berth
	name = "escape pod berth controller"
	program = /datum/computer/file/embedded_program/docking/simple/escape_pod_berth

/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod_berth/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	var/data[0]
	var/datum/computer/file/embedded_program/docking/simple/docking_program = program

	var/armed = null
	if (istype(docking_program, /datum/computer/file/embedded_program/docking/simple/escape_pod_berth))
		var/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/P = docking_program
		armed = P.armed

	data = list(
		"docking_status" = docking_program.get_docking_status(),
		"override_enabled" = docking_program.override_enabled,
		"armed" = armed,
	)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)

	if (!ui)
		ui = new(user, src, ui_key, "escape_pod_berth_console.tmpl", name, 470, 290)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod_berth/emag_act(var/remaining_charges, var/mob/user)
	if (!emagged)
		to_chat(user, "<span class='notice'>You emag \the [src], arming the escape pod!</span>")
		emagged = 1
		if (istype(program, /datum/computer/file/embedded_program/docking/simple/escape_pod_berth))
			var/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/P = program
			if (!P.armed)
				P.arm()
		return 1

//A docking controller program for a simple door based docking port
/datum/computer/file/embedded_program/docking/simple/escape_pod_berth
	var/armed = 0
	var/eject_delay = 10	//give latecomers some time to get out of the way if they don't make it onto the pod
	var/eject_time = null
	var/closing = 0

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/proc/arm()
	if(!armed)
		armed = 1
		toggleDoor(memory["door_status"], tag_door, TRUE, "open")


/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/receive_user_command(command)
	if (!armed)
		return TRUE // Eat all commands.
	return ..(command)

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/process()
	..()
	if (eject_time && world.time >= eject_time && !closing)
		toggleDoor(memory["door_status"], tag_door, TRUE, "close")
		closing = 1

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/prepare_for_docking()
	return

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/ready_for_docking()
	return 1

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/finish_docking()
	return		//don't do anything - the doors only open when the pod is armed.

/datum/computer/file/embedded_program/docking/simple/escape_pod_berth/prepare_for_undocking()
	eject_time = world.time + eject_delay*10

// The program for the escape pod controller.
/datum/computer/file/embedded_program/docking/simple/escape_pod
	var/tag_pump

/datum/computer/file/embedded_program/docking/simple/escape_pod/reset_id_tags(base_tag)
	. = ..()
	if (istype(master, /obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod))
		var/obj/machinery/embedded_controller/radio/simple_docking_controller/escape_pod/controller = master
		tag_pump = (!base_tag && controller.tag_pump) || "[id_tag]_pump"

/datum/computer/file/embedded_program/docking/simple/escape_pod/get_receive_filters()
	. = ..()
	.[tag_pump] = "main pumps"

/datum/computer/file/embedded_program/docking/simple/escape_pod/finish_undocking()
	. = ..()
	// Send a signal to the vent pumps to repressurize the pod.
	var/datum/signal/signal = new
	signal.data = list(
		"tag" = tag_pump,
		"sigtype" = "command",
		"power" = 1,
		"direction" = 1,
		"set_external_pressure" = ONE_ATMOSPHERE
	)
	post_signal(signal)