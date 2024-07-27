// Secure Closets
/obj/structure/closet/secure_closet/fleet_commander
	name = "commanding officer's locker"
	req_access = list(access_captain)
	closet_appearance = /decl/closet_appearance/secure_closet/command

/obj/structure/closet/secure_closet/fleet_commander/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/captain, /obj/item/backpack/satchel/cap)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/captain, 50),
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/under/fleet/service/command,
		/obj/item/clothing/under/fleet/service/command/skirt,
		/obj/item/clothing/suit/jacket/fleet/service/command,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater/command,
		/obj/item/clothing/suit/jacket/fleet/dress/command,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/command,
		/obj/item/clothing/head/beret/fleet/dress/command,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/heads/captain,
		/obj/item/gun/projectile/pistol,
		/obj/item/ammo_magazine/pistol,
		/obj/item/telebaton,
	)

/obj/structure/closet/secure_closet/fleet_exo
	name = "executive officer's locker"
	closet_appearance = /decl/closet_appearance/secure_closet/command/hop
	req_access = list(access_hop)

/obj/structure/closet/secure_closet/fleet_exo/WillContain()
	return list(
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/under/fleet/service/officer,
		/obj/item/clothing/under/fleet/service/officer/skirt,
		/obj/item/clothing/suit/jacket/fleet/service/officer,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater/officer,
		/obj/item/clothing/suit/jacket/fleet/dress/officer,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/command,
		/obj/item/clothing/head/beret/fleet/dress,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/heads/hop,
		/obj/item/box/ids = 2,
		/obj/item/flash,
	)

/obj/structure/closet/secure_closet/fleet_eoow
	name = "EOOW's locker"
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/ce
	req_access = list(access_ce)

/obj/structure/closet/secure_closet/fleet_eoow/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(
			/obj/item/clothing/webbing/vest/brown = 70,
			/obj/item/clothing/webbing = 30
		)),
		new/datum/atom_creator/weighted(list(
			/obj/item/backpack/industrial,
			/obj/item/backpack/satchel/eng
		)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/eng, 50),
		/obj/item/blueprints,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/gloves/insulated,
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/under/fleet/service/officer,
		/obj/item/clothing/under/fleet/service/officer/skirt,
		/obj/item/clothing/suit/jacket/fleet/service/officer,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater/officer,
		/obj/item/clothing/suit/jacket/fleet/dress/officer,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/engineering,
		/obj/item/clothing/head/beret/fleet/dress,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/radio/headset/heads/ce,
		/obj/item/toolbox/mechanical,
		/obj/item/clothing/suit/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/multitool,
		/obj/item/flash,
		/obj/item/stack/tape_roll/barricade_tape/engineering,
		/obj/item/crowbar/brace_jack,
		/obj/item/belt/utility/full
	)

/obj/structure/closet/secure_closet/fleet_ro
	name = "research officer's locker"
	req_access = list(access_rd)
	closet_appearance = /decl/closet_appearance/secure_closet/rd

/obj/structure/closet/secure_closet/fleet_ro/WillContain()
	return list(
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/under/fleet/service/officer,
		/obj/item/clothing/under/fleet/service/officer/skirt,
		/obj/item/clothing/suit/jacket/fleet/service/officer,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater/officer,
		/obj/item/clothing/suit/jacket/fleet/dress/officer,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/science,
		/obj/item/clothing/head/beret/fleet/dress,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/suit/bio_suit/scientist = 2,
		/obj/item/clothing/head/bio_hood/scientist = 2,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/clothing/shoes/color/white,
		/obj/item/clothing/gloves/latex,
		/obj/item/radio/headset/heads/rd,
		/obj/item/clothing/mask/gas,
		/obj/item/flash,
		/obj/item/clipboard,
	)

/obj/structure/closet/secure_closet/fleet_mat
	name = "master-at-arm's locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/security

/obj/structure/closet/secure_closet/fleet_mat/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/security, /obj/item/backpack/satchel/sec)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/sec, 50),
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/security,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/headset_sec,
		/obj/item/belt/holster/security,
		/obj/item/flash,
		/obj/item/chems/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/stack/tape_roll/barricade_tape/police,
		/obj/item/hailer,
		/obj/item/clothing/webbing/vest/black,
		/obj/item/gun/energy/taser,
		/obj/item/holowarrant,
	)

/obj/structure/closet/secure_closet/fleet_researcher
	name = "researcher's locker"
	req_access = list(list(access_tox,access_tox_storage))
	closet_appearance = /decl/closet_appearance/secure_closet/expedition/science

