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

/obj/item/clothing/head/helmet/terran/heavy/attack_self(mob/user)
	up = !up
	if(up)
		to_chat(user, "You raise the visor on the [src].")
	else
		to_chat(user, "You lower the visor on the [src].")
	update_icon()

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

/// Syndicate

/obj/item/clothing/head/helmet/syndicate
	name = "Syndicate helmet"
	desc = "A black with red stripes helmet. issued to Syndicate's armed groups, it's unknown where or who fabricate it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/syndicate/head/syndi_helmet.dmi'
	body_parts_covered = SLOT_HEAD
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)
	flags_inv = HIDEEARS

/obj/item/clothing/head/helmet/syndicate/heavy
	name = "Heavy Syndicate helmet"
	desc = "A black with red stripes helmet with an added bulletproof visor. issued to Syndicate's armed groups, it's unknown where or who fabricate it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/syndicate/head/syndi_helmet_heavy.dmi'
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

/obj/item/clothing/head/helmet/syndicate/heavy/attack_self(mob/user)
	up = !up
	if(up)
		to_chat(user, "You raise the visor on the [src].")
	else
		to_chat(user, "You lower the visor on the [src].")
	update_icon()

/obj/item/clothing/head/helmet/syndicate/heavy/on_update_icon(mob/user)
	. = ..()
	icon_state = get_world_inventory_state()
	if(up && check_state_in_icon("[icon_state]_up", icon))
		icon_state = "[icon_state]_up"
	update_clothing_icon()

/obj/item/clothing/head/helmet/syndicate/heavy/adjust_mob_overlay(mob/living/user_mob, bodytype, image/overlay, slot, bodypart, use_fallback_if_icon_missing = TRUE)
	if(overlay && up && check_state_in_icon("[overlay.icon_state]_up", overlay.icon))
		overlay.icon_state = "[overlay.icon_state]_up"
	. = ..()

/// Aegis

/obj/item/clothing/head/helmet/aegis_ghost
	name = "Stealth Visored Helmet"
	action_button_name = "Adjust Visor"
	desc = "A anti-memetic stealth helmet with a special visor to deal with visual memetic Anomalies."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/aegis_ghost_helmet.dmi'
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES
	body_parts_covered = SLOT_HEAD|SLOT_FACE|SLOT_EYES
	cold_protection = SLOT_HEAD|SLOT_FACE|SLOT_EYES
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SHIELDED,
		ARMOR_BULLET = ARMOR_BALLISTIC_HEAVY,
		ARMOR_LASER = ARMOR_LASER_HEAVY,
		ARMOR_ENERGY = ARMOR_ENERGY_SHIELDED,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED
		)
	var/up = 0

/obj/item/clothing/head/helmet/aegis_ghost/attack_self(mob/user)
	up = !up
	if(up)
		to_chat(user, "You raise the visor on the [src].")
	else
		to_chat(user, "You lower the visor on the [src].")
	update_icon()

/obj/item/clothing/head/helmet/aegis_ghost/on_update_icon(mob/user)
	. = ..()
	icon_state = get_world_inventory_state()
	if(up && check_state_in_icon("[icon_state]_open", icon))
		icon_state = "[icon_state]_open"
	update_clothing_icon()

/obj/item/clothing/head/helmet/aegis_ghost/adjust_mob_overlay(mob/living/user_mob, bodytype, image/overlay, slot, bodypart, use_fallback_if_icon_missing = TRUE)
	if(overlay && up && check_state_in_icon("[overlay.icon_state]_open", overlay.icon))
		overlay.icon_state = "[overlay.icon_state]_open"
	. = ..()

/obj/item/clothing/head/helmet/aegis_tactical
	name = "tactical composite helmet"
	desc = "An armored composite helmet with night vision goggles attached."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/aegis_helmet.dmi'
	permeability_coefficient = 0
	gas_transfer_coefficient = 0
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	body_parts_covered = SLOT_HEAD|SLOT_FACE|SLOT_EYES
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_RIFLES,
		ARMOR_ENERGY = ARMOR_ENERGY_STRONG,
		ARMOR_BIO = ARMOR_BIO_STRONG,
		ARMOR_RAD = ARMOR_RAD_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)
	cold_protection = SLOT_HEAD
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = SLOT_HEAD|SLOT_FACE|SLOT_EYES

/obj/item/clothing/head/helmet/aegis_heavy
	name = "combined heavy assault helmet"
	desc = "A quad-layered heavy composite helmet with titanium strut supports made solely so it doesn't crush one's heavy with the weight."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/helmet/aegis_lastline_helmet.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SHIELDED,
		ARMOR_BULLET = ARMOR_BALLISTIC_HEAVY,
		ARMOR_LASER = ARMOR_LASER_HEAVY,
		ARMOR_ENERGY = ARMOR_ENERGY_SHIELDED,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_SHIELDED,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED
		)
	cold_protection = SLOT_HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = SLOT_HEAD|SLOT_FACE|SLOT_EYES
	siemens_coefficient = 0.5
	permeability_coefficient = 0