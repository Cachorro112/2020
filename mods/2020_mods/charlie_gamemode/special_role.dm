/datum/objective/insane
	explanation_text = "Follow your mind."

is_insane(mob/living/human/M)
	return (M && M.mind && M.mind.assigned_special_role == "Insane")

/decl/special_role/insane
	name = "Insane"
	name_plural = "Insanes"
	welcome_text = "<u><b>Something is wrong with your mind... your mind is... is?...</b></u>"
	antaghud_indicator = "hudunknown1"
	antag_text = null
	blacklisted_jobs = list(/datum/job/submap)
	flags = ANTAG_SUSPICIOUS | ANTAG_RANDSPAWN
	skill_setter = null
	blocked_job_event_categories = list(ASSIGNMENT_COMPUTER)

/decl/special_role/insane/create_objectives(var/datum/mind/insane)
	if(!..())
		return
	var/datum/objective/insane/insane_objective = new
	insane_objective.owner = insane
	insane.objectives += insane_objective
	return

/decl/special_role/insane/add_antagonist(var/datum/mind/player, var/ignore_role, var/do_not_equip, var/do_not_announce, var/preserve_appearance, var/mob/living/human/H)
	. = ..()
	if(.)
		player.assigned_special_role = "Insane"
		switch(rand(1,100))
			if(1 to 33)
				to_chat(player.current, SPAN_DANGER("<u><b>I miss home... it's been so long... My God, what time is it? It seems like time has stopped, it seems like everything is... \
				so slow... life is misery, I no longer feel the fear of death, for me it will be a hug...</b></u>")) //Suicidal, fearless, or just stupid.
				to_chat(player.current, SPAN_WARNING("You no longer feel love for your life, not even for those close to you. If you need to make difficult decisions about your life or the lives of others, \
				you simply do so, without caring about the risks. Death is not a problem for you."))
				player.StoreMemory("I miss home... it's been so long... My God, what time is it? It seems like time has stopped, it seems like everything is... \
				so slow... life is misery, I no longer feel the fear of death, for me it will be a hug...", /decl/memory_options/system)
				player.StoreMemory("You no longer feel love for your life, not even for those close to you. If you need to make difficult decisions about your life or the lives of others, \
				you simply do so, without caring about the risks. Death is not a problem for you.", /decl/memory_options/system)
			if(34 to 50)
				to_chat(player.current, SPAN_DANGER("<u><b>They don't know, but I know, I know what they don't know, I must show them the truth, they MUST know... the Universe is vast and imposing, humanity is weak, \
				their hearts are too weak to know the truth of what is out there, but I must show everyone what it is, no matter what I must do, no matter how much it will hurt them... THEY MUST KNOW!</b></u>"))
				to_chat(player.current, SPAN_WARNING("You have received enlightenment from a being greater than yourself, now you know the truth about the universe and you must tell everyone else about it. \
				No matter what you need to do, they must accept the truth, THEY MUST!"))
				player.current.StoreMemory("They don't know, but I know, I know what they don't know, I must show them the truth, they MUST know... the Universe is vast and imposing, humanity is weak, \
				their hearts are too weak to know the truth of what is out there, but I must show everyone what it is, no matter what I must do, no matter how much it will hurt them... THEY MUST KNOW!", /decl/memory_options/system)
				player.current.StoreMemory("You have received enlightenment from a being greater than yourself, now you know the truth about the universe and you must tell everyone else about it. \
				No matter what you need to do, they must accept the truth, THEY MUST!", /decl/memory_options/system)
			if(51 to 66)
				to_chat(player.current, SPAN_DANGER("<u><b>You know too much, and they want to silence you. They are agents, they work for something that wants to end you, destroy you. Don't listen to them, it's all a lie, they want to deceive you and kill you. DON'T APPROACH!</b></u>"))
				to_chat(player.current, SPAN_WARNING("Paranoia has taken over your mind, they are definitely plotting something against you. Be ready to face them, because at any moment they may want to catch you and kill you. Suspect everyone and EVERYTHING!"))
				player.current.StoreMemory("You know too much, and they want to silence you. They are agents, they work for something that wants to end you, destroy you. Don't listen to them, it's all a lie, they want to deceive you and kill you. DON'T APPROACH!", /decl/memory_options/system)
				player.current.StoreMemory("Paranoia has taken over your mind, they are definitely plotting something against you. Be ready to face them, because at any moment they may want to catch you and kill you. Suspect everyone and EVERYTHING!", /decl/memory_options/system)
			else
				to_chat(player.current, SPAN_DANGER("<u><b>Crazy? I've been crazy once, they locked me in a room. I prefer the isolation, the soundless ambience, that space devoid of... humans. Why stay with these dirty humans if I can be alone somewhere? Haha, I don't need them, stupid creatures.</b></u>"))
				to_chat(player.current, SPAN_WARNING("Madness has taken over your mind. You don't want to be around these humans anymore, you want to be alone, because humans are dirty creatures, they are natural sinners. Don't let them touch you, they are dirty and only wants your harm. Get away from them, as much as you can."))
				player.current.StoreMemory("Crazy? I've been crazy once, they locked me in a room. I prefer the isolation, the soundless ambience, that space devoid of... humans. Why stay with these dirty humans if I can be alone somewhere? Haha, I don't need them, stupid creatures.", /decl/memory_options/system)
				player.current.StoreMemory("Madness has taken over your mind. You don't want to be around these humans anymore, you want to be alone, because humans are dirty creatures, they are natural sinners. Don't let them touch you, they are dirty and only want your harm. Get away from them, as much as you can.", /decl/memory_options/system)
		sound_to(player.current, sound('mods/2020_mods/2020_main/sounds/themes/insanity.ogg'))
	return