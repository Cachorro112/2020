/obj/item/gun/energy/laser
	name = "L1 carbine"
	desc = "A L1 carbine, designed to kill with concentrated energy blasts, mostly used by security forces. Made in Japan."
	max_shots = 10

/obj/item/gun/energy/laser/reloadable
	name = "L1A1 carbine"
	desc = "A L1A1 carbine, designed to kill with concentrated energy blasts. Uses removable energy cells."
	charge_cost = 10

/obj/item/gun/energy/laser/reloadable/setup_power_supply(loaded_cell_type, accepted_cell_type, power_supply_extension_type, charge_value)
	return ..(/obj/item/cell/gun/rifle, /obj/item/cell/gun/rifle, power_supply_extension_type, charge_value)

/obj/item/gun/energy/gun
	name = "Sig Lawer-A energy gun"
	desc = "Another bestseller of SiG, the Lawer is a versatile energy based sidearm, capable of switching between low, medium and high power projectile settings. In other words: stun, shock or kill. this version is not reloadable."
	max_shots = 7

/obj/item/gun/energy/gun/reloadable
	name = "SiG Lawer energy gun"
	desc = "Another bestseller of SiG, the Lawer is a versatile energy based sidearm, capable of switching between low, medium and high power projectile settings. In other words: stun, shock or kill."
	charge_cost = 5

/obj/item/gun/energy/gun/reloadable/setup_power_supply(loaded_cell_type, accepted_cell_type, power_supply_extension_type, charge_value)
	return ..(/obj/item/cell/gun/small, /obj/item/cell/gun/small, /datum/extension/loaded_cell, charge_value)

/obj/item/gun/energy/lasercannon/lat
	name = "LAT"
	desc = "a Laser Anti-Tank gun, used against tanks and heavy vehicles. Must be reloaded using Power Cells. not recomended against person. Made in Japan."
	origin_tech = @'{"combat":5,"materials":4,"powerstorage":4}'
	projectile_type = /obj/item/projectile/beam/at_laser
	charge_cost = 5000
	accuracy = 2
	fire_delay = 100
	material = /decl/material/solid/metal/steel
	matter = list(
		/decl/material/solid/fiberglass = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/gemstone/diamond = MATTER_AMOUNT_TRACE
	)

/obj/item/gun/energy/lasercannon/lat/setup_power_supply(loaded_cell_type, accepted_cell_type, power_supply_extension_type, charge_value)
	return ..(/obj/item/cell/gun/at_cell, /obj/item/cell/gun/at_cell, /datum/extension/loaded_cell, charge_value)