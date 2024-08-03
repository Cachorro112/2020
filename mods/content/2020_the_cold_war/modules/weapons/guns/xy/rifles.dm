/obj/item/gun/projectile/automatic/assault_rifle/seras_victoria
	name = "Seras Victoria"
	desc = "a Assault Rifle Developed by Mortensen Organization, designed to be used against Nether Biological Entities using the 5.56 SV, can still used against other humans."
	icon = 'mods/content/2020_the_cold_war/icons/guns/seras_victoria.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/stanag/sv
	allowed_magazines = /obj/item/ammo_magazine/rifle/stanag
	caliber = 556
	auto_eject = 0
	accuracy = 1
	accuracy_power = 5
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)

/obj/item/ammo_casing/mm556sv
	desc = "A standard NATO rifle bullet casing. this one has a pure silver bullet, used on the rifle Seras Victoria"
	caliber = 556
	projectile_type = /obj/item/projectile/bullet/rifle/sv
	material = /decl/material/solid/metal/silver
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_SILVER

/obj/item/ammo_magazine/rifle/stanag/sv
	name = "30r STANAG SV magazine"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/rifle_magazines.dmi'
	icon_state = "stanag"
	mag_type = MAGAZINE
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556sv
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/box/mm556sv
	name = "ammunition box (5.56mm SV)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/boxes.dmi'
	icon_state = "762"
	origin_tech = @'{"combat":2}'
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556sv
	max_ammo = 60

/obj/item/ammo_magazine/box/mm556sv/empty
	initial_ammo = 0