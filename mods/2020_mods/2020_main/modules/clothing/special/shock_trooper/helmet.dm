/obj/item/clothing/head/helmet/stelhelm
	name = "MK 4 Stahlhelm"
	desc = "It's a helmet grey helmet, used long ago, this one is made of plasteel."
	icon = 'mods/2020_mods/2020_main/icons/clothing/europe/st/helmet.dmi'
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_MAJOR,
		ARMOR_BULLET = ARMOR_BALLISTIC_RIFLE,
		ARMOR_LASER = ARMOR_LASER_RIFLES,
		ARMOR_ENERGY = ARMOR_ENERGY_STRONG,
		ARMOR_BOMB = ARMOR_BOMB_RESISTANT
		)
	siemens_coefficient = 0.6
	material = /decl/material/solid/metal/plasteel
	origin_tech = @'{"materials":3,"engineering":3,"combat":4}'