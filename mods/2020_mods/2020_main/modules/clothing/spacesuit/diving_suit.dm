/obj/item/clothing/head/helmet/space/void/diving
	name = "Diving helmet"
	desc = "An atmospheric diving suit helmet capable of withstanding the immense pressure under Europa's crust."
	icon = 'mods/2020_mods/2020_main/icons/clothing/generic/space_suit/diving/diving_helmet.dmi'
	bodytype_equip_flags = BODY_EQUIP_FLAG_HUMANOID
	heat_protection = SLOT_HEAD
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_MINOR,
		ARMOR_LASER = ARMOR_LASER_MINOR,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_MINOR
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	siemens_coefficient = 0.4

/obj/item/clothing/suit/space/void/diving
	name = "Diving suit"
	icon = 'mods/2020_mods/2020_main/icons/clothing/generic/space_suit/diving/diving_suit.dmi'
	bodytype_equip_flags = BODY_EQUIP_FLAG_HUMANOID
	w_class = ITEM_SIZE_HUGE//bulky item
	desc = "An atmospheric diving suit capable of withstanding the immense pressure under Europa's crust."
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_MINOR,
		ARMOR_LASER = ARMOR_LASER_MINOR,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_MINOR
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	allowed = list(
		/obj/item/flashlight,
		/obj/item/tank,
		/obj/item/stack/flag,
		/obj/item/suit_cooling_unit,
		/obj/item/ore,
		/obj/item/t_scanner,
		/obj/item/tool,
		/obj/item/rcd
	)
	siemens_coefficient = 0.4
	item_flags = ITEM_FLAG_NOSLIP