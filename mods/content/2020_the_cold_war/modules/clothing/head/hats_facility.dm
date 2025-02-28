/obj/item/clothing/head/facility/isd
	name = "Internal Security fedora"
	desc = "A fancy black fedora with a red strap along it. Used by the Internal Security Department. It's padded with some extreme armor."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/internal_security_fedora.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_SMALL,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/head/facility/isd/cap
	name = "Internal Security field cap"
	desc = "A dull black cap. It has ISD in white printed on it on the front. Used by the Internal Security Department. It's padded with some extreme armor."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/internal_security_cap.dmi'

/obj/item/clothing/head/helmet/facility/security
	name = "\improper site security helmet"
	desc = "A heavy non-descript helmet with built-in padding, and armor. It has a poly-carbonate red riot visor on it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/facility_guard_helmet.dmi'
	body_parts_covered = SLOT_HEAD
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_SMALL,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)
	flags_inv = HIDEEARS
	var/up = 0
	action_button_name = "Toggle Visor"

/obj/item/clothing/head/helmet/facility/security/attack_self(mob/user)
	up = !up
	if(up)
		to_chat(user, "You raise the visor on the [src].")
	else
		to_chat(user, "You lower the visor on the [src].")
	update_icon()

/obj/item/clothing/head/helmet/facility/security/on_update_icon(mob/user)
	. = ..()
	icon_state = get_world_inventory_state()
	if(up && check_state_in_icon("[icon_state]_up", icon))
		icon_state = "[icon_state]_up"
	update_clothing_icon()

/obj/item/clothing/head/helmet/facility/security/adjust_mob_overlay(mob/living/user_mob, bodytype, image/overlay, slot, bodypart, use_fallback_if_icon_missing = TRUE)
	if(overlay && up && check_state_in_icon("[overlay.icon_state]_up", overlay.icon))
		overlay.icon_state = "[overlay.icon_state]_up"
	. = ..()

/obj/item/clothing/head/helmet/facility/security/guard_commander
	name = "\improper guard commander helmet"
	desc = "A heavy white helmet with built-in padding, and armor. It has a poly-carbonate white riot visor on it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/facility_guard_commander_helmet.dmi'

/obj/item/clothing/head/beret/facility/guard
	name = "Guard Beret"
	desc = "A black beret with a red badge, in the shape of two chevrons, it feels durable due to the materials it's been made from."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/facility_guard_beret.dmi'

/obj/item/clothing/head/beret/facility/guard/commander
	name = "Guard Commander Beret"
	desc = "A white beret with a golden badge in the shape of a shield, it feels durable due to the materials it's been made from."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/facility_guard_commander_beret.dmi'