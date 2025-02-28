/decl/hierarchy/outfit/job/logistic
	l_ear = /obj/item/radio/headset/headset_cargo
	abstract_type = /decl/hierarchy/outfit/job/logistic

/decl/hierarchy/outfit/job/logistic/logistic_officer
	name = "Job - Logistic Officer"
	uniform = /obj/item/clothing/jumpsuit/facility/logistic/officer
	shoes = /obj/item/clothing/shoes/color/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	hands = list(/obj/item/clipboard)
	id_type = /obj/item/card/id/cargo/head
	pda_type = /obj/item/modular_computer/pda/cargo

/obj/item/card/id/cargo/head
	name = "identification card"
	desc = "A card which represents service and planning."
	extra_details = list("goldstripe")

/decl/hierarchy/outfit/job/logistic/logistic_spec
	name = "Job - Logistic Specialist"
	uniform = /obj/item/clothing/jumpsuit/facility/logistic
	id_type = /obj/item/card/id/cargo
	shoes = /obj/item/clothing/shoes/color/brown
	pda_type = /obj/item/modular_computer/pda/cargo