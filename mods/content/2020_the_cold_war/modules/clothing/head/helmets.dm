/obj/item/clothing/head/helmet/tactical/mk2_1
	name = "Mark 2.1 Helmet"
	desc = "A grey helmet made from advanced material. this version fix some nasty issues from the original MK 2."
	icon = 'icons/clothing/head/armor/helmet.dmi'

/obj/item/clothing/head/helmet/tactical/mk2_1/tan
	name = "Mark 2.1 Helmet"
	desc = "A tan helmet made from advanced material. this version fix some nasty issues from the original MK 2."
	icon = 'icons/clothing/head/armor/tactical.dmi'

/obj/item/clothing/head/helmet/tactical/mk2_1/green
	name = "Mark 2.1 Helmet"
	desc = "A green helmet made from advanced material. this version fix some nasty issues from the original MK 2."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/usa/head/helmet.dmi'

/obj/item/clothing/head/helmet/tactical/mk2
	name = "Mark 2 Helmet"
	desc = "A grey helmet made from advanced material. this version was made to be sold commercialy."
	icon = 'icons/clothing/head/armor/helmet.dmi'

/obj/item/clothing/head/helmet/terran
	name = "Terran Organization helmet"
	desc = "A cyan standard issue helmet, with the Terran Organization's initials on the front. A lightweight helmet for their military forces."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/head/terran_helmet.dmi'
	body_parts_covered = SLOT_HEAD
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)
	flags_inv = HIDEEARS

/obj/item/clothing/head/helmet/terran/heavy
	name = "Terran Organization heavy helmet"
	desc = "A cyan helmet with an added bulletproof visor, with the Terran Organization's initials on the front. A lightweight helmet for their superior military forces ranks."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/head/terran_helmet_cover.dmi'
	body_parts_covered = SLOT_HEAD|SLOT_FACE|SLOT_EYES //face shield
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_VERY_HIGH,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)
	flags_inv = HIDEEARS
	var/up = 0
	action_button_name = "Toggle Visor"

/obj/item/clothing/head/helmet/terran/heavy/on_update_icon(mob/user)
	. = ..()
	icon_state = get_world_inventory_state()
	if(up && check_state_in_icon("[icon_state]_up", icon))
		icon_state = "[icon_state]_up"
	update_clothing_icon()

/obj/item/clothing/head/helmet/terran/heavy/adjust_mob_overlay(mob/living/user_mob, bodytype, image/overlay, slot, bodypart, use_fallback_if_icon_missing = TRUE)
	if(overlay && up && check_state_in_icon("[overlay.icon_state]_up", overlay.icon))
		overlay.icon_state = "[overlay.icon_state]_up"
	. = ..()