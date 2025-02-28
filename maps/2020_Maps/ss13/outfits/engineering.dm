/decl/hierarchy/outfit/job/engineering
	abstract_type = /decl/hierarchy/outfit/job/engineering
	l_ear = /obj/item/radio/headset/headset_eng
	outfit_flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR

/decl/hierarchy/outfit/job/engineering/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/engineering/engineer
	name = "Job - Engineer"
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/jumpsuit/engineer
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/t_scanner
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/engineering/technician
	name = "Job - Technician"
	uniform = /obj/item/clothing/jumpsuit/technician
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/insulated
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/engineering/atmos
	name = "Job - Atmospheric technician"
	uniform = /obj/item/clothing/jumpsuit/atmospheric_technician
	belt = /obj/item/belt/utility/atmostech
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/t_scanner
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/qm
	name = "Job - Quartermaster"
	uniform = /obj/item/clothing/jumpsuit/cargo
	shoes = /obj/item/clothing/shoes/color/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	hands = list(/obj/item/clipboard)
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/engineering/mining
	name = "Job - Miner"
	uniform = /obj/item/clothing/jumpsuit/miner
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/card/id/engineering
	backpack_contents = list(/obj/item/crowbar = 1)
	outfit_flags = OUTFIT_HAS_BACKPACK | OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR