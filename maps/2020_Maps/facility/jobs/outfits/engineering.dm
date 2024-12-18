/decl/hierarchy/outfit/job/engineering
	l_ear = /obj/item/radio/headset/headset_eng
	abstract_type = /decl/hierarchy/outfit/job/engineering
	outfit_flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL | OUTFIT_HAS_VITALS_SENSOR

/decl/hierarchy/outfit/job/engineering/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/engineering/eng_director
	name = "Job - Engineering Director"
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/jumpsuit/chief_engineer
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/engineering/head

/decl/hierarchy/outfit/job/engineering/engineer
	name = "Job - Engineer"
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/jumpsuit/engineer
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/t_scanner
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/engineering/engineer/hazard
	name = "Job - Hazardous Environments Engineer"
	head = /obj/item/clothing/head/hardhat/damage_control
	uniform = /obj/item/clothing/jumpsuit/hazard
	belt = /obj/item/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/t_scanner
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/engineering

/decl/hierarchy/outfit/job/engineering/technician
	name = "Job - IT Technician"
	uniform = /obj/item/clothing/jumpsuit/engineer
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/belt/utility/full
	gloves = /obj/item/clothing/gloves/insulated
	id_type = /obj/item/card/id/engineering

/obj/item/card/id/engineering
	name = "identification card"
	desc = "A card issued to engineering staff."
	detail_color = COLOR_SUN

/obj/item/card/id/engineering/head
	name = "identification card"
	desc = "A card which represents creativity and ingenuity."
	extra_details = list("goldstripe")