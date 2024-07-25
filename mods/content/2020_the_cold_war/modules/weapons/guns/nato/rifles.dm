/obj/item/gun/projectile/automatic/assault_rifle/m16a4
	name = "M16A2"
	desc = "Iconic American Assault Rifle, uses 5.56 Ammo, this is a modified version of the Original M16."
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