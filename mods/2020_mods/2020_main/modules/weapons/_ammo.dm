/// 9mm
///////////Bullet////////////
/obj/item/ammo_casing/pistol/mm9
	desc = "A 9mm pistol bullet casing."
	caliber = 9
	projectile_type = /obj/item/projectile/bullet/pistol

/obj/item/ammo_casing/pistol/mm45
	desc = "A 45mm pistol bullet casing."
	caliber = 45
	projectile_type = /obj/item/projectile/bullet/pistol
//////////////Boxes///////////////////
/obj/item/ammo_magazine/box/mm45
	name = "ammunition box (45mm)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "9mm"
	origin_tech = @'{"combat":2}'
	caliber = 45
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm45
	max_ammo = 50

/obj/item/ammo_magazine/box/mm45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/mm9
	name = "ammunition box (9mm)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "9mm"
	origin_tech = @'{"combat":2}'
	caliber = 9
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol/mm9
	max_ammo = 50

/obj/item/ammo_magazine/box/mm9/empty
	initial_ammo = 0

/// 762 + 565
/////////////////////////Bullets//////////////////////////
/obj/item/ammo_casing/mm762
	desc = "A rifle bullet casing. used on the old AKM and other weapons."
	caliber = 762
	projectile_type = /obj/item/projectile/bullet/rifle
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_COPPER

/obj/item/ammo_casing/mm565
	desc = "A rifle bullet casing, used on newer aks and other weapons."
	caliber = 565
	projectile_type = /obj/item/projectile/bullet/rifle
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_COPPER

//////////////////////Boxes////////////////////////
/obj/item/ammo_magazine/box/mm762
	name = "ammunition box (7.62mm)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "762"
	origin_tech = @'{"combat":2}'
	caliber = 762
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm762
	max_ammo = 60

/obj/item/ammo_magazine/box/mm762/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/mm565
	name = "ammunition box (5.65)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "565"
	origin_tech = @'{"combat":2}'
	caliber = 565
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm565
	max_ammo = 60

/obj/item/ammo_magazine/box/mm565/empty
	initial_ammo = 0

/obj/item/ammo_casing/mm556
	desc = "A standard NATO rifle bullet casing. used on most NATO weapons"
	caliber = 556
	projectile_type = /obj/item/projectile/bullet/rifle
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_COPPER

/obj/item/ammo_magazine/rifle/stanag
	name = "30r STANAG magazine"
	icon = 'mods/2020_mods/2020_main/icons/ammo/rifle_magazines.dmi'
	icon_state = "stanag"
	mag_type = MAGAZINE
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/box/mm556
	name = "ammunition box (5.56mm)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "556"
	origin_tech = @'{"combat":2}'
	caliber = 556
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm556
	max_ammo = 60

/obj/item/ammo_magazine/box/mm556/empty
	initial_ammo = 0

/// 5.7
/////////////////////////Bullets//////////////////////////
/obj/item/ammo_casing/mm57
	desc = "A brass bullet casing. used on P90."
	caliber = 57
	projectile_type = /obj/item/projectile/bullet/pistol/strong
	icon = 'icons/obj/ammo/casings/rifle.dmi'
	bullet_color = COLOR_COPPER

//////////////////////Boxes////////////////////////
/obj/item/ammo_magazine/box/mm57
	name = "ammunition box (5.7mm)"
	icon = 'mods/2020_mods/2020_main/icons/ammo/boxes.dmi'
	icon_state = "57"
	origin_tech = @'{"combat":2}'
	caliber = 57
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/mm57
	max_ammo = 60

/obj/item/ammo_magazine/box/mm57/empty
	initial_ammo = 0