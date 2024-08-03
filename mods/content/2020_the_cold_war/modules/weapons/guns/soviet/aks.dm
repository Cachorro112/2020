/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak47
	name = "AK-47"
	desc = "Iconic Soviet assault rifle, also know as AKM. chambered in 7.62mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/ak47.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/mm762
	allowed_magazines = /obj/item/ammo_magazine/rifle/mm762
	caliber = 762
	auto_eject = 0
	accuracy = 1
	accuracy_power = 5
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)

/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74
	name = "AK-74"
	desc = "a Soviet assault rifle, was used as the main soviet gun for a long time. chambered in 5.65mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/ak74.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/mm565
	allowed_magazines = /obj/item/ammo_magazine/rifle/mm565
	caliber = 565
	auto_eject = 0
	accuracy = 1
	accuracy_power = 6
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)

/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74/tactical
	name = "AK-74U"
	desc = "Soviet assault rifle version of the AK-74, with modifications for better performace. chambered in 5.65mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/ak74u.dmi'
	auto_eject = 0
	accuracy = 2
	accuracy_power = 7
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)

/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak12
	name = "AK-12"
	desc = "A Soviet fifth generation Modern AK variant, chambered in 5.45x39mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/ak12.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/mm565
	allowed_magazines = /obj/item/ammo_magazine/rifle/mm565
	caliber = 565
	auto_eject = 0
	accuracy = 2
	accuracy_power = 8
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)


/////////////////////////Magazines//////////////////////////
/obj/item/ammo_magazine/rifle/mm762
	name = "30r 7.62 magazine"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/762x39_magazine.dmi'
	icon_state = "ak47"
	mag_type = MAGAZINE
	caliber = 762
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm762
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle/mm565
	name = "30r 5.65 magazine"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/565x39_magazine.dmi'
	icon_state = "ak74"
	mag_type = MAGAZINE
	caliber = 565
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm565
	max_ammo = 30
	multiple_sprites = 1