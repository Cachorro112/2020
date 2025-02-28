/obj/item/projectile/beam/smalllaser
	damage = 30
	armor_penetration = 13

/obj/item/projectile/beam/midlaser
	damage = 60
	armor_penetration = 25
	distance_falloff = 2

/obj/item/projectile/beam/xray
	damage = 40
	armor_penetration = 35
	penetration_modifier = 1

/obj/item/projectile/beam/xray/midlaser
	damage = 40
	armor_penetration = 60

/obj/item/projectile/beam/at_laser
	name = "anti-tank laser"
	icon_state = "heavylaser"
	fire_sound = 'sound/weapons/railgun.ogg'
	damage = 500
	armor_penetration = 100
	distance_falloff = 0.5

	muzzle_type = /obj/effect/projectile/muzzle/heavy_laser
	tracer_type = /obj/effect/projectile/tracer/heavy_laser
	impact_type = /obj/effect/projectile/impact/heavy_laser

/obj/item/projectile/beam/pulse
	damage = 15 //lower damage, but fires in bursts

/obj/item/projectile/beam/pulse/destroy
	damage = 150 //badmins be badmins I don't give a fuck
	armor_penetration = 150

/obj/item/projectile/beam/sniper
	damage = 60
	armor_penetration = 20

/obj/item/projectile/beam/particle
	damage = 45
	armor_penetration = 60
	penetration_modifier = 1

/obj/item/projectile/beam/particle/small
	damage = 30
	armor_penetration = 30
	penetration_modifier = 0.6

/obj/item/projectile/beam/pointdefense
	damage = 25
	atom_damage_type = ELECTROCUTE //You should be safe inside a voidsuit
	sharp = FALSE //"Wide" spectrum beam

/obj/item/projectile/beam/incendiary_laser
	damage = 25
	agony = 10
	eyeblur = 10
	sharp = FALSE
	damage_flags = 0
	life_span = 8
	penetration_modifier = 0.3