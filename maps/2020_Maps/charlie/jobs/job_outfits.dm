/obj/item/card/id/engineering
	name = "identification card"
	desc = "A card issued to engineering staff."
	detail_color = COLOR_SUN

/obj/item/card/id/medical
	name = "identification card"
	desc = "A card issued to medical staff."
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/science
	name = "identification card"
	desc = "A card issued to science staff."
	detail_color = COLOR_PALE_PURPLE_GRAY

/obj/item/card/id/security
	name = "identification card"
	desc = "A card issued to security staff."
	color = COLOR_OFF_WHITE
	detail_color = COLOR_MAROON

/////////Actual Outfits
/decl/outfit/job/assistant
	id_type = /obj/item/card/id/civilian
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/jumpsuit/grey

/decl/outfit/job/captain
	name = "Job - Captain"
	head = /obj/item/clothing/head/nt_caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/jumpsuit/captain_green
	l_ear = /obj/item/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/color/brown
	id_type = /obj/item/card/id/gold
	backpack_contents = list(/obj/item/box/ids = 1)

/decl/outfit/job/captain/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/backpack/messenger/com

/decl/outfit/job/captain/post_equip(var/mob/living/human/H)
	..()
	if(H.get_age() > 49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.get_equipped_item(slot_w_uniform_str)
		if(uniform)
			var/obj/item/clothing/medal/gold/medal = new
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/outfit/job/engineer
	name = "Job - Engineer"
	head = /obj/item/clothing/head/hardhat
	l_ear = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/jumpsuit/engineer
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/t_scanner
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/engineering
	outfit_flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR

/decl/outfit/outfit/job/engineer/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/outfit/job/doctor
	name = "Job - Medical Doctor"
	uniform = /obj/item/clothing/jumpsuit/medical
	shoes = /obj/item/clothing/shoes/color/white
	suit = /obj/item/clothing/suit/toggle/labcoat
	hands = list(/obj/item/firstaid/adv)
	r_pocket = /obj/item/flashlight/pen
	l_pocket = /obj/item/radio
	id_type = /obj/item/card/id/medical

/decl/outfit/job/doctor/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/outfit/job/scientist
	name = "Job - Scientist"
	uniform = /obj/item/clothing/jumpsuit/white
	l_ear = /obj/item/radio/headset/headset_sci
	id_type = /obj/item/card/id/science
	shoes = /obj/item/clothing/shoes/color/white
	suit = /obj/item/clothing/suit/toggle/labcoat/science

/decl/outfit/job/officer
	name = "Job - Security Officer"
	l_ear = /obj/item/radio/headset/headset_sec
	uniform = /obj/item/clothing/jumpsuit/security
	suit = /obj/item/clothing/suit/armor/vest/nanotrasen
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/helmet
	gloves = /obj/item/clothing/gloves/thick
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/security
	r_pocket = /obj/item/radio
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/outfit/job/officer/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/outfit/job/mining
	name = "Job - Miner"
	l_ear = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/jumpsuit/miner
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/card/id/engineering
	backpack_contents = list(/obj/item/crowbar = 1)
	outfit_flags = OUTFIT_HAS_BACKPACK | OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR

/decl/outfit/outfit/job/mining/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING