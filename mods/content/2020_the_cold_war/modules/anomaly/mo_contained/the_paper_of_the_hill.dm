//SCP-012 from classic SCP13, it's easier to port than from F19
//also not working for now. i will fix before i finish Facility Map.

/obj/item/paper/the_paper_of_the_hill
	name = "Strange Paper"
	icon = 'mods/content/2020_the_cold_war/icons/anomaly/paper_of_the_hill.dmi'
	desc = "An old paper of handwritten words in a unknown language, in a red blood color."
	w_class = ITEM_SIZE_NO_CONTAINER
	var/ticks = 0

///decl/anomaly/the_paper_of_the_hill

/obj/item/paper/the_paper_of_the_hill/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/paper/the_paper_of_the_hill/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/paper/the_paper_of_the_hill/Process()

	play_looping_sound(src, "\ref[src]", 'mods/content/2020_the_cold_war/sounds/anomaly/golgotha.ogg')
	++ticks

	// find a victim in case the last one is gone
	var/mob/living/human/affecting = null
	for (var/mob/living/human/victim in shuffle(view(2, src)))
		if (can_affect())
			affecting = victim
			break

	// we're done here
	if (!affecting)
		return

	// make the victim come towards us
	if (!(affecting in view(1, src)))
		affecting.Move(get_step(affecting, get_dir(affecting, src)))

	var/decl/pronouns/affecting_pronouns = affecting.get_pronouns()

	// do fun stuff
	if (affecting in view(1, src))

		// once every 20 seconds
		if (!(ticks % 20))
			affecting.visible_message("<span class = \"danger\"><em>[affecting] rips into [affecting_pronouns.His] own flesh and covers [affecting_pronouns.His] hands in blood!</em></span>")
			affecting.emote("scream")
			affecting.adjustBruteLoss(25)
			affecting.drip(50)
		// once every 15 seconds
		else if (!(ticks % 15) && affecting.getBruteLoss())
			affecting.visible_message("<span class = \"warning\">[affecting] smears [affecting_pronouns.His] blood on \"[name]\", writing something on another langauge...")
		// otherwise
		else if (prob(5))
			if (prob(50))
				affecting.emote("sigh")
			else
				affecting.emote("cry")

/obj/item/paper/the_paper_of_the_hill/proc/can_affect(var/mob/living/human/victim)
	return victim.stat == CONSCIOUS && !(src in victim.in_vision_cones)
	//!istype(victim.SLOT_EYES, /obj/item/clothing/glasses/blindfold)
	//!GET_STATUS(victim, STAT_BLIND)
