/obj/item/clothing/suit/armor/pcarrier/nanotrasen_light
	starting_accessories = list(
		/obj/item/clothing/armor_attachment/plate,
		/obj/item/clothing/armor_attachment/tag/nt
	)

/obj/item/clothing/suit/armor/pcarrier/nanotrasen_medium
	starting_accessories = list(
		/obj/item/clothing/armor_attachment/plate/medium,
		/obj/item/clothing/webbing/pouches,
		/obj/item/clothing/armor_attachment/tag/nt
	)

//Terran
/obj/item/clothing/suit/armor/terran
	name = "Terran Organization armored vest"
	desc = "A black standard issue lightweight armored vest, denoting the initials of the Terran Organization."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/suits/terran_armor.dmi'
	body_parts_covered = SLOT_UPPER_BODY|SLOT_LOWER_BODY
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
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