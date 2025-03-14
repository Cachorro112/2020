/obj/item/clothing/shoes
	name = "shoes"
	desc = "Comfortable-looking shoes."
	icon_state = ICON_STATE_WORLD
	icon = 'icons/clothing/feet/generic_shoes.dmi'
	gender = PLURAL
	siemens_coefficient = 0.9
	cold_protection = SLOT_FEET
	body_parts_covered = SLOT_FEET
	heat_protection = SLOT_FEET
	slot_flags = SLOT_FEET
	permeability_coefficient = 0.50
	_base_attack_force = 2
	blood_overlay_type = "shoeblood"
	material = /decl/material/solid/organic/leather
	origin_tech = @'{"materials":1,"engineering":1}'
	fallback_slot = slot_shoes_str
	_base_attack_force = 5

	var/can_fit_under_magboots = TRUE
	var/can_add_cuffs = TRUE
	var/obj/item/handcuffs/attached_cuffs = null
	var/can_add_hidden_item = TRUE
	var/hidden_item_max_w_class = ITEM_SIZE_SMALL
	var/obj/item/hidden_item = null
	var/shine = -1 // if material should apply shine overlay. Set to -1 for it to not do that

	/// A multiplier applied to footstep volume.
	var/footstep_volume_mod = 1
	/// A multiplier applied to footstep range.
	var/footstep_range_mod  = 1
	/// A modifier applied to move delay when walking on snow.
	var/snow_slowdown_mod   = 0

/obj/item/clothing/shoes/Destroy()
	. = ..()
	if (hidden_item)
		QDEL_NULL(hidden_item)
	if (attached_cuffs)
		QDEL_NULL(attached_cuffs)

/obj/item/clothing/shoes/examine(mob/user)
	. = ..()
	if (attached_cuffs)
		to_chat(user, SPAN_WARNING("They are connected by \the [attached_cuffs]."))
	if (hidden_item)
		if (loc == user)
			to_chat(user, SPAN_ITALIC("\An [hidden_item] is inside."))
		else if (get_dist(src, user) == 1)
			to_chat(user, SPAN_ITALIC("Something is hidden inside."))

/obj/item/clothing/shoes/attack_hand(var/mob/user)
	if(user.check_dexterity(DEXTERITY_HOLD_ITEM, TRUE) && remove_hidden(user))
		return TRUE
	return ..()

/obj/item/clothing/shoes/attack_self(var/mob/user)
	try_remove_cuffs(user)
	..()

/obj/item/clothing/shoes/attackby(var/obj/item/I, var/mob/user)
	if (istype(I, /obj/item/handcuffs))
		add_cuffs(I, user)
		return TRUE
	. = add_hidden(I, user)
	if(!.)
		. = ..()

/obj/item/clothing/shoes/proc/add_cuffs(var/obj/item/handcuffs/cuffs, var/mob/user)
	if (!can_add_cuffs)
		to_chat(user, SPAN_WARNING("\The [cuffs] can't be attached to \the [src]."))
		return
	if (attached_cuffs)
		to_chat(user, SPAN_WARNING("\The [src] already has [attached_cuffs] attached."))
		return
	if (do_after(user, 5 SECONDS))
		if(!user.try_unequip(cuffs, src))
			return
		user.visible_message(SPAN_ITALIC("\The [user] attaches \the [cuffs] to \the [src]."), range = 2)
		verbs |= /obj/item/clothing/shoes/proc/try_remove_cuffs
		LAZYINITLIST(slowdown_per_slot[slot_shoes_str])
		slowdown_per_slot[slot_shoes_str] += cuffs.elastic ? 10 : 15
		attached_cuffs = cuffs

/obj/item/clothing/shoes/proc/try_remove_cuffs(var/mob/user)
	set name = "Remove Shoe Cuffs"
	set desc = "Get rid of those limiters and lengthen your stride."
	set category = "Object"
	set src in usr

	user = user || usr
	if (!user)
		return
	if (!attached_cuffs)
		return
	if (user.incapacitated())
		return
	if (do_after(user, 5 SECONDS))
		remove_cuffs(user)

