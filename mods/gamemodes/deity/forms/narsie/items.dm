
//SACRIFICE DAGGER
//If used on a person on an altar, causes the user to carve into them, dealing moderate damage and gaining points for the altar's god.
/obj/item/knife/ritual/sacrifice
	name = "sacrificial dagger"
	desc = "This knife is dull but well used."
	material = /decl/material/solid/stone/cult

/obj/item/knife/ritual/sacrifice/resolve_attackby(var/atom/a, var/mob/user, var/click_params)
	var/turf/T = get_turf(a)
	var/obj/structure/deity/altar/altar = locate() in T
	if(!altar)
		return ..()
	if(isliving(a))
		var/mob/living/L = a
		var/multiplier = 1
		if(L.mind)
			multiplier++
		if(ishuman(L))
			var/mob/living/human/H = L
			if(H.should_have_organ(BP_HEART))
				multiplier++
		if(L.stat == DEAD)
			to_chat(user, SPAN_WARNING("\The [a] is already dead! There is nothing to take!"))
			return

		user.visible_message(SPAN_WARNING("\The [user] hovers \the [src] over \the [a], whispering an incantation."))
		if(!do_after(user,200, L))
			return
		user.visible_message(SPAN_DANGER("\The [user] plunges the knife down into \the [a]!"))
		L.take_damage(20)
		if(altar.linked_god)
			altar.linked_god.adjust_power_min(2 * multiplier,0,"from a delicious sacrifice!")


//EXEC AXE
//If a person hit by this axe within three seconds dies, sucks in their soul to be harvested at altars.
/obj/item/bladed/axe/fire/cult
	name = "terrible axe"
	desc = "Its head is sharp and stained red with heavy use."
	icon = 'icons/obj/items/weapon/bone_axe.dmi'
	var/stored_power = 0

/obj/item/bladed/axe/fire/cult/examine(mob/user)
	. = ..()
	if(stored_power)
		to_chat(user, SPAN_NOTICE("It exudes a death-like smell."))

/obj/item/bladed/axe/fire/cult/resolve_attackby(var/atom/a, var/mob/user, var/click_params)
	if(istype(a, /obj/structure/deity/altar))
		var/obj/structure/deity/altar/altar = a
		if(stored_power && altar.linked_god)
			altar.linked_god.adjust_power_min(stored_power, "from harvested souls.")
			altar.visible_message(SPAN_WARNING("\The [altar] absorbs a black mist exuded from \the [src]."))
			return
	if(ismob(a))
		var/mob/M = a
		if(M.stat != DEAD)
			events_repository.register(/decl/observ/death, M,src, TYPE_PROC_REF(/obj/item/bladed/axe/fire/cult, gain_power))
		spawn(30)
			events_repository.unregister(/decl/observ/death, M,src)
	return ..()

/obj/item/bladed/axe/fire/cult/proc/gain_power()
	stored_power += 50
	src.visible_message(SPAN_OCCULT("\The [src] screeches as the smell of death fills the air!"))

/obj/item/chems/drinks/zombiedrink
	name = "well-used urn"
	desc = "Said to bring those who drink it back to life, no matter the price."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "urn"
	volume = 10
	amount_per_transfer_from_this = 10

/obj/item/chems/drinks/zombiedrink/populate_reagents()
	add_to_reagents(/decl/material/liquid/zombie, reagents.maximum_volume)
