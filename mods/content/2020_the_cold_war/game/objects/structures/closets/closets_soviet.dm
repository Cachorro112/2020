/obj/structure/closet/secure_closet/komandir
	name = "Commanding Officer locker"
	req_access = list(access_captain)
	closet_appearance = /decl/closet_appearance/secure_closet/command

/obj/structure/closet/secure_closet/komandir/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/captain, /obj/item/backpack/satchel/cap)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/captain, 50),
		/obj/item/clothing/suit/soviet/service_command,
		/obj/item/clothing/suit/soviet/dress_command,
		/obj/item/clothing/head/soviet/service_command,
		/obj/item/clothing/jumpsuit/soviet/service_command,
		/obj/item/clothing/jumpsuit/soviet/service_command/skirt,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/shoes/soviet/service,
		/obj/item/radio/headset/heads/captain,
		/obj/item/clothing/gloves/soviet/duty,
		/obj/item/telebaton,
		/obj/item/gun/projectile/pistol/makarov,
		/obj/item/ammo_magazine/pistol/pmm = 2,
	)

/obj/structure/closet/secure_closet/deputy_commander
	name = "Deputy Commander locker"
	closet_appearance = /decl/closet_appearance/secure_closet/command/hop
	req_access = list(access_hop)

/obj/structure/closet/secure_closet/deputy_commander/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/gloves/soviet/duty,
		/obj/item/clothing/shoes/soviet/service,
		/obj/item/clothing/head/soviet/service,
		/obj/item/clothing/suit/soviet/service_enlisted,
		/obj/item/clothing/suit/soviet/dress_officer,
		/obj/item/clothing/jumpsuit/soviet/service,
		/obj/item/clothing/jumpsuit/soviet/service_command/skirt,
		/obj/item/box/ids,
		/obj/item/flash
	)

/obj/structure/closet/secure_closet/security_soviet
	name = "Sergeant-at-Arms's locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/security

/obj/structure/closet/secure_closet/security_soviet/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/security, /obj/item/backpack/satchel/sec)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/sec, 50),
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/headset_sec,
		/obj/item/belt/holster/security,
		/obj/item/flash,
		/obj/item/chems/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/stack/tape_roll/barricade_tape/police,
		/obj/item/clothing/webbing/vest/black,
	)

//////////////Clothing///////////
/obj/structure/closet/wardrobe/soviet_fleet
	name = "soviet fleet utility wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/wardrobe/soviet_fleet/WillContain()
	return list(
		/obj/item/clothing/jumpsuit/soviet/utility  = 5,
		/obj/item/clothing/head/soviet/beret = 5,
		/obj/item/clothing/gloves/soviet/duty = 5,
		/obj/item/clothing/shoes/soviet/utility = 5,
		/obj/item/clothing/suit/soviet/utility = 5,
	)

/obj/structure/closet/wardrobe/soviet_service
	name = "soviet fleet service wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/wardrobe/soviet_service/WillContain()
	return list(
		/obj/item/clothing/jumpsuit/soviet/service  = 5,
		/obj/item/clothing/jumpsuit/soviet/service/skirt = 5,
		/obj/item/clothing/head/soviet/service = 5,
		/obj/item/clothing/gloves/soviet/duty = 5,
		/obj/item/clothing/shoes/soviet/service = 5,
		/obj/item/clothing/suit/soviet/service_enlisted = 5,
	)