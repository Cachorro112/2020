/decl/hierarchy/outfit/job/captain
	name = "Job - Captain"
	head = /obj/item/clothing/head/nt_caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/jumpsuit/captain_green
	shoes = /obj/item/clothing/shoes/color/brown
	id_type = /obj/item/card/id/gold
	backpack_contents = list(/obj/item/box/ids = 1)
	r_pocket = /obj/item/radio

/decl/hierarchy/outfit/job/captain/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/backpack/messenger/com

/decl/hierarchy/outfit/job/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.get_age() > 49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.get_equipped_item(slot_w_uniform_str)
		if(uniform)
			var/obj/item/clothing/medal/gold/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/hop
	name = "Job - Head of Personnel"
	uniform = /obj/item/clothing/jumpsuit/head_of_personnel
	r_pocket = /obj/item/radio
	shoes = /obj/item/clothing/shoes/color/brown
	id_type = /obj/item/card/id/silver
	backpack_contents = list(/obj/item/box/ids = 1)
