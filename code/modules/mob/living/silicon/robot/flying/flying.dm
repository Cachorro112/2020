/mob/living/silicon/robot/flying
	desc = "A utility robot with an anti-gravity hover unit and a lightweight frame."
	icon = 'icons/mob/robots/flying/flying.dmi'
	module_category = ROBOT_MODULE_TYPE_FLYING
	dismantle_type = /obj/item/robot_parts/robot_suit/flyer
	speed = -1 // nyoom
	power_efficiency = 0.75

	// They are not very heavy or strong.
	mob_size =       MOB_SIZE_SMALL
	mob_bump_flag =  SIMPLE_ANIMAL
	mob_swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	mob_push_flags = MONKEY|SLIME|SIMPLE_ANIMAL

/mob/living/silicon/robot/flying/initialize_components()
	components["actuator"] =       new/datum/robot_component/actuator(src)
	components["radio"] =          new/datum/robot_component/radio(src)
	components["power cell"] =     new/datum/robot_component/cell(src)
	components["diagnosis unit"] = new/datum/robot_component/diagnosis_unit(src)
	components["camera"] =         new/datum/robot_component/camera(src)
	components["comms"] =          new/datum/robot_component/binary_communication(src)
	components["armour"] =         new/datum/robot_component/armour/light(src)

/mob/living/silicon/robot/flying/handle_regular_status_updates()
	. = ..()
	if(incapacitated() || !is_component_functioning("actuator"))
		stop_flying()
	else
		start_flying()

/mob/living/silicon/robot/flying/proc/start_flying()
	pass_flags |= PASS_FLAG_TABLE
	default_pixel_y = 0
	start_floating()

/mob/living/silicon/robot/flying/proc/stop_flying()
	pass_flags &= ~PASS_FLAG_TABLE
	default_pixel_y = -8
	stop_floating()

/mob/living/silicon/robot/flying/death(gibbed)
	. = ..()
	if(. && !gibbed)
		stop_flying()

/mob/living/silicon/robot/flying/is_space_movement_permitted(allow_movement = FALSE)
	return (pass_flags & PASS_FLAG_TABLE) ? SPACE_MOVE_PERMITTED : ..()

/mob/living/silicon/robot/flying/can_fall(anchor_bypass = FALSE, turf/location_override = loc)
	return is_space_movement_permitted() == SPACE_MOVE_FORBIDDEN

/mob/living/silicon/robot/flying/can_overcome_gravity()
	return is_space_movement_permitted() != SPACE_MOVE_FORBIDDEN
