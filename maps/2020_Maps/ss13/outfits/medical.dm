/decl/outfit/job/medical
	abstract_type = /decl/outfit/job/medical

/decl/outfit/job/medical/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/outfit/job/medical/doctor
	name = "Job - Medical Doctor"
	uniform = /obj/item/clothing/jumpsuit/medical
	shoes = /obj/item/clothing/shoes/color/white
	suit = /obj/item/clothing/suit/toggle/labcoat
	hands = list(/obj/item/firstaid/adv)
	r_pocket = /obj/item/flashlight/pen
	l_pocket = /obj/item/radio
	id_type = /obj/item/card/id/medical

/decl/outfit/job/medical/med_researcher
	name = "Job - Medical Researcher"
	uniform = /obj/item/clothing/jumpsuit/medical
	shoes = /obj/item/clothing/shoes/color/white
	suit = /obj/item/clothing/suit/toggle/labcoat
	id_type = /obj/item/card/id/medical