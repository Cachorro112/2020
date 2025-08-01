/mob/living/simple_animal/hostile/nether
	name = "horror"
	desc = "Something that resambles a human but heavily deformed and with tendrils and arms... that's horrible."
	icon = 'mods/2020_mods/2020_main/icons/mobs/horror.dmi'
	speak_emote = list("roars")
	see_in_dark = 10
	response_harm = "slices"
	max_health = 120
	natural_weapon = /obj/item/natural_weapon/claws
	heat_damage_per_tick = null
	cold_damage_per_tick = null
	faction = "nether"
	base_movement_delay = 3
	bleed_colour = COLOR_BLOOD_HUMAN
	base_animal_type = /mob/living/simple_animal/hostile/nether
	ai = /datum/mob_controller/aggressive
	butchery_data = /decl/butchery_data/animal/nether

/mob/living/simple_animal/hostile/nether/get_pry_desc()
	return "clawing"

/mob/living/simple_animal/hostile/nether/get_door_pry_time()
	return 5 SECONDS


/mob/living/simple_animal/hostile/nether/worm
	name = "blood worm"
	desc = "Something that resamble a worm with sharp teeths."
	icon = 'mods/2020_mods/2020_main/icons/mobs/worm.dmi'
	speak_emote = list("chitter")
	response_harm = "bites"
	max_health = 60
	natural_weapon = /obj/item/natural_weapon/bite/weak
	base_movement_delay = 1

/mob/living/simple_animal/hostile/nether/worm/get_door_pry_time()
	return 10 SECONDS


/mob/living/simple_animal/hostile/nether/alt
	name = "walking body"
	desc = "Something that resambles a human but with it's chest open and tendrils... that's horrible."
	icon = 'mods/2020_mods/2020_main/icons/mobs/horror_alt.dmi'

/mob/living/simple_animal/hostile/nether/armored
	name = "armored horror"
	desc = "Something that resambles a human but heavily deformed using some sort of protective equipment... that's horrible."
	icon = 'mods/2020_mods/2020_main/icons/mobs/horror_sec.dmi'
	max_health = 160
	natural_weapon = /obj/item/natural_weapon/claws/strong
	base_movement_delay = 4

/mob/living/simple_animal/hostile/nether/miner
	name = "miner horror"
	desc = "Something that resambles a human but heavily deformed wearing a miner uniform... that's horrible."
	icon = 'mods/2020_mods/2020_main/icons/mobs/miner.dmi'
	max_health = 130
	natural_weapon = /obj/item/natural_weapon/claws/strong
	base_movement_delay = 4

/mob/living/simple_animal/hostile/nether/abomination
	name = "Abomination"
	desc = "What the heck is that?"
	icon = 'mods/2020_mods/2020_main/icons/mobs/abomination.dmi'
	max_health = 190
	natural_weapon = /obj/item/natural_weapon/giant
	base_movement_delay = 2

/mob/living/simple_animal/hostile/nether/abomination/get_door_pry_time()
	return 3 SECONDS