/decl/special_role/soviet_rapid_d
	name = "Soviet Fleet - Rapid Deployment Agent"
	name_plural = "Soviet Fleet - Rapid Deployment Agents"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration!"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "Response Team Sov"

	faction = "soviet"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/outfit/rapid_deployment

/decl/special_role/soviet_rapid_d/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/soviet_rapid_d/Initialize()
	. = ..()
//	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/aegis_theme.ogg'))
	leader_welcome_text = "As leader of the Rapid Deployment Team, you answer only to Soviet Fleet, and have authority to override the Captain where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the captain where possible, however."
	welcome_text = "As member of the Rapid Deployment Team, you answer only to your leader and Soviet Fleet Officials."

/decl/special_role/soviet_rapid_d/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Rapid Deployment, is a unit from the Soviet Fleet. the Rapid Deployment Team job is restore order and fix problems that are causing emergencies on Soviet Ships and Stations.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")

/// Spetsnaz! Antagonist Soviets

/decl/special_role/spestnaz
	name = "GRU Fleet Division Operative"
	antag_indicator = "hudsyndicate"
	name_plural = "GRU Fleet Division Operatives"
	landmark_id = "SOF-Spawn"
	leader_welcome_text = "You are the leader of the SOF Fleet Division Team. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_CLEAR_EQUIPMENT | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudoperative"

	hard_cap = 2
	hard_cap_round = 3
	initial_spawn_req = 2
	initial_spawn_target = 3
	min_player_age = 14
	default_access = list(access_mercenary)

	faction = "soviet"

	default_outfit = /decl/hierarchy/outfit/syndi_assault

/decl/special_role/spestnaz/Initialize()
	leader_welcome_text = "As leader of the GRU Fleet Division Team, you answer only to the Soviet Union. You have authorization to Kill the Crew and damage the station, but try to be stealth."
	welcome_text = "As member of the GRU Fleet Division Team, you answer only to your leader and the Soviet Union officials."

/decl/special_role/spestnaz/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The GRU Fleet Division is a Elite SOF Spetsnaz Division that works for the Soviet Fleet on Space. the GRUFD is used on special operation missions and intelligency missions as well.")
	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/sov_theme.ogg'))

/decl/special_role/spestnaz/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1
