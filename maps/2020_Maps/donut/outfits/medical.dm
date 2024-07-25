/decl/hierarchy/outfit/job/medical
	abstract_type = /decl/hierarchy/outfit/job/medical

/decl/hierarchy/outfit/job/medical/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/medical/cmo
	name = "Job - Chief Medical Officer"
	l_pocket = /obj/item/radio
	uniform = /obj/item/clothing/jumpsuit/chief_medical_officer
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/color/brown
	hands = list(/obj/item/firstaid/adv)
	r_pocket = /obj/item/flashlight/pen
	id_type = /obj/item/card/id/medical/head

/decl/hierarchy/outfit/job/medical/doctor
	name = "Job - Medical Doctor"
	uniform = /obj/item/clothing/jumpsuit/medical
	shoes = /obj/item/clothing/shoes/color/white
	suit = /obj/item/clothing/suit/toggle/labcoat
	hands = list(/obj/item/firstaid/adv)
	r_pocket = /obj/item/flashlight/pen
	l_pocket = /obj/item/radio
	id_type = /obj/item/card/id/medical