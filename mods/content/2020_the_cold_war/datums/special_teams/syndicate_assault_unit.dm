/decl/special_role/syndi_assault
	name = "Syndicate Assault Operative"
	antag_indicator = "hudsyndicate"
	name_plural = "Syndicate Assault Operatives"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are the leader of the Syndicate Assault Unit; hail to the Insurgency. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_HAS_NUKE | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 2
	hard_cap_round = 3
	initial_spawn_req = 2
	initial_spawn_target = 3
	min_player_age = 14
	default_access = list(access_mercenary)
	var/deployed = 0

	faction = "syndicate"

	default_outfit = /decl/hierarchy/outfit/syndi_assault

/decl/special_role/syndi_assault/Initialize()
	var/mob/user
	sound_to(user, sound('mods/content/2020_the_cold_war/sounds/themes/syndie_assault.ogg'))
	leader_welcome_text = "As leader of the Syndicate Assault Unit, you answer only to the Syndicate. you are a agressive force to the crew and may kill the crew on sight in order to achieve your mission goals."
	welcome_text = "As member of the Syndicate Assault Unit, you answer only to your leader and the Syndicate officials."

/decl/special_role/syndi_assault/greet(var/datum/mind/player, var/mob/living/human/user)
	if(!..())
		return
	to_chat(player.current, "The Syndicate Assault Unit it's a Elite squad that works for the Syndicate/Global Insurgency. your mission may variate, but mostly will be terrorism against the enemy.")

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
