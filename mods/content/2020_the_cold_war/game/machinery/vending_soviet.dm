/obj/machinery/vending/soviet_uniform
	name = "Soviet uniform dispenser"
	desc = "It dispense soviet fleet issued clothing."
	vend_delay = 5
	icon_state = "uniform"
	icon_deny = "uniform-deny"
	icon_vend = "uniform-vend"
	markup = 0
	base_type = /obj/machinery/vending/soviet_uniform
	products = list(
		/obj/item/clothing/jumpsuit/soviet/utility = 15,
		/obj/item/clothing/jumpsuit/soviet/utility/skirt = 15,
		/obj/item/clothing/jumpsuit/soviet/combat = 15,
		/obj/item/clothing/jumpsuit/soviet/combat/skirt = 15,
		/obj/item/clothing/jumpsuit/soviet/service = 15,
		/obj/item/clothing/jumpsuit/soviet/service/skirt = 15,
		/obj/item/clothing/suit/soviet/utility = 15,
		/obj/item/clothing/suit/soviet/service_enlisted = 15,
		/obj/item/clothing/suit/soviet/dress_enlisted = 5,
		/obj/item/clothing/shoes/soviet/utility = 15,
		/obj/item/clothing/shoes/soviet/service = 15,
		/obj/item/clothing/head/soviet/beret = 15,
		/obj/item/clothing/head/soviet/service = 15,
		/obj/item/clothing/gloves/soviet/duty = 15
	)

/obj/machinery/vending/soviet_uniform_command
	name = "Soviet command uniform dispenser"
	desc = "It dispense soviet fleet issued clothing."
	vend_delay = 5
	icon_state = "uniform"
	icon_deny = "uniform-deny"
	icon_vend = "uniform-vend"
	markup = 0
	base_type = /obj/machinery/vending/soviet_uniform_command
	products = list(
		/obj/item/clothing/jumpsuit/soviet/service_command = 10,
		/obj/item/clothing/jumpsuit/soviet/service_command/skirt = 10,
		/obj/item/clothing/suit/soviet/service_command = 10,
		/obj/item/clothing/suit/soviet/dress_officer = 10,
		/obj/item/clothing/suit/soviet/dress_command = 10,
		/obj/item/clothing/head/soviet/service_command = 10,
		/obj/item/clothing/gloves/soviet/duty = 10
	)