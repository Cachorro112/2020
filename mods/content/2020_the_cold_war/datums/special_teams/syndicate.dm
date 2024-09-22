/decl/special_role/nuke_ops
	name = "Syndicate Nuclear Operative"
	antag_indicator = "hudsyndicate"
	name_plural = "Syndicate Nuclear Operative"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are the leader of the Syndicate Nuclear Operative team; hail to the Insurgency. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_CLEAR_EQUIPMENT | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudoperative"

	hard_cap = 3
	hard_cap_round = 4
	initial_spawn_req = 3
	initial_spawn_target = 4
	min_player_age = 8
	default_access = list(access_mercenary)

	faction = "syndicate"

	default_outfit = /decl/hierarchy/outfit/nuke_ops

/decl/special_role/nuke_ops/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Syndicate Nuclear Operative is a Strike squad that works for the Syndicate/Global Insurgency. The Nuke Ops main goal is destroy Enemies facility using a Nuclear Fission device, using a nuclear authentication disk to activing it.")
	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/syndie_assault.ogg'))

/decl/special_role/nuke_ops/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/decl/special_role/nuke_ops/equip_role(var/mob/living/human/player)
	. = ..()
	if(.)
		var/obj/item/radio/uplink/U = new(get_turf(player), player.mind, DEFAULT_TELECRYSTAL_AMOUNT)
		player.put_in_hands(U)

/// Heavy Nuke Ops

/decl/special_role/syndi_assault
	name = "Syndicate Assault Operative"
	antag_indicator = "hudsyndicate"
	name_plural = "Syndicate Assault Operatives"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are the leader of the Syndicate Assault Unit; hail to the Insurgency. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_CLEAR_EQUIPMENT | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudoperative"

	hard_cap = 2
	hard_cap_round = 3
	initial_spawn_req = 2
	initial_spawn_target = 3
	min_player_age = 14
	default_access = list(access_mercenary)

	faction = "syndicate"

	default_outfit = /decl/hierarchy/outfit/syndi_assault

/decl/special_role/syndi_assault/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Syndicate Assault Unit it's a Elite squad that works for the Syndicate/Global Insurgency. your mission may variate, but mostly will be terrorism against the enemy.")
	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/syndie_assault.ogg'))

/decl/special_role/syndi_assault/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/decl/special_role/syndi_assault/equip_role(var/mob/living/human/player)
	. = ..()
	if(.)
		var/obj/item/radio/uplink/U = new(get_turf(player), player.mind, DEFAULT_TELECRYSTAL_AMOUNT)
		player.put_in_hands(U)
