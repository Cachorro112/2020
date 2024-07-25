//Copy of Nar-Sie

/obj/effect/tim_maia
	name = "Tim Maia"
	desc = "Tim Maia, a popular MPB singer, but, what the fuck is this?"
	icon = 'icons/obj/narsie.dmi'
	icon_state = "narsie"
	anchored = TRUE
	pixel_x = -236
	pixel_y = -256
	plane = ABOVE_LIGHTING_PLANE
	layer = ABOVE_LIGHTING_LAYER
	light_range = 1
	light_color = "#3e0000"
	is_spawnable_type = FALSE

	/// The current target we're pursuing.
	var/mob/target
	/// Are we going to move around? Set by admin and mappers.
	var/move_self = TRUE
	/// How many tiles out do we pull?
	var/consume_pull = 10
	/// How many tiles out do we eat
	var/consume_range = 6
	/// Sanity check for consuming.
	var/max_atoms_assessed_per_tick = 100

/obj/effect/tim_maia/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)
	set_extension(src, /datum/extension/universally_visible)
	announce_tim_maia()
	update_icon()

/obj/effect/tim_maia/Destroy()
	target = null
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/effect/tim_maia/Process_Spacemove(allow_movement)
	return TRUE

/obj/effect/tim_maia/on_update_icon()
	. = ..()
	var/datum/extension/universally_visible/univis = get_extension(src, /datum/extension/universally_visible)
	univis.refresh()

/obj/effect/tim_maia/Move()
	. = ..()
	if(.)
		var/datum/extension/universally_visible/univis = get_extension(src, /datum/extension/universally_visible)
		univis.refresh()

/obj/effect/tim_maia/forceMove(atom/dest)
	. = ..()
	if(.)
		var/datum/extension/universally_visible/univis = get_extension(src, /datum/extension/universally_visible)
		univis.refresh()

/obj/effect/tim_maia/Process()

	// Feed.
	var/consumed = 0
	for(var/atom/consuming in range(consume_pull, src))
		if(get_dist(src, consuming) >= consume_range)
			consuming.singularity_pull(src, 9)
		else
			consuming.on_defilement()
		if(consumed++ >= max_atoms_assessed_per_tick || TICK_CHECK)
			break

	if(TICK_CHECK)
		return

	// Find a target.
	if (!target || prob(5))
		var/list/targets = list()
		var/current_zs = SSmapping.get_connected_levels(z, include_lateral = FALSE) // can't really handle lateral connections
		// If we have no valid cultists, go for any human.
		if(!length(targets))
			for(var/mob/living/carbon/human/food in global.living_mob_list_)
				if(food.stat)
					var/turf/pos = get_turf(food)
					if(pos?.z in current_zs)
						targets += food
			// Go for ghosts if nothing else is available.
			if(!length(targets))
				for(var/mob/observer/G in global.dead_mob_list_)
					targets += G
		// Pick a random candidate.
		if(length(targets))
			var/capname = uppertext(name)
			if(target)
				to_chat(target, SPAN_NOTICE("<b>[capname] HAS LOST INTEREST IN YOU.</b>"))
			target = pick(targets)
			if (ishuman(target))
				to_chat(target, SPAN_DANGER("[capname] HUNGERS FOR YOUR SOUL."))
			else
				to_chat(target, SPAN_DANGER("[capname] HAS CHOSEN YOU TO LEAD HIM TO HIS NEXT MEAL."))

	// Move.
	if(move_self)

		// Get a direction to move.
		var/movement_dir
		if(target && prob(60))
			if(target.z == z)
				movement_dir = get_dir(src, target)
			else if(target.z > z && GetAbove(src))
				movement_dir = UP
			else if(target.z < z && GetBelow(src))
				movement_dir = DOWN
		else if(prob(16))
			var/list/available_vertical_moves = list()
			if(GetAbove(src))
				available_vertical_moves += UP
			if(GetBelow(src))
				available_vertical_moves += DOWN
			if(length(available_vertical_moves))
				movement_dir = pick(available_vertical_moves)
		if(!movement_dir)
			movement_dir = pick(global.alldirs)

		// Try to move in it.
		step(src, movement_dir)
		var/turf/T = get_turf(loc)

	if(prob(25))
		for(var/mob/living/carbon/M in oviewers(8, src))
			if(M.stat == CONSCIOUS)
				to_chat(M, SPAN_DANGER("You feel your sanity crumble away in an instant as you gaze upon [src.name]..."))
				M.apply_effect(3, STUN)

/obj/effect/tim_maia/proc/announce_narsie()
	set waitfor = FALSE
	if(global.tim_maia_cometh)//so we don't initiate Hell more than one time.
		return
	to_world(SPAN_DANGER("<font size='15'>[uppertext(name)] WAS RESSURECTED!</font>"))
	sound_to(world, sound('sound/effects/wind/wind_5_1.ogg'))
	global.tim_maia_cometh = TRUE
	SetUniversalState(/datum/universal_state/hell)


/obj/effect/tim_maia/explosion_act(severity) //No throwing bombs at it either. --NEO
	SHOULD_CALL_PARENT(FALSE)
	return
