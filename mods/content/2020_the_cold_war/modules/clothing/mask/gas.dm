/obj/item/clothing/mask/gas
	icon = 'icons/clothing/mask/gas_mask_alt.dmi'
	icon_state = ICON_STATE_WORLD

/obj/item/clothing/mask/gas/terran
	name = "Terran Organization tactical gas mask"
	desc = "A glass gas mask that block all vision towards the person's identity. Can be connected to an air supply, this one is designed for the Terran Organization Forces."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/terran/mask/gas.dmi'
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	body_parts_covered = SLOT_FACE|SLOT_EYES
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SMALL,
		ARMOR_BULLET = ARMOR_BALLISTIC_SMALL,
		ARMOR_BIO = ARMOR_BIO_STRONG,
		ARMOR_RAD = ARMOR_RAD_SMALL
		)

/obj/item/clothing/mask/gas/syndicate
	name = "Syndicate tactical gas mask"
	desc = "A tactical gas mask than can strike fear through those it who see it. Can be connected to an air supply, this one is designed for the Syndicate."
	icon = 'mods/content/2020_the_cold_war/icons/clothing/syndicate/mask/syndi_gasmask.dmi'
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	body_parts_covered = SLOT_FACE|SLOT_EYES
	armor = list(
		ARMOR_MELEE = ARMOR_MELEE_SMALL,
		ARMOR_BULLET = ARMOR_BALLISTIC_SMALL,
		ARMOR_BIO = ARMOR_BIO_STRONG,
		ARMOR_RAD = ARMOR_RAD_SMALL
		)

