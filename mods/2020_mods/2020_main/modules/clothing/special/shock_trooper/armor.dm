/obj/item/clothing/suit/armor/geruhav
	name = "GERUHAV Vest"
	desc = "A heavily armored vest used by european elite forces."
	icon = 'mods/2020_mods/2020_main/icons/clothing/europe/st/armor.dmi'
	icon_state = ICON_STATE_WORLD
	w_class = ITEM_SIZE_HUGE
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_LEGS|SLOT_FEET|SLOT_ARMS|SLOT_TAIL
	allowed = list(/obj/item/tank/emergency, /obj/item/flashlight,/obj/item/gun/energy, /obj/item/gun/projectile, /obj/item/ammo_magazine, /obj/item/ammo_casing, /obj/item/baton,/obj/item/handcuffs)
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SHIELDED,
		ARMOR_BULLET = ARMOR_BALLISTIC_AP,
		ARMOR_LASER = ARMOR_LASER_HEAVY,
		ARMOR_ENERGY = ARMOR_ENERGY_SHIELDED,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_SHIELDED
		)
	cold_protection = SLOT_UPPER_BODY | SLOT_LOWER_BODY | SLOT_LEGS | SLOT_FEET | SLOT_ARMS | SLOT_HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7