/obj/item/ammo_casing/mm556
	desc = "A standard NATO rifle bullet casing. used on most NATO weapons"
	caliber = 556
	projectile_type = /obj/item/projectile/bullet/rifle
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_COPPER

/obj/item/ammo_magazine/rifle/stanag
	name = "30r STANAG magazine"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/stanag.dmi'
	icon_state = "stanag"
	mag_type = MAGAZINE
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/box/mm556
	name = "ammunition box (5.56mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/boxes.dmi'
	icon_state = "556"
	origin_tech = @'{"combat":2}'
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556
	max_ammo = 60

/obj/item/ammo_magazine/box/mm556/empty
	initial_ammo = 0