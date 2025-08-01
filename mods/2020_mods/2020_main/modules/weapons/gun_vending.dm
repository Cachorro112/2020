/obj/machinery/vending/guns/nato_guns
	name = "NATO Weapons Vending"
	desc = "A NATO weapons vending."
	product_ads = "Crack communist skulls!;Taste some freedom!;You got oil, right?;Get your guns here, Mate.;Commies most fear!"
	icon = 'mods/2020_mods/2020_main/icons/machinery/vending/usa.dmi'
	vend_delay = 14
	markup = 0
	base_type = /obj/machinery/vending/security
	initial_access = list(access_security)
	products = list(
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/m16a4 = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/c8 = 6,
//		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/scarl = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/p90 = 6,
		/obj/item/gun/projectile/pistol/glock17 = 8,
		/obj/item/gun/projectile/pistol/sig250 = 8,
		/obj/item/gun/projectile/pistol/m1911 = 8,
		/obj/item/gun/projectile/pistol/browning_hp = 8,
		/obj/item/gun/projectile/pistol/m9beretta = 8,
		/obj/item/ammo_magazine/pistol/g17 = 15,
		/obj/item/ammo_magazine/pistol/sig250 = 15,
		/obj/item/ammo_magazine/pistol/beretta = 15,
		/obj/item/ammo_magazine/pistol/m1911 = 15,
		/obj/item/ammo_magazine/pistol/browninghp = 15,
		/obj/item/ammo_magazine/rifle/stanag = 15,
		/obj/item/ammo_magazine/p90 = 15,
	)

/obj/machinery/vending/guns/soviet_guns
	name = "Soviet Weapons Vending"
	desc = "A Soviet weapons vending."
	product_ads = "Crack capitalist skulls!;Taste some collectivism!;No food for the ukrainians.;Be awere, if the snow talks, fire at it."
	icon = 'mods/2020_mods/2020_main/icons/machinery/vending/soviet.dmi'
	vend_delay = 14
	markup = 0
	base_type = /obj/machinery/vending/security
	initial_access = list(access_security)
	products = list(
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74 = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74/tactical = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak12 = 6,
		/obj/item/gun/projectile/pistol/makarov = 8,
		/obj/item/gun/projectile/pistol/mp443 = 8,
		/obj/item/ammo_magazine/pistol/pmm = 15,
		/obj/item/ammo_magazine/pistol/mp443 = 15,
		/obj/item/ammo_magazine/rifle/mm762 = 15,
		/obj/item/ammo_magazine/rifle/mm565 = 15,
	)

/obj/machinery/vending/guns/general_guns
	name = "General Weapons Vending"
	desc = "A General weapons vending."
	icon = 'mods/2020_mods/2020_main/icons/machinery/vending/security.dmi'
	vend_delay = 14
	markup = 0
	base_type = /obj/machinery/vending/security
	initial_access = list(access_security)
	products = list(
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/m16a4 = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/c8 = 4,
//		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/scarl = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/p90 = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74 = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak74/tactical = 6,
		/obj/item/gun/projectile/automatic/assault_rifle/rifles_2020/ak12 = 4,
		/obj/item/gun/projectile/pistol/glock17 = 8,
		/obj/item/gun/projectile/pistol/sig250 = 8,
		/obj/item/gun/projectile/pistol/m1911 = 8,
		/obj/item/gun/projectile/pistol/browning_hp = 8,
		/obj/item/gun/projectile/pistol/m9beretta = 8,
		/obj/item/gun/projectile/pistol/makarov = 8,
		/obj/item/gun/projectile/pistol/mp443 = 8,
		/obj/item/ammo_magazine/pistol/g17 = 15,
		/obj/item/ammo_magazine/pistol/sig250 = 15,
		/obj/item/ammo_magazine/pistol/beretta = 15,
		/obj/item/ammo_magazine/pistol/m1911 = 15,
		/obj/item/ammo_magazine/pistol/browninghp = 15,
		/obj/item/ammo_magazine/pistol/pmm = 15,
		/obj/item/ammo_magazine/pistol/mp443 = 15,
		/obj/item/ammo_magazine/rifle/stanag = 15,
		/obj/item/ammo_magazine/rifle/mm762 = 15,
		/obj/item/ammo_magazine/rifle/mm565 = 15,
		/obj/item/ammo_magazine/p90 = 15,
	)
