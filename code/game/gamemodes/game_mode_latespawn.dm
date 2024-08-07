/decl/game_mode
	var/next_spawn = 0
	var/min_autotraitor_delay = 7 MINUTES
	var/max_autotraitor_delay = 20 MINUTES

///process()
///Called by the gameticker
/decl/game_mode/proc/process()
	if(shall_process_autoantag())
		process_autoantag()

/decl/game_mode/proc/shall_process_autoantag()
	if(!round_autoantag || world.time < next_spawn)
		return FALSE
	if(SSevac.evacuation_controller && (SSevac.evacuation_controller.is_evacuating() || SSevac.evacuation_controller.has_evacuated()))
		return FALSE
	// Don't create auto-antags in the last twenty minutes of the round, but only if the vote interval is longer than 20 minutes
	if((get_config_value(/decl/config/num/vote_autotransfer_interval) > 20 MINUTES) && (transfer_controller.time_till_transfer_vote() < 20 MINUTES))
		return FALSE

	return TRUE

//This can be overriden in case a game mode needs to do stuff when a player latejoins
/decl/game_mode/proc/handle_latejoin(var/mob/living/human/character)
	if(character.mind)
		character.mind.generate_goals(character.mind.assigned_job, is_spawning=TRUE)
		character.show_goals()
	return 0

/decl/game_mode/proc/handle_offsite_latejoin(var/mob/living/human/character)
	return 0

/decl/game_mode/proc/process_autoantag()
	message_admins("[uppertext(name)]: Attempting autospawn.")

	var/list/usable_templates = list()
	for(var/decl/special_role/A in antag_templates)
		if(A.can_late_spawn())
			message_admins("[uppertext(name)]: [A.name] selected for spawn attempt.")
			usable_templates |= A

	if(!usable_templates.len)
		message_admins("[uppertext(name)]: Failed to find configured mode spawn templates, please re-enable auto-antagonists after one is added.")
		round_autoantag = 0
		return

	while(usable_templates.len)
		var/decl/special_role/spawn_antag = pick(usable_templates)
		usable_templates -= spawn_antag

		if(spawn_antag.attempt_auto_spawn())
			message_admins("[uppertext(name)]: Auto-added a new [spawn_antag.name].")
			message_admins("There are now [spawn_antag.get_active_antag_count()]/[spawn_antag.cur_max] active [spawn_antag.name_plural].")
			next_spawn = world.time + rand(min_autotraitor_delay, max_autotraitor_delay)
			return

	message_admins("[uppertext(name)]: Failed to proc a viable spawn template.")
	next_spawn = world.time + min_autotraitor_delay //recheck again in the miniumum time
