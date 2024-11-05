/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/m16a4
	name = "M16A4"
	desc = "Iconic American Assault Rifle, uses 5.56 Ammo, this is a modified version of the Original M16, with a railed upper receiver and handguard."
	icon = 'mods/content/2020_the_cold_war/icons/guns/m16a4.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/stanag
	allowed_magazines = /obj/item/ammo_magazine/rifle/stanag
	caliber = 556
	auto_eject = 0
	accuracy = 1
	accuracy_power = 5
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, one_hand_penalty=9,  burst_accuracy=list(0,-1,-1),   dispersion=list(0.0, 0.6, 1.0))
	)

/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/c8
	name = "C8"
	desc = "A Canadian Colt C8 assault rifle, chambered in 5.56x45mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/c8.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/stanag
	allowed_magazines = /obj/item/ammo_magazine/rifle/stanag
	caliber = 556
	auto_eject = 0
	accuracy = 1
	accuracy_power = 6
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)

/*
/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/scarl
	name = "FN SCAR-L"
	desc = "A Belgian assault rifle, chambered in 5.56x45mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/scarl.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/stanag
	allowed_magazines = /obj/item/ammo_magazine/rifle/stanag
	caliber = 556
	auto_eject = 0
	accuracy = 1
	accuracy_power = 6
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)
*/
/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/p90 //Not a rifle but... no, i'am lazy, thats it. soon i make it a smg.
	name = "P90"
	desc = "A compact, rapid-fire defensive weapon, chambered in 5.7x28mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/p90.dmi'
	magazine_type = /obj/item/ammo_magazine/rifle/stanag
	allowed_magazines = /obj/item/ammo_magazine/rifle/stanag
	caliber = 57
	auto_eject = 0
	accuracy = 1
	accuracy_power = 7
	one_hand_penalty = 8
	firemodes = list(
		list(mode_name="semi auto",      burst=1,    fire_delay=null, one_hand_penalty=8,  burst_accuracy=null,            dispersion=null),
		list(mode_name="full auto",      burst=1,    fire_delay=0,    burst_delay=1,       one_hand_penalty=7,             burst_accuracy = list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0), autofire_enabled=1)
	)