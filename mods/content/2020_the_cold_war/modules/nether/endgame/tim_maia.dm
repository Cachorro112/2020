// Essa bagulho eu fiz no puro autismo e NÃO É CANON.
// é isso que o DEV faz.
////AUTISMO PORRAAAAA

/obj/screen/fullscreen/tim_maia
	icon = 'mods/content/2020_the_cold_war/icons/effects/tim_maia.dmi'
	icon_state = "tim"

//Same as Nether invasion but more like QUE PORRA É ESSA

/datum/universal_state/tim_maia
 	name = "Tim Maia"
 	desc = "A SEMANA INTEIRA FIQUEI ESPERANDO PRA TE VER SORRINDO PRA TE VER CANTANDO, QUANDO A GENTE AMA NÃO PENSA EM DINHEIRO SO SE QUER AMAR"
 	var/obj/screen/fullscreen/tim_maia/jumpscare
 	var/decl/security_level/original_level

/datum/universal_state/tim_maia/New()
	jumpscare = new

/datum/universal_state/tim_maia/OnShuttleCall(var/mob/user)
	if(user)
		to_chat(user, "<span class='sinister'>YOU HEAR GUNSHOTS AND HORRIBLE SCREAMS... QUERO FICAR BEM AVONTADE, NA VERDADE EU SOU ASSIM!... HELP IS NOT COMING.</span>")
	return 0

/datum/universal_state/tim_maia/proc/Netherfy()
	for(var/turf/T)
		if(T.is_floor() && T.simulated  && prob(2))
			new /obj/effect/gateway/active/nether(T)

/datum/universal_state/tim_maia/OnEnter()
	set background = 1

	Netherfy()
	PlayerSet()
	Firealarm()
	APCSet()
	jumpscare()

	to_world("<span class='sinister' style='font-size:22pt'>YOUR BODY BECOME LIMP AS YOU HEAR A BRAZILIAN MUSIC, SOMETHING HAS GOING WRONG!</span>")
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/ambience/eu_so_quero_amar.ogg'))

	if(SSevac.evacuation_controller?.cancel_evacuation())
		priority_announcement.Announce("The evacuation has been aborted due to the shuttle being missed.")

	flick("tim_maia",jumpscare)

	PlayerSet()
	SSskybox.change_skybox("narsie", new_use_stars = FALSE, new_use_overmap_details = FALSE)

	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/tim_maia, delta_alert)), rand(10, 25) SECONDS)
	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/tim_maia, announce_tim_invasion)), rand(30, 60) SECONDS)
	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/tim_maia, announce_destruction)), rand(70, 80) SECONDS)
	addtimer(CALLBACK(src, TYPE_PROC_REF(/datum/universal_state/tim_maia, finalize_nether_invasion)), 5 MINUTES)

/datum/universal_state/tim_maia/proc/delta_alert()
	var/decl/security_state/security_state = GET_DECL(global.using_map.security_state)
	original_level = security_state.current_security_level
	security_state.set_security_level(security_state.severe_security_level, TRUE)

/datum/universal_state/tim_maia/proc/announce_tim_invasion()
	var/end_message = "ATTENTION, THIS IS A MESSAGE FROM THE MORTENSEN ORGANIZATION AUTHORIZED BY THE TERRAN ORGANIZATION FOR ALL COMMUNICATION RELAYS: A MASSIVE BREAK BETWEEN THE NETHER AND OUR REALITY ON A UNIVERSAL SCALE HAS BEEN DETECTED, A DEMON CALLED TIM MAIA HAS BEEN RELEASED AND IS INVADING OUR REALITY. EXPECTED CASUALTIES: MASSIVE. HUMAN EXTINCTION SCENARIO EXTREMELY PROBABLE."
	end_message += "\n\nAUTOMATED ALERT: COMMUNICATION WITH CENTRAL COMMAND LOST."
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/misc/nether_alarm.ogg'))

/datum/universal_state/tim_maia/proc/announce_destruction()
	priority_announcement.Announce("Central Alert Computer: Unknown entity with a massive amount of Energy is detected on the Station... DON'T TRY TO RUN, IT'S FUTILE...")
	sound_to(world, sound('mods/content/2020_the_cold_war/sounds/misc/suspense.ogg'))

/datum/universal_state/tim_maia/proc/finalize_nether_invasion()
	global.cinematic.station_explosion_cinematic(0,null) // TODO: Custom cinematic
	to_world("<span class='sinister' style='font-size:22pt'>Humanity has fallen, further resistence is futily. Nether has Raise to it's endless rule over the universe. Praise our King Tim Maia!</span>")
	universe_has_ended = TRUE

/datum/universal_state/tim_maia/proc/Firealarm()
	for (var/obj/machinery/firealarm/alm in SSmachines.machinery)
		if (!(alm.stat & BROKEN))
			alm.explosion_act(2)

/datum/universal_state/tim_maia/proc/APCSet()
	for (var/obj/machinery/power/apc/APC in SSmachines.machinery)
		if (!(APC.stat & BROKEN) && !APC.is_critical)
			APC.chargemode = 0
			var/obj/item/cell/cell = APC.get_cell()
			if(cell)
				cell.charge = 0
			APC.emagged = 1
			APC.queue_icon_update()

/datum/universal_state/tim_maia/proc/PlayerSet()
	for(var/datum/mind/M in global.player_list)
		if(!isliving(M.current))
			continue
		if(M.current.stat != DEAD)
			SET_STATUS_MAX(M.current, STAT_WEAK, 10)
			M.current.flash_eyes()

		clear_antag_roles(M)

/datum/universal_state/tim_maia/proc/show_jumpscare_to_players()
	for(var/mob/M in global.player_list)
		if(M.client)
			M.client.screen += jumpscare

/datum/universal_state/tim_maia/proc/jumpscare()
	for(var/mob/M in global.player_list)
		sound_to(M, sound('mods/content/2020_the_cold_war/sounds/misc/scream.ogg'))

	show_jumpscare_to_players()
	flick("tim",jumpscare)
	sleep(5)

	for(var/mob/living/L in global.living_mob_list_)
		if(L.client)
			L.client.screen -= jumpscare