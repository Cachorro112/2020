/datum/universal_state/nether_invasion
 	name = "Nether Invasion"
 	desc = "ALL YOU NEED TO KNOW IS THAT THEY HAVE ARRIVED AND WILL DESTROY US. FUCK;"

/datum/universal_state/nether_invasion/OnShuttleCall(var/mob/user)
	if(user)
		to_chat(user, "<span class='sinister'>YOU HEAR GUNSHOTS AND HORRIBLE SCREAMS... HELP IS NOT COMING.</span>")
	return 0

/datum/universal_state/nether_invasion/proc/Netherfy()
	for(var/turf/T)
		if(T.is_floor() && T.simulated  && prob(1))
			new /obj/effect/gateway/active/nether(T)

/datum/universal_state/nether_invasion/OnEnter()
	set background = 1

	Netherfy()
	PlayerSet()
	Firealarm()
	APCSet()

	to_world("<span class='sinister' style='font-size:22pt'>YOUR SKIN IS ROUGH, YOUR MIND IS HURTING. YOU FEEL YOUR BLOOD BOILING. AGONY. BE PREPARED, THEY ARRIVE.</span>")
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/ambience/nether_arrival.ogg'))

	for(var/mob/M in global.player_list)
		M.flash_eyes()

	if(SSevac.evacuation_controller?.cancel_evacuation())
		priority_announcement.Announce("The evacuation has been aborted due to the shuttle being missed.")

	// Disable Nar-Sie.
	var/decl/special_role/cultist/cult = GET_DECL(/decl/special_role/cultist)
	cult.allow_narsie = 0

	PlayerSet()
	SSskybox.change_skybox("narsie", new_use_stars = FALSE, new_use_overmap_details = FALSE)

	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/nether_invasion, announce_nether_invasion)), rand(30, 60) SECONDS)
	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/nether_invasion, finalize_nether_invasion)), 5 MINUTES)

/datum/universal_state/nether_invasion/proc/announce_nether_invasion()
	var/end_message = "ATTENTION, THIS IS A MESSAGE FROM THE MORTENSEN ORGANIZATION AUTHORIZED BY THE TERRAN ORGANIZATION FOR ALL HUMANITY. A MASSIVE BREAK BETWEEN THE NETHER AND OUR REALITY ON A UNIVERSAL SCALE HAS BEEN DETECTED. EXPECTED CASUALTIES: MASSIVE. HUMAN EXTINCTION SCENARIO EXTREMELY PROBABLE."
	end_message += "\n\nAUTOMATED ALERT: COMMUNICATION WITH ALL HUMANITY LOST."
	priority_announcement.Announce(end_message, "shit")
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/misc/nether_alarm.ogg'))
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/misc/suspense.ogg'))

/datum/universal_state/nether_invasion/proc/finalize_nether_invasion()
	global.cinematic.station_explosion_cinematic(0,null) // TODO: Custom cinematic
	universe_has_ended = TRUE

/datum/universal_state/nether_invasion/proc/Firealarm()
	for (var/obj/machinery/firealarm/alm in SSmachines.machinery)
		if (!(alm.stat & BROKEN))
			alm.explosion_act(2)

/datum/universal_state/nether_invasion/proc/APCSet()
	for (var/obj/machinery/power/apc/APC in SSmachines.machinery)
		if (!(APC.stat & BROKEN) && !APC.is_critical)
			APC.chargemode = 0
			var/obj/item/cell/cell = APC.get_cell()
			if(cell)
				cell.charge = 0
			APC.emagged = 1
			APC.queue_icon_update()

/datum/universal_state/nether_invasion/proc/PlayerSet()
	for(var/datum/mind/M in global.player_list)
		if(!isliving(M.current))
			continue
		if(M.current.stat != DEAD)
			SET_STATUS_MAX(M.current, STAT_WEAK, 10)
			M.current.flash_eyes()

		clear_antag_roles(M)