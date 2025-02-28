/obj/item/synthesized_instrument/guitar/tim_maia
	name = "Tim Maia's guitar"
	desc = "A wooden musical instrument with six strings. This one was used by the brazilian singer Tim Maia... Why this is on space?"

/obj/effect/rune/tim_maia
	cultname = "demoniac pentagram"
	icon = 'mods/content/2020_the_cold_war/icons/effects/pentagrama.dmi'
	icon_state = "pentagrama"
	var/the_end_comes = 0
	var/the_time_has_come = 300
	var/inicio = 0
//	var/obj/effect/tim_maia/summoning_entity = null

/obj/effect/rune/tim_maia/proc/get_homens()
	. = list()
	for(var/mob/living/M in range(1))
		. += M

/obj/effect/rune/tim_maia/attackby(var/mob/living/user, var/obj/item/synthesized_instrument/guitar/tim_maia/I)
	if(I && inicio == 0)
		to_chat(user, "You put the guitar on the pentagram and the guitar disappear.")
		satanismo()
		inicio = 1
		qdel(I)
		return TRUE
	else
		return

/obj/effect/rune/tim_maia/proc/satanismo(var/mob/living/user)
	var/list/mob/living/homens = get_homens()
	for(var/mob/living/M in homens)
		M.say("Volte a reinar sobre a humanidade! venha e conquiste o mundo material para o seu proprio bem!")
		to_chat(M, "<span class='cult'>You are starting to tear through the veil, opening the way to bring Him back... stay around the rune!</span>")
	log_and_message_admins_many(homens, "started summoning Tim Maia.")

	var/area/A = get_area(src)
	command_announcement.Announce("High levels of gravitational disruption detected at \the [A.proper_name]. Suspected gap between realities forming. Investigate it immediately.")
	while(homens.len >= 1 || the_end_comes)
		homens = get_homens()
		if(homens.len >= 1)
			++the_end_comes
		else
			--the_end_comes
		if(the_end_comes >= the_time_has_come)
			break
		for(var/mob/living/M in range(1))
			if(prob(5))
				M.say(pick("Gloria!", "Viva o Grande!", "Venha!", "Estamos aguardando a sua vinda!", "Rei do MPB!", "Domine o sangue dos fracos!", "Grande Rei!"))

		sleep(10)

	if(the_end_comes >= the_time_has_come)
		SetUniversalState(/datum/universal_state/tim_maia)
//		summoning_entity = new /obj/effect/tim_maia(get_turf(src))
	else
		command_announcement.Announce("Gravitational anomaly has ceased.")
		qdel(src)