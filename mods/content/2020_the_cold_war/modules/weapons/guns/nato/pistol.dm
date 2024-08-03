/obj/item/gun/projectile/pistol/glock17
	name = "Glock 17"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon = 'mods/content/2020_the_cold_war/icons/guns/glock17.dmi'
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol/g17
	accuracy_power = 6
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/glock17/update_base_icon()
	if(ammo_magazine)
		icon_state = "[world]"
	else
		icon_state = "[world]-e"

/obj/item/gun/projectile/pistol/glock17/enforcer
	name = "Enforcer"
	desc = "A modified version of the Glock 17 made by NanoTrasen, loaded on 9x19mm."
	accuracy_power = 6.5

/obj/item/gun/projectile/pistol/sig250
	name = "SIG 250"
	desc = "A modern pistol, loaded on 9x19mm, reliable and fast."
	icon = 'mods/content/2020_the_cold_war/icons/guns/sig.dmi'
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol/sig250
	accuracy_power = 7
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/sig250/update_base_icon()
	if(ammo_magazine)
		icon_state = "[world]"
	else
		icon_state = "[world]-e"

/obj/item/gun/projectile/pistol/m1911
	name = "M1911A1"
	desc = "a Classic Pistol. The standard issue pistol of the US Armed forces from 1911 to 1985. Chambered in .45 ACP."
	icon = 'mods/content/2020_the_cold_war/icons/guns/m1911.dmi'
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_casing/pistol/mm45
	accuracy_power = 5
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/m1911/update_base_icon()
	if(ammo_magazine)
		icon_state = "[world]"
	else
		icon_state = "[world]-e"

/obj/item/gun/projectile/pistol/browning_hp
	name = "Browning hi-power"
	desc = "Produced by Fabrique Nationale of Belgium, This old handgun is chambered in 9mm."
	icon = 'mods/content/2020_the_cold_war/icons/guns/browning_hp.dmi'
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol/browninghp
	accuracy_power = 5
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/browning_hp/update_base_icon()
	if(ammo_magazine)
		icon_state = "[world]"
	else
		icon_state = "[world]-e"

/obj/item/gun/projectile/pistol/m9beretta
	name = "Beretta M9"
	desc = "The standard issue pistol of US Armed Forces from 1985 to 2017. Chambered in 9mm Luger."
	icon = 'mods/content/2020_the_cold_war/icons/guns/berettam9.dmi'
	caliber = 9
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol/beretta
	accuracy_power = 7
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/pistol/m9beretta/update_base_icon()
	if(ammo_magazine)
		icon_state = "[world]"
	else
		icon_state = "[world]-e"

///////// Magazines /////////
/obj/item/ammo_magazine/pistol/g17
	name = "G17 magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "glock17"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 17
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/sig250
	name = "SIG 250 magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "glock17"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 17
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/beretta
	name = "Beretta M9 magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "m9beretta"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 15
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/m1911
	name = "M1911 magazine (45mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "m1911"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 45
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm45
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/browninghp
	name = "Browning hi-power magazine (9mm)"
	icon = 'mods/content/2020_the_cold_war/icons/ammo/pistol_magazines.dmi'
	icon_state = "browning_hp"
	origin_tech = @'{"combat":2}'
	mag_type = MAGAZINE
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 13
	multiple_sprites = 1