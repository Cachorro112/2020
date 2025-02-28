/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020
	name = "RIFLE"
	desc = "ZE FUCKING RIFLE, YOU SHOULD NOT SEE THIS!"
	material = /decl/material/solid/metal/steel
	matter = list(
		/decl/material/solid/metal/silver = MATTER_AMOUNT_REINFORCEMENT //Hum, i will research soon about the materials.
	)

/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/update_base_icon()
	if(ammo_magazine)
		icon_state = "[get_world_inventory_state()]-loaded"
	else
		icon_state = "[get_world_inventory_state()]-empty"