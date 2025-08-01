/obj/item/rig/syndicate_leader
	name = "dark crimson combat RIG control module"
	desc = "A dark red hardsuit with heavy armoured plates."
	icon = 'mods/2020_mods/2020_main/icons/clothing/syndicate/rig/syndi_leader_rig_back.dmi'
	suit_type = "dark crimson combat RIG"
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_VERY_HIGH,
		ARMOR_BULLET = ARMOR_BALLISTIC_AP,
		ARMOR_LASER = ARMOR_LASER_MAJOR,
		ARMOR_ENERGY = ARMOR_ENERGY_MINOR,
		ARMOR_BOMB = ARMOR_BOMB_SHIELDED,
		ARMOR_BIO = ARMOR_BIO_SHIELDED,
		ARMOR_RAD = ARMOR_RAD_SMALL
		)

	online_slowdown = 3
	offline_slowdown = 4


	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	min_pressure_protection = 0
	helmet = /obj/item/clothing/head/helmet/space/rig/syndicate_leader
	gloves = /obj/item/clothing/gloves/rig/syndicate_leader
	boots =  /obj/item/clothing/shoes/rig/syndicate_leader
	chest =  /obj/item/clothing/suit/space/rig/syndicate_leader

/obj/item/rig/syndicate_leader/empty
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
	)

/obj/item/clothing/gloves/rig/syndicate_leader
	icon = 'mods/2020_mods/2020_main/icons/clothing/syndicate/rig/syndi_leader_rig_gloves.dmi'
/obj/item/clothing/head/helmet/space/rig/syndicate_leader
	icon = 'mods/2020_mods/2020_main/icons/clothing/syndicate/rig/syndi_leader_rig_helmet.dmi'
/obj/item/clothing/shoes/rig/syndicate_leader
	icon = 'mods/2020_mods/2020_main/icons/clothing/syndicate/rig/syndi_leader_rig_boots.dmi'
/obj/item/clothing/suit/space/rig/syndicate_leader
	icon = 'mods/2020_mods/2020_main/icons/clothing/syndicate/rig/syndi_leader_rig.dmi'