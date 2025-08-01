/obj/item/gun/energy/gun/small/deztructor_lazer
	name = "Dezstructor Lazer"
	desc = "A small laser gun similar to an Pistol, it's somewhat powerful."
	icon = 'mods/2020_mods/2020_main/icons/guns/gnfos_lazer.dmi'
	icon_state = ICON_STATE_WORLD
	self_recharge = 1
	fire_delay = 0
	max_shots = 25
	w_class = ITEM_SIZE_SMALL

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser),
		list(mode_name="pulse", projectile_type=/obj/item/projectile/beam/pulse)
	)