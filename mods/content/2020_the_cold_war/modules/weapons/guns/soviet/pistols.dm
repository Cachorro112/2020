/obj/item/gun/projectile/pistol/makarov
	name = "Makarov PMM"
	desc = "The a modern version of the Makarov Pistol, standard issue pistol of the Soviet Union the 1950's, was replaced by the MP443. Chambered in 9mm Makarov."
	icon = 'mods/content/2020_the_cold_war/icons/guns/makarov.dmi'
	load_method = MAGAZINE
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol/pmm
	allowed_magazines = /obj/item/ammo_magazine/pistol/pmm
	accuracy_power = 6
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/makarov/update_base_icon()
	if(ammo_magazine)
		icon_state = "[get_world_inventory_state()]"
	else
		icon_state = "[get_world_inventory_state()]-e"

/obj/item/gun/projectile/pistol/mp443
	name = "MP443"
	desc = "A Soviet modern pistol standard issue pistol of the Soviet Union in the 2000's, loaded on 9mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/mp443.dmi'
	load_method = MAGAZINE
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol/mp443
	allowed_magazines = /obj/item/ammo_magazine/pistol/mp443
	accuracy_power = 7
	safety_icon = null
	ammo_indicator = FALSE
	origin_tech = @'{"combat":3,"materials":3'

/obj/item/gun/projectile/pistol/mp443/update_base_icon()
	if(ammo_magazine)
		icon_state = "[get_world_inventory_state()]"
	else
		icon_state = "[get_world_inventory_state()]-e"
///////////Magazine////////////
/obj/item/ammo_magazine/pistol/pmm
	name = "PMM Makarov magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "pmm"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/mp443
	name = "MP443 magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "mp443"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 17
	multiple_sprites = 1