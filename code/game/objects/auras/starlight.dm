/obj/aura/starborn
	name = "starborn's gift"
	icon = 'icons/effects/effects.dmi'
	icon_state = "white_electricity_constant"
	color = "#33cc33"
	layer = MOB_LAYER

/obj/aura/starborn/bullet_act(var/obj/item/projectile/P, var/def_zone)
	if(P.atom_damage_type == BURN)
		user.visible_message("<span class='warning'>\The [P] seems to only make \the [user] stronger.</span>")
		user.heal_damage(BRUTE, P.damage)
		return AURA_FALSE
	return 0

/obj/aura/starborn/attackby(var/obj/item/I, var/mob/i_user)
	if(I.atom_damage_type == BURN)
		to_chat(i_user, "<span class='warning'>\The [I] seems to only feed into \the [user]'s flames.</span>")
		user.heal_damage(BRUTE, I.get_attack_force(user))
		return AURA_FALSE
	return 0