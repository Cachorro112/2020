/decl/hierarchy/outfit/job/security
	abstract_type = /decl/hierarchy/outfit/job/security
	l_ear = /obj/item/radio/headset/headset_sec
	gloves = /obj/item/clothing/gloves/soviet/duty
	shoes = /obj/item/clothing/shoes/soviet/utility
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/security/sergeantatarms
	name = "Job - Sergeant-at-Arms"
	uniform = /obj/item/clothing/jumpsuit/soviet/utility
	l_pocket = /obj/item/flash
	r_pocket = /obj/item/handcuffs
	id_type = /obj/item/card/id/security