/decl/special_role/traitor
	name = "CIA Agent"
	name_plural = "CIA Agents"
	antaghud_indicator = "hud_traitor"
	blacklisted_jobs = list(/datum/job/submap)
	flags = ANTAG_SUSPICIOUS | ANTAG_RANDSPAWN | ANTAG_VOTABLE
	skill_setter = /datum/antag_skill_setter/station
	blocked_job_event_categories = list(ASSIGNMENT_COMPUTER)

/decl/special_role/traitor/get_extra_panel_options(var/datum/mind/player)
	return "<a href='?src=\ref[player];common=crystals'>\[set crystals\]</a><a href='?src=\ref[src];spawn_uplink=\ref[player.current]'>\[spawn uplink\]</a>"

/decl/special_role/traitor/Topic(href, href_list)
	if (..())
		return 1
	if(href_list["spawn_uplink"])
		spawn_uplink(locate(href_list["spawn_uplink"]))
		return 1

/decl/special_role/traitor/create_objectives(var/datum/mind/traitor)
	if(!..())
		return

	if(issilicon(traitor.current))
		var/datum/objective/assassinate/kill_objective = new
		kill_objective.owner = traitor
		kill_objective.find_target()
		traitor.objectives += kill_objective

		var/datum/objective/survive/survive_objective = new
		survive_objective.owner = traitor
		traitor.objectives += survive_objective
	else
		switch(rand(1,100))
			if(1 to 33)
				var/datum/objective/assassinate/kill_objective = new
				kill_objective.owner = traitor
				kill_objective.find_target()
				traitor.objectives += kill_objective
			if(34 to 50)
				var/datum/objective/brig/brig_objective = new
				brig_objective.owner = traitor
				brig_objective.find_target()
				traitor.objectives += brig_objective
			if(51 to 66)
				var/datum/objective/harm/harm_objective = new
				harm_objective.owner = traitor
				harm_objective.find_target()
				traitor.objectives += harm_objective
			else
				var/datum/objective/steal/steal_objective = new
				steal_objective.owner = traitor
				steal_objective.find_target()
				traitor.objectives += steal_objective
		switch(rand(1,100))
			if(1 to 100)
				if (!(locate(/datum/objective/escape) in traitor.objectives))
					var/datum/objective/escape/escape_objective = new
					escape_objective.owner = traitor
					traitor.objectives += escape_objective

			else
				if (!(locate(/datum/objective/hijack) in traitor.objectives))
					var/datum/objective/hijack/hijack_objective = new
					hijack_objective.owner = traitor
					traitor.objectives += hijack_objective
	return

/decl/special_role/traitor/add_antagonist(datum/mind/player, ignore_role, do_not_equip, move_to_spawn, do_not_announce, preserve_appearance)
	. = ..()
	if(.)

		var/list/dudes = list()
		for(var/mob/living/carbon/human/man in global.player_list)
			if(man.client)
				var/decl/cultural_info/culture = man.get_cultural_value(TAG_FACTION)
				if(culture && prob(culture.subversive_potential))
					dudes += man
			dudes -= player.current
		for(var/datum/objective/obj in player.objectives)
			dudes -= obj.owner?.current
			dudes -= obj.target?.current

		if(length(dudes))
			var/mob/living/carbon/human/M = pick(dudes)
			to_chat(player.current, "We have received credible reports that [M.real_name] might be willing to help our cause. If you need assistance, consider contacting them.")
			player.StoreMemory("<b>Potential Collaborator</b>: [M.real_name]", /decl/memory_options/system)

			to_chat(M, "<span class='warning'>The subversive potential of your faction has been noticed, and you may be contacted for assistance soon...</span>")
			to_chat(M, "<b>Code Phrase</b>: <span class='danger'>[syndicate_code_phrase]</span>")
			to_chat(M, "<b>Code Response</b>: <span class='danger'>[syndicate_code_response]</span>")
			M.StoreMemory("<b>Code Phrase</b>: [syndicate_code_phrase]", /decl/memory_options/system)
			M.StoreMemory("<b>Code Response</b>: [syndicate_code_response]", /decl/memory_options/system)
			to_chat(M, "Listen for the code words, preferably in the order provided, during regular conversations to identify agents in need. Proceed with caution, however, as everyone is a potential foe.")

		to_chat(player.current, "<u><b>The CIA provided you with the following information on how to identify possible allies:</b></u>")
		to_chat(player.current, "<b>Code Phrase</b>: <span class='danger'>[syndicate_code_phrase]</span>")
		to_chat(player.current, "<b>Code Response</b>: <span class='danger'>[syndicate_code_response]</span>")
		player.StoreMemory("<b>Code Phrase</b>: [syndicate_code_phrase]", /decl/memory_options/system)
		player.StoreMemory("<b>Code Response</b>: [syndicate_code_response]", /decl/memory_options/system)
		to_chat(player.current, "Use the code words, preferably in the order provided, during regular conversation, to identify other agents. Proceed with caution, however, as everyone is a potential foe.")

/decl/special_role/traitor/equip_role(var/mob/living/carbon/human/player)

	. = ..()
	if(issilicon(player)) // this needs to be here because ..() returns false if the mob isn't human
		add_law_zero(player)
		if(isrobot(player))
			var/mob/living/silicon/robot/R = player
			R.SetLockdown(0)
			R.emagged = 1 // Provides a traitor robot with its module's emag item
			R.verbs |= /mob/living/silicon/robot/proc/ResetSecurityCodes
		. = TRUE
	else if(.)
		spawn_uplink(player)
	else
		return FALSE

//////////////////////Mercenary///////////////
/decl/special_role/mercenary
	name = "Syndicate Operative"
	antag_indicator = "hudsyndicate"
	name_plural = "Syndicate Operatives"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are the leader of the syndicate strikeforce. hail to the chief. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_HAS_NUKE | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 4
	initial_spawn_target = 6
	min_player_age = 14
	default_access = list(access_mercenary)

	faction = "mercenary"

	default_outfit = /decl/hierarchy/outfit/mercenary

/decl/special_role/mercenary/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/decl/special_role/mercenary/equip_role(var/mob/living/carbon/human/player)
	. = ..()
	if(.)
		var/obj/item/radio/uplink/U = new(get_turf(player), player.mind, DEFAULT_TELECRYSTAL_AMOUNT)
		player.put_in_hands(U)
