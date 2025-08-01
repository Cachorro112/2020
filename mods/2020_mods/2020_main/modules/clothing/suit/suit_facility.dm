/obj/item/clothing/suit/armor/facility/guard
	name = "site security vest"
	desc = "A heavy armored vest. Worn by facility security, it has some durathread plating in it to make it durable against melee, sadly not much else though."
	icon = 'mods/2020_mods/2020_main/icons/clothing/mortensen/suit/guard_armor.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_KNIVES,
		ARMOR_BULLET = ARMOR_BALLISTIC_PISTOL,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_SMALL,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/facility/guard/heavy
	name = "heavy-plated site security armored vest"
	desc = "A heavy armored vest, with added arm armor, and kneepads for full body coverage. it has some durathread plating in it to make it durable against melee, and slightly in some other damage types."
	icon = 'mods/2020_mods/2020_main/icons/clothing/mortensen/suit/heavy_guard_armor.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/facility/isd
	name = "Internal Security trenchcoat"
	desc = "A durable coat used by the Internal Security Department, there isn't much to note about it except for the golden Mortensen logo on the shoulder, and wrist designs."
	icon = 'mods/2020_mods/2020_main/icons/clothing/mortensen/suit/internal_security_trenchcoat.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_VERY_HIGH,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_SMALL,
		ARMOR_BOMB = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/facility/guard_commander
	name = "Guard Commander's padded coat"
	desc = "A black coat with a nameplate, and rank badge on the chest, it feels thick, and armored unlike most coats. This makes you feel the sense of style."
	icon = 'mods/2020_mods/2020_main/icons/clothing/mortensen/suit/guard_commander_coat.dmi'
	armor = list(
		ARMOR_MELEE  = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_SMALL,
		ARMOR_LASER  = ARMOR_LASER_HANDGUNS,
		ARMOR_ENERGY = ARMOR_ENERGY_MINOR,
		ARMOR_BOMB   = ARMOR_BOMB_MINOR
		)
