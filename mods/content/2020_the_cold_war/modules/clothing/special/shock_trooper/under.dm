/obj/item/clothing/jumpsuit/shock_trooper
	name = "Shock Trooper Uniform"
	desc = "a Grey Uniform used by the European Elite Forces, the Shock Troopers."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/europe/st/uniform.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_RESISTANT,
		ARMOR_BULLET = ARMOR_BALLISTIC_RESISTANT,
		ARMOR_LASER = ARMOR_LASER_MAJOR
		)
	siemens_coefficient = 0.9
	matter = list(/decl/material/solid/metal/plasteel = MATTER_AMOUNT_TRACE)

/obj/item/clothing/jumpsuit/shock_trooper/officer
	name = "Shock Trooper Officer Uniform"
	desc = "a Black Uniform used by the Officials of the European Elite Forces, the Shock Troopers."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/europe/st/uniform_officer.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_RIFLES
		)
	matter = list(/decl/material/solid/metal/plasteel = MATTER_AMOUNT_TRACE)
	siemens_coefficient = 0.9