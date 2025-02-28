/obj/item/clothing/head/helmet/space/engineering
	name = "engineering space suit helmet"
	desc = "Comes equipped with a builtin flashlight. has radiation shielding."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/generic/space_suit/engineer/engineer_helmet.dmi'
	armor = list(
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_RESISTANT
		)
	siemens_coefficient = 0.3
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE

/obj/item/clothing/suit/space/engineering
	name = "engineering space suit"
	desc = "An space suit designed mainly for maintenance and mining. has radiation shielding."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/generic/space_suit/engineer/engineer.dmi'
	siemens_coefficient = 0.3
	armor = list(
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_RESISTANT
		)
	allowed = list(
		/obj/item/flashlight,
		/obj/item/tank,
		/obj/item/stack/flag,
		/obj/item/toolbox,
		/obj/item/briefcase/inflatable,
		/obj/item/suit_cooling_unit,
		/obj/item/ore,
		/obj/item/t_scanner,
		/obj/item/tool,
		/obj/item/rcd
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE

//Syndicate Re-sprite
//Sprites From Baystation

/obj/item/clothing/head/helmet/space/void/merc
	name = "blood-red voidsuit helmet"
	desc = "An advanced helmet designed for work in special operations. Property of the Syndicate."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/sprite_change/space_suit/syndi_helmet.dmi'

/obj/item/clothing/suit/space/void/merc
	name = "blood-red voidsuit"
	desc = "An advanced suit that protects against injuries during special operations. Property of the Syndicate."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/sprite_change/space_suit/syndi.dmi'
