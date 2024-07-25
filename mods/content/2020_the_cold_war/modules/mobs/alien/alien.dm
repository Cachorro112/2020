//TODO: Return the classic Alien to 2020
/mob/living/alien
	name = "alien"
	desc = "What IS that?"
	icon = 'icons/mob/alien.dmi'
	icon_state = "alien"
	pass_flags = PASS_FLAG_TABLE
	health = 100
	maxHealth = 100
	mob_size = 4
	species_language = LANGUAGE_XENOPHAGE

	var/dead_icon
	var/language
	var/death_msg = "lets out a waning guttural screech, green blood bubbling from its maw."
	var/instance_num

/mob/living/alien/New()

	verbs += /mob/living/proc/ventcrawl
	verbs += /mob/living/proc/hide

	instance_num = rand(1, 1000)
	name = "[initial(name)] ([instance_num])"
	real_name = name
	regenerate_icons()

	if(language)
		add_language(language)

	gender = NEUTER

	..()

/mob/living/alien/u_equip(obj/item/W as obj)
	return

/mob/living/alien/restrained()
	return 0

/mob/living/alien/show_inv(mob/user as mob)
	return //Consider adding cuffs and hats to this, for the sake of fun.