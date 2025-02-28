/obj/item/clothing/suit/armor/vest/nanotrasen
	name = "nanotrasen armored vest"
	desc = "A synthetic armor vest. This one is marked with nanotrasen logo."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/nanotrasen/suit/armor.dmi'

/// Terran
/obj/item/clothing/suit/armor/terran
	name = "Terran Organization armored vest"
	desc = "A black standard issue lightweight armored vest, denoting the initials of the Terran Organization."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/suits/terran_armor.dmi'
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_SMALL,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)

/obj/item/clothing/suit/armor/terran/heavy
	name = "Terran Organization heavy-plating armored vest"
	desc = "A black heavily armored vest, denoting the initials of the Terran Organization."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/suits/terran_armor_heavy.dmi'
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_RIFLES,
		ARMOR_ENERGY = ARMOR_ENERGY_STRONG,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED
		)

/// Syndicate

/obj/item/clothing/suit/armor/syndicate
	name = "Syndicate armored vest"
	desc = "A black medium armored vest, with red stripes to indicate the Syndicate."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/syndicate/suit/syndi_armor.dmi'
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_SMALL,
		ARMOR_ENERGY = ARMOR_ENERGY_SMALL,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)

/obj/item/clothing/suit/armor/syndicate/heavy
	name = "Syndicate heavy armored vest"
	desc = "A black heavy armored vest, with red stripes to indicate the Syndicate."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/syndicate/suit/syndi_heavy_armor.dmi'
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_LEGS
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_VERY_HIGH,
		ARMOR_BULLET = ARMOR_BALLISTIC_AP,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
		ARMOR_ENERGY = ARMOR_ENERGY_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED
		)

/// Aegis

/obj/item/clothing/suit/armor/aegis_tactical
	name = "tactical armor suit"
	desc = "An advanced multi-plated composite vest with kevlar lining and plenty of room to move. 'Delta-8' is sewn into the left pauldron, and 'Morning Sun' is sewn into the right."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/suit/aegis_armor.dmi'
	permeability_coefficient = 0
	gas_transfer_coefficient = 0
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_LEGS|SLOT_FEET|SLOT_ARMS|SLOT_HANDS
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
		ARMOR_ENERGY = ARMOR_ENERGY_STRONG,
		ARMOR_BIO = ARMOR_BIO_STRONG,
		ARMOR_RAD = ARMOR_RAD_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)

/obj/item/clothing/suit/armor/aegis_ghost
	name = "stealth tactical armor"
	desc = "A synthetic armor made with stealth technology. 'Xeta-1' is emblazoned on the collar, and 'Black Ghosts' is sewed into the back of it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/suit/aegis_ghost_armor.dmi'
	body_parts_covered = SLOT_UPPER_BODY | SLOT_LOWER_BODY | SLOT_LEGS | SLOT_FEET | SLOT_ARMS | SLOT_HANDS
	cold_protection = SLOT_UPPER_BODY | SLOT_LOWER_BODY | SLOT_LEGS | SLOT_FEET | SLOT_ARMS | SLOT_HANDS
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
		ARMOR_ENERGY = ARMOR_ENERGY_STRONG,
		ARMOR_BIO = ARMOR_BIO_STRONG,
		ARMOR_RAD = ARMOR_RAD_RESISTANT,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)

/obj/item/clothing/suit/armor/aegis_heavy
	name = "combined heavy assault suit"
	desc = "A multi-layered composite armor suit with ballistic weave underpadding and a kevlar undersuit, fitted with it's own cooling unit and exoskeleton supports. 'Alpha-4' is emblazoned on the collar, and 'Last Line' is sewed into the back of it."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/mortensen/suit/aegis_lastline_armor.dmi'
	permeability_coefficient = 0
	gas_transfer_coefficient = 0
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_ARMS|SLOT_FEET|SLOT_LEGS|SLOT_HANDS
	cold_protection = SLOT_HEAD
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SHIELDED,
		ARMOR_BULLET = ARMOR_BALLISTIC_HEAVY,
		ARMOR_LASER = ARMOR_LASER_RIFLES,
		ARMOR_ENERGY = ARMOR_ENERGY_SHIELDED,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_SHIELDED,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED
		)