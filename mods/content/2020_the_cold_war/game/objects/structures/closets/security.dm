/obj/structure/closet/secure_closet/captains_new
	name = "captain's locker"
	req_access = list(access_captain)
	closet_appearance = /decl/closet_appearance/secure_closet/command

/obj/structure/closet/secure_closet/captains_new/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/captain, /obj/item/backpack/satchel/cap)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/captain, 50),
		/obj/item/clothing/jumpsuit/captain_green,
		/obj/item/clothing/jumpsuit/captain_green_skirt,
		/obj/item/clothing/head/nt_caphat,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/shoes/color/brown,
		/obj/item/radio/headset/heads/captain,
		/obj/item/clothing/gloves/captain,
		/obj/item/gun/projectile/pistol,
		/obj/item/ammo_magazine/pistol,
		/obj/item/ammo_magazine/pistol,
		/obj/item/telebaton,
		/obj/item/clothing/head/nt_caphat/cap
	)

/obj/structure/closet/secure_closet/hop_new
	name = "head of personnel's locker"
	closet_appearance = /decl/closet_appearance/secure_closet/command/hop
	req_access = list(access_hop)

/obj/structure/closet/secure_closet/hop_new/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/heads/hop,
		/obj/item/box/ids = 2,
		/obj/item/flash,
		/obj/item/clothing/jumpsuit/head_of_personnel,
		/obj/item/clothing/dress/hop,
		/obj/item/clothing/dress/hr,
		/obj/item/clothing/shoes/color/brown,
		/obj/item/clothing/shoes/color/black,
		/obj/item/clothing/shoes/craftable,
		/obj/item/clothing/shoes/color/white,
		/obj/item/clothing/head/caphat/hop
	)

