/decl/hierarchy/outfit/job/commanding_officer
	name = "Job - Commanding Officer"
	uniform = /obj/item/clothing/jumpsuit/soviet/service_command
	l_ear = /obj/item/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/soviet/service
	id_type = /obj/item/card/id/gold
	backpack_contents = list(/obj/item/box/ids = 1)

/decl/hierarchy/outfit/job/commanding_officer/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/backpack/messenger/com

/decl/hierarchy/outfit/job/commanding_officer/post_equip(var/mob/living/carbon/human/H)
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

/decl/hierarchy/outfit/job/deputy_commander
	name = "Job - Deputy Commander"
	uniform = /obj/item/clothing/jumpsuit/soviet/service
	l_ear = /obj/item/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/soviet/service
	id_type = /obj/item/card/id/silver
	backpack_contents = list(/obj/item/box/ids = 1)
