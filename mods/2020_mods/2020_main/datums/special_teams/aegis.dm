/decl/special_role/aegis_delta_8
	name = "Aegis - Delta-8, 'Morning Sun' Agent"
	name_plural = "Aegis - Delta-8, 'Morning Sun' Agent"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration!"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "Aegis"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/outfit/delta_8

/decl/special_role/aegis_delta_8/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/aegis_delta_8/Initialize()
	. = ..()
//	sound_to(usr, sound('mods/2020_mods/2020_main/sounds/themes/aegis_theme.ogg'))
	leader_welcome_text = "As leader of the Delta-8 Team, you answer only to Mortensen Organization, and have authority to override the Captain where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the captain where possible, however."
	welcome_text = "As member of the Delta-8, you answer only to your leader and Mortensen Organization Paladins."

/decl/special_role/aegis_delta_8/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Aegis Delta-8, Designated as 'Morning Sun' is a unit from the Mortensen Organization Aegis Battalion; Delta-8 job is to secure or destroy supernatural or anomalous threats.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")

/// Black Ghosts
/decl/special_role/aegis_xeta_1
	name = "Aegis - Xeta-1, 'Black Ghosts' Agent"
	name_plural = "Aegis - Xeta-1, 'Black Ghosts' Agent"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration!"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "Aegis"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/outfit/xeta_1

/decl/special_role/aegis_xeta_1/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/aegis_xeta_1/Initialize()
	. = ..()
//	sound_to(usr, sound('mods/2020_mods/2020_main/sounds/themes/aegis_theme.ogg'))
	leader_welcome_text = "As leader of the Xeta-1 Team, you answer only to Mortensen Organization, and have authority to override the Captain where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the captain where possible, however."
	welcome_text = "As member of the Xeta-1, you answer only to your leader and Mortensen Organization Paladins."

/decl/special_role/aegis_xeta_1/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Aegis Xeta-1, Designated as 'Black Ghosts' is a unit from the Mortensen Organization Aegis Battalion; Xeta-1 job is to secure or destroy memetic anomalous threats.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")

/// Black Ghosts
/decl/special_role/aegis_alpha_3
	name = "Aegis - Alpha-3, 'Last Line' Agent"
	name_plural = "Aegis - Alpha-3, 'Last Line' Agent"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration!"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "Aegis"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/outfit/alpha_3

/decl/special_role/aegis_alpha_3/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/aegis_alpha_3/Initialize()
	. = ..()
//	sound_to(usr, sound('mods/2020_mods/2020_main/sounds/themes/aegis_theme.ogg'))
	leader_welcome_text = "As leader of the Alpha-3 Team, you answer only to Mortensen Organization, and have authority to override the Captain where it is necessary to achieve your mission goals. you may use force against the crew if it is necessary to the mission progress."
	welcome_text = "As member of the Xeta-1, you answer only to your leader and Mortensen Organization Paladins."

/decl/special_role/aegis_alpha_3/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Aegis Alpha-3, Designated as 'Last Line' is a elite unit from the Mortensen Organization Aegis Battalion; Alpha-3 (as the designation suggest) is the last line of defence against highly destructive anomalies before extreme measures may be taken against it. Alpha-3 need to usa any means to destroy the target, even if this mean use of Mass Destruction Weapons.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")