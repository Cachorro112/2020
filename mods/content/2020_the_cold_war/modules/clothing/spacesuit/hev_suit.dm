/obj/item/clothing/head/helmet/space/void/hev
	name = "Hazardous Environment helmet"
	desc = "An helmet designate to support extreme conditions such high pressure and heat. can be used for EVA despite not being made for it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/generic/space_suit/hev/hev_helmet.dmi'
	bodytype_equip_flags = BODY_FLAG_HUMANOID
	heat_protection = SLOT_HEAD
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_MINOR,
		ARMOR_LASER = ARMOR_LASER_MINOR,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_RESISTANT
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	siemens_coefficient = 0.4

/obj/item/clothing/suit/space/void/hev
	name = "Hazardous Environment Vest"
	icon = 'mods/content/2020_the_cold_war/icons/clothing/generic/space_suit/hev/hev_suit.dmi'
	bodytype_equip_flags = BODY_FLAG_HUMANOID
	w_class = ITEM_SIZE_HUGE//bulky item
	desc = "An helmet designate to support extreme conditions such high pressure and heat. can be used for EVA despite not being made for it."
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_MINOR,
		ARMOR_LASER = ARMOR_LASER_MINOR,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_RESISTANT
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