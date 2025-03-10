/decl/special_role/gnfos
	name = "Gay Blacks from Outer Space"
	antag_indicator = "hudsyndicate"
	name_plural = "Gay Blacks from Outer Space"
	landmark_id = "Black-Spawn"
	leader_welcome_text = "You are the leader of the Gay Blacks Expedition forces."
	welcome_text = "You're a Gay Blacks from Outer Space, your job is help male humans to free themselves from the female opression."
	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	min_player_age = 14

	faction = "gayblacks"

	default_outfit = /decl/hierarchy/outfit/gay_nigger

/decl/special_role/gnfos/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
// TO DO: Kill all the womans from the station.
	return 1

/decl/special_role/gnfos/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Gay Blacks come from the Planet Anus, they discover a new species that call themselves humans, and they seem to be opressed by their female counterpart.")
	to_chat(player.current, "You must discuss what to do, but you all know that the [global.using_map.station_name] is the first place you need to start free the males, and start the Gay Utopia.")
	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/gnfos_intro.ogg'))
