/decl/hierarchy/outfit/job/security
	abstract_type = /decl/hierarchy/outfit/job/security
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/security/commander
	name = "Job - Guard Commander"
	uniform = /obj/item/clothing/jumpsuit/security/facility/guardcom
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/facility/guard/commander
	suit = /obj/item/clothing/suit/armor/facility/guard_commander
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/security/head
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/intel
	name = "Job - Internal Security Agent"
	head = /obj/item/clothing/head/det
	uniform = /obj/item/clothing/jumpsuit/security/facility/isd
	suit = /obj/item/clothing/suit/armor/facility/isd
	shoes = /obj/item/clothing/shoes/dress
	holster = /obj/item/gun/projectile/pistol/browning_hp
	id_type = /obj/item/card/id/security
	backpack_contents = list(/obj/item/ammo_magazine/pistol/browninghp = 1)

/decl/hierarchy/outfit/job/security/detective/Initialize()
	. = ..()
	backpack_overrides.Cut()

/decl/hierarchy/outfit/job/security/guard
	name = "Job - Guard"
	uniform = /obj/item/clothing/jumpsuit/security/facility
	suit = /obj/item/clothing/suit/armor/facility/guard
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/helmet/facility/security
	gloves = /obj/item/clothing/gloves/thick
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/security

/obj/item/card/id/security
	name = "identification card"
	desc = "A card issued to security staff."
	color = COLOR_OFF_WHITE
	detail_color = COLOR_MAROON

/obj/item/card/id/security/head
	name = "identification card"
	desc = "A card which represents honor and protection."
	extra_details = list("goldstripe")