/obj/structure/closet/secure_closet/fleet_researcher/WillContain()
	return list(
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/science,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/item/clipboard
	)

/obj/structure/closet/secure_closet/fleet_med_personnel
	name = "medical doctor's locker"
	req_access = list(access_medical_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/medical/alt

/obj/structure/closet/secure_closet/fleet_med_personnel/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack/medic, /obj/item/backpack/satchel/med)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/med, 50),
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/medical,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/suit/toggle/labcoat,
		/obj/item/clothing/suit/jacket/first_responder,
		/obj/item/radio/headset/headset_med,
		/obj/item/stack/tape_roll/barricade_tape/medical,
		/obj/item/belt/medical/emt,
		RANDOM_SCRUBS,
		RANDOM_SCRUBS
	)

/obj/structure/closet/secure_closet/fleet_quartermaster
	name = "supply technician's locker"
	req_access = list(access_qm)
	closet_appearance = /decl/closet_appearance/secure_closet/cargo/qm

/obj/structure/closet/secure_closet/fleet_quartermaster/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/backpack = 75,  /obj/item/backpack/satchel/grey = 25)),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag, 25),
		/obj/item/radio/headset/headset_cargo,
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/supply,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/clothing/suit/fire,
		/obj/item/tank/emergency/oxygen,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
	)

/obj/structure/closet/secure_closet/fleet_engineering_personal
	name = "engineer's locker"
	req_access = list(access_engine_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/fleet_engineering_personal/WillContain()
	return list(
		new/datum/atom_creator/weighted(
			list(
				/obj/item/clothing/webbing/vest/brown = 70,
				/obj/item/clothing/webbing = 30
			)
		),
		new/datum/atom_creator/weighted(
			list(
				/obj/item/backpack/industrial,
				/obj/item/backpack/satchel/eng
			)
		),
		new/datum/atom_creator/simple(/obj/item/backpack/dufflebag/eng, 50),
		/obj/item/clothing/under/fleet,
		/obj/item/clothing/under/fleet/combat,
		/obj/item/clothing/head/soft/fleet,
		/obj/item/clothing/head/fleet/utility,
		/obj/item/clothing/head/beret/fleet/engineering,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/clothing/shoes/jackboots/duty,
		/obj/item/toolbox/mechanical,
		/obj/item/radio/headset/headset_eng,
		/obj/item/clothing/suit/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
		/obj/item/stack/tape_roll/barricade_tape/engineering,
		/obj/item/belt/utility/full
	)

//Wardobres
/obj/structure/closet/wardrobe/fleet
	name = "fleet common wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/fleet/WillContain()
	return list(
		/obj/item/clothing/under/fleet = 5,
		/obj/item/clothing/under/fleet/combat = 5,
		/obj/item/clothing/under/fleet/service = 5,
		/obj/item/clothing/under/fleet/service/skirt = 5,
		/obj/item/clothing/suit/jacket/fleet/service = 5,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater = 5,
		/obj/item/clothing/suit/jacket/fleet/dress = 5,
		/obj/item/clothing/gloves/thick/duty = 5,
		/obj/item/clothing/shoes/jackboots/duty = 5,
		/obj/item/clothing/head/soft/fleet = 5,
		/obj/item/clothing/head/fleet/utility = 5,
		/obj/item/clothing/head/beret/fleet = 5,
		/obj/item/clothing/head/fleet/dress/garrison = 5,
	)

/obj/structure/closet/wardrobe/fleet_officer
	name = "fleet officer wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/wardrobe/fleet_officer/WillContain()
	return list(
		/obj/item/clothing/under/fleet = 5,
		/obj/item/clothing/under/fleet/combat = 5,
		/obj/item/clothing/under/fleet/service/officer = 5,
		/obj/item/clothing/under/fleet/service/officer/skirt = 5,
		/obj/item/clothing/suit/jacket/fleet/service/officer = 5,
		/obj/item/clothing/suit/jacket/fleet/fleet_sweater/officer = 5,
		/obj/item/clothing/suit/jacket/fleet/dress/officer = 5,
		/obj/item/clothing/gloves/thick/duty = 5,
		/obj/item/clothing/shoes/jackboots/duty = 5,
		/obj/item/clothing/head/soft/fleet = 5,
		/obj/item/clothing/head/fleet/utility = 5,
		/obj/item/clothing/head/beret/fleet = 5,
		/obj/item/clothing/head/fleet/dress = 5,
	)