/obj/structure/closet/emcloset_simple
	name = "emergency closet"
	desc = "It's a storage unit for emergency breathmasks and o2 tanks."
	icon_state = "emergency"
	icon_closed = "emergency"
	icon_opened = "emergencyopen"

/obj/structure/closet/emcloset_simple/WillContain()
	return list(
		/obj/item/clothing/mask/breath/scba = 3,
		/obj/item/tank/emergency/oxygen = 3,
		/obj/item/toolbox/emergency
		)