/obj/item/clothing/shoes/proc/remove_cuffs(var/mob/user)
	if (!user.put_in_hands(attached_cuffs))
		to_chat(usr, SPAN_WARNING("You need an empty, unbroken hand to remove \the [attached_cuffs] from \the [src]."))
		return
	user.visible_message(SPAN_ITALIC("\The [user] removes \the [attached_cuffs] from \the [src]."), range = 2)
	attached_cuffs.add_fingerprint(user)
	LAZYINITLIST(slowdown_per_slot[slot_shoes_str])
	slowdown_per_slot[slot_shoes_str] -= attached_cuffs.elastic ? 10 : 15
	verbs -= /obj/item/clothing/shoes/proc/try_remove_cuffs
	attached_cuffs = null

/obj/item/clothing/shoes/proc/add_hidden(var/obj/item/I, var/mob/user)
	if (!(I.item_flags & ITEM_FLAG_CAN_HIDE_IN_SHOES)) // fail silently
		return FALSE
	if (!can_add_hidden_item)
		to_chat(user, SPAN_WARNING("\The [src] can't hold anything."))
		return TRUE
	if (hidden_item)
		to_chat(user, SPAN_WARNING("\The [src] already holds \an [hidden_item]."))
		return TRUE
	if (I.w_class > hidden_item_max_w_class)
		to_chat(user, SPAN_WARNING("\The [I] is too large to fit in \the [src]."))
		return TRUE
	if (do_after(user, 1 SECONDS))
		if(!user.try_unequip(I, src))
			return TRUE
		user.visible_message(SPAN_ITALIC("\The [user] shoves \the [I] into \the [src]."), range = 1)
		verbs |= /obj/item/clothing/shoes/proc/remove_hidden
		hidden_item = I
		return TRUE

/obj/item/clothing/shoes/proc/remove_hidden(var/mob/user)
	set name = "Remove Shoe Item"
	set desc = "Pull out whatever's hidden in your foot gloves."
	set category = "Object"
	set src in usr

	user = user || usr
	if (!user)
		return
	if (!hidden_item)
		return FALSE
	if (user.incapacitated())
		return FALSE
	if (loc != user)
		return FALSE
	if (do_after(user, 2 SECONDS))
		if (!user.put_in_hands(hidden_item))
			to_chat(usr, SPAN_WARNING("You need an empty, unbroken hand to pull \the [hidden_item] from \the [src]."))
			return TRUE
		user.visible_message(SPAN_ITALIC("\The [user] pulls \the [hidden_item] from \the [src]."), range = 1)
		playsound(get_turf(src), 'sound/effects/holster/tactiholsterout.ogg', 25)
		verbs -= /obj/item/clothing/shoes/proc/remove_hidden
		hidden_item = null
	return TRUE

/obj/item/clothing/shoes/proc/handle_movement(var/turf/walking, var/running)
	if (attached_cuffs && running)
		attached_cuffs.take_damage(1, armor_pen = 100)
		if(QDELETED(attached_cuffs))
			verbs -= /obj/item/clothing/shoes/proc/try_remove_cuffs
			attached_cuffs = null
	return

/obj/item/clothing/shoes/set_material(var/new_material)
	..()
	if(shine != -1 && material.reflectiveness >= MAT_VALUE_DULL)
		shine = material.reflectiveness

/obj/item/clothing/shoes/on_update_icon()
	. = ..()
	if(shine > 0 && check_state_in_icon("[icon_state]_shine", icon))
		var/mutable_appearance/S = mutable_appearance(icon, "[icon_state]_shine")
		S.alpha = 127 * shine / 100
		S.blend_mode = BLEND_ADD
		add_overlay(S)

/obj/item/clothing/shoes/apply_additional_mob_overlays(mob/living/user_mob, bodytype, image/overlay, slot, bodypart, use_fallback_if_icon_missing = TRUE)
	if(overlay && shine > 0 && slot == slot_shoes_str)
		var/mutable_appearance/S = mutable_appearance(overlay.icon, "shine")
		S.alpha = 127 * shine / 100
		S.blend_mode = BLEND_ADD
		overlay.overlays += S
	. = ..()
