/decl/hierarchy/outfit/job/security
	abstract_type = /decl/hierarchy/outfit/job/security
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/security/hos
	name = "Job - Head of security"
	r_pocket = /obj/item/radio
	uniform = /obj/item/clothing/jumpsuit/head_of_security/nt
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/nt_security/hos
	suit = /obj/item/clothing/suit/armor/hos
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/security/head
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/detective
	name = "Job - Detective"
	head = /obj/item/clothing/head/det
	uniform = /obj/item/clothing/pants/slacks/outfit/detective
	suit = /obj/item/clothing/suit/det_trench
	shoes = /obj/item/clothing/shoes/dress
	hands = list(/obj/item/briefcase/crimekit)
	id_type = /obj/item/card/id/security
	r_pocket = /obj/item/radio
	backpack_contents = list(/obj/item/box/evidence = 1)

/decl/hierarchy/outfit/job/security/detective/Initialize()
	. = ..()
	backpack_overrides.Cut()

/decl/hierarchy/outfit/job/security/officer
	name = "Job - Security Officer"
	uniform = /obj/item/clothing/jumpsuit/security/nt
	suit = /obj/item/clothing/suit/armor/pcarrier/nanotrasen_light
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/helmet
	gloves = /obj/item/clothing/gloves/thick
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/security
	r_pocket = /obj/item/radio