/datum/universal_state/nuclear_explosion
	name = "Nuclear Demolition Warhead"

/obj/screen/cinematic
	icon = 'mods/2020_mods/2020_main/icons/effects/station_explosion.dmi'

/datum/universal_state/nuclear_explosion/New(atom/nuke)
	explosion_source = nuke
	cinematic = new

/datum/universal_state/nuclear_explosion/OnEnter()
	set waitfor = FALSE
	if(SSticker.mode)
		SSticker.mode.station_explosion_in_progress = TRUE

	start_cinematic_intro()

	var/turf/T = get_turf(explosion_source)
	if(isStationLevel(T.z))
		to_world("<span class='danger'>The [station_name()] was destoyed by the nuclear blast!</span>")

		sound_to(world, sound('mods/2020_mods/2020_main/sounds/ambience/shatter_the_empires_cinematic.ogg'))
		dust_mobs(SSmapping.get_connected_levels(T.z))
		play_cinematic_station_destroyed()
	else
		to_world("<span class='danger'>A nuclear device was set off, but the explosion was out of reach of the [station_name()]!</span>")

		dust_mobs(SSmapping.get_connected_levels(T.z))
		play_cinematic_station_unaffected()

	sleep(100)

	for(var/mob/living/L in global.living_mob_list_)
		if(L.client)
			L.client.screen -= cinematic

	sleep(850)

	if(SSticker.mode)
		SSticker.mode.station_was_nuked = 1
		SSticker.mode.station_explosion_in_progress = FALSE
		if(!SSticker.mode.check_finished())//If the mode does not deal with the nuke going off so just reboot because everyone is stuck as is
			universe_has_ended = 1

/datum/universal_state/nuclear_explosion/OnExit()
	if(SSticker.mode)
		SSticker.mode.station_explosion_in_progress = FALSE

/datum/universal_state/nuclear_explosion/dust_mobs(var/list/affected_z_levels)
	for(var/mob/living/L in SSmobs.mob_list)
		var/turf/T = get_turf(L)
		if(T && (T.z in affected_z_levels))
			//this is needed because dusting resets client screen 1.5 seconds after being called (delayed due to the dusting animation)
			var/mob/ghost = L.ghostize(0) //So we ghostize them right beforehand instead
			if(ghost && ghost.client)
				ghost.client.screen += cinematic
			L.dust() //then dust the body

/datum/universal_state/nuclear_explosion/show_cinematic_to_players()
	for(var/mob/M in global.player_list)
		if(M.client)
			M.client.screen += cinematic

/datum/universal_state/nuclear_explosion/start_cinematic_intro()
	for(var/mob/M in global.player_list) //I guess so that people in the lobby only hear the explosion
		sound_to(M, sound('mods/2020_mods/2020_main/sounds/ambience/nuke_alarm.ogg'))

	sleep(100)

	show_cinematic_to_players()
	flick("intro_nuke",cinematic)
	sleep(30)

/datum/universal_state/nuclear_explosion/play_cinematic_station_destroyed()
	sound_to(world, sound('mods/2020_mods/2020_main/sounds/misc/nuclear_explosion.ogg'))

	flick("station_explode_fade_red",cinematic)
	cinematic.icon_state = "summary_selfdes"
	sleep(80)

/datum/universal_state/nuclear_explosion/play_cinematic_station_unaffected()
	cinematic.icon_state = "station_intact"
	sleep(5)
	sound_to(world, sound('mods/2020_mods/2020_main/sounds/misc/nuclear_explosion.ogg'))//makes no sense if you are on the station but whatever


	sleep(75)


//MALF
/datum/universal_state/nuclear_explosion/malf/start_cinematic_intro()
	for(var/mob/M in global.player_list) //I guess so that people in the lobby only hear the explosion
		to_chat(M, sound('sound/machines/Alarm.ogg'))

	sleep(28)

	show_cinematic_to_players()
	flick("intro_malf",cinematic)
	sleep(72)
	flick("intro_nuke",cinematic)
	sleep(30)

