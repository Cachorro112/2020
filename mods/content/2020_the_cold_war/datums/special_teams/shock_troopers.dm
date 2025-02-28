/decl/special_role/shock_troopers
	name = "Shock Trooper"
	name_plural = "Shock Troopers"
	welcome_text = "You are a Shock Trooper from the European Union, but you work in the service of [global.using_map.company_name], answering directly to they officials."
	landmark_id = "SHOCK"
	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_HAS_NUKE | ANTAG_HAS_LEADER | ANTAG_RANDOM_EXCEPTED
	default_access = list(
		access_cent_general,
		access_cent_specops,
		access_cent_living,
		access_cent_storage
	)
	antaghud_indicator = "huddeathsquad"
	default_access = list(access_cent_specops)

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 4
	initial_spawn_target = 6

	faction = "europe"
	default_outfit = /decl/outfit/shock_trooper
	id_title = "Shock Trooper"
	var/deployed = 0

/decl/special_role/shock_troopers/attempt_spawn()
	if(..())
		deployed = 1

/decl/special_role/shock_troopers/equip_role(var/mob/living/human/player)
	if (player.mind == leader)
		default_outfit = /decl/hierarchy/outfit/shock_trooper/leader
	else
		default_outfit = initial(default_outfit)
	. = ..()
	if(.)
		player.implant_loyalty(player)

/decl/special_role/shock_troopers/update_antag_mob(var/datum/mind/player)

	..()

	var/shock_trooper_rank
	if(leader && player == leader)
		shock_trooper_rank = pick("Korporal", "Feldwebel", "Stabsfeldwebel", "Unteroffizier 1. Klasse", "Hauptfeldwebel")
	else
		shock_trooper_rank = pick("Leutnant", "Hauptmann", "Hauptfach")

	var/shock_trooper_name = pick(global.last_names)

	var/datum/preferences/A = new() //Randomize appearance for the commando.
	A.randomize_appearance_and_body_for(player.current)

	player.name = "[shock_trooper_rank] [shock_trooper_name]"
	player.current.real_name = player.name
	player.current.SetName(player.current.name)

	var/mob/living/human/H = player.current
	if(istype(H))
		var/decl/pronouns/pronouns = pick(H.species.available_pronouns)
		H.set_gender(pronouns.name)
		H.set_age(rand(25,45))
		H.dna.ready_dna(H)

/decl/special_role/shock_troopers/create_antagonist()
	if(..() && !deployed)
		deployed = 1
