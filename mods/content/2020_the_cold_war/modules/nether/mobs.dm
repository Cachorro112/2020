/mob/living/simple_animal/hostile/nether
	name = "horror"
	desc = "A horror beyond human comprehension."
	icon = 'mods/content/2020_the_cold_war/icons/mobs/horror.dmi'
	speak_emote = list("roars")
	emote_hear = list("roars")
	emote_see = list("wraps its arms around itsown body", "look around slowly", "stands still")
	speak_chance = 2.5
	turns_per_move = 5
	see_in_dark = 10
	response_harm = "pokes"
	max_health = 100
	natural_weapon = /obj/item/natural_weapon/claws/strong
	heat_damage_per_tick = null
	cold_damage_per_tick = null
	faction = "nether"
	move_to_delay = 3
	speed = 1
	bleed_colour = COLOR_BLOOD_HUMAN
	break_stuff_probability = 25
	pry_time = 5 SECONDS
	can_pry = TRUE
	pry_desc = "clawing"
	base_animal_type = /mob/living/simple_animal/hostile/nether
//	butchery_data = /decl/butchery_data/humanoid

/mob/living/simple_animal/hostile/nether/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj || Proj.nodamage)
		return

	if(Proj.is_silver == FALSE)
		var/damage = Proj.damage
		if(Proj.atom_damage_type == STUN)
			damage = Proj.damage
		if(Proj.atom_damage_type == BRUTE)
			damage = Proj.damage
		if(Proj.atom_damage_type == BURN)
			damage = Proj.damage
		if(Proj.agony)
			damage += Proj.agony / 1
			if(current_health < Proj.agony * 2)
				SET_STATUS_MAX(src, STAT_PARA, Proj.agony / 10)
				visible_message("<span class='warning'>[src] is stunned momentarily!</span>")

		bullet_impact_visuals(Proj)
		take_damage(damage)
		Proj.on_hit(src)
		return 0
	else
		var/damage = Proj.damage
		if(Proj.atom_damage_type == STUN)
			damage = Proj.damage / 7
		if(Proj.atom_damage_type == BRUTE)
			damage = Proj.damage / 5
		if(Proj.atom_damage_type == BURN)
			damage = Proj.damage / 8
		if(Proj.agony)
			damage += Proj.agony / 6
			if(current_health < Proj.agony * 3)
				SET_STATUS_MAX(src, STAT_PARA, Proj.agony / 20)
				visible_message("<span class='warning'>[src] is stunned momentarily!</span>")

		bullet_impact_visuals(Proj)
		take_damage(damage)
		Proj.on_hit(src)
		return 0


/*
/mob/living/simple_animal/hostile/nether/hit_with_weapon(obj/item/O, mob/living/user, var/effective_force, var/hit_zone)

	if(O.material == !/decl/material/solid/metal/silver)
		visible_message(SPAN_DANGER("\The [src] has been attacked with \the [O] by \the [user]! but does no damage!"))
		return

	else
		var/damage = O.force
		if (O.atom_damage_type == PAIN)
			damage = 0
		if (O.atom_damage_type == STUN)
			damage = (O.force / 8)
		if(supernatural && istype(O,/obj/item/nullrod))
			damage *= 2
			purge = 3
		take_damage(damage)
		if(O.edge || O.sharp)
			adjustBleedTicks(damage)
		visible_message(SPAN_DANGER("\The [src] has been attacked with \the [O] by \the [user]!"))

		return 1
*/
/mob/living/simple_animal/hostile/nether/worm
	name = "blood worm"
	desc = "A horror beyond human comprehension. resamble a worm covered in blood and meat."
	icon = 'mods/content/2020_the_cold_war/icons/mobs/worm.dmi'
	speak_emote = list("chitter")
	emote_hear = list("chitter")
	emote_see = list("swing it's tail", "open and close it's mouth", "tramble")
	turns_per_move = 3
	see_in_dark = 10
	response_harm = "bites"
	max_health = 40
	natural_weapon = /obj/item/natural_weapon/bite/weak
	heat_damage_per_tick = null
	cold_damage_per_tick = null
	faction = "nether"
	move_to_delay = 2
	speed = 2
	break_stuff_probability = 0
	can_pry = TRUE
	base_animal_type = /mob/living/simple_animal/hostile/nether
//	butchery_data = /decl/butchery_data/animal/small
