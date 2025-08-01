/obj/machinery/portable_atmospherics/hydroponics
	icon = 'mods/2020_mods/2020_main/icons/obj/hydrophonics/hydrophonics_machines.dmi'
	icon_state = "hydrotray2"

/obj/machinery/portable_atmospherics/hydroponics/on_update_icon()

	// Update name.
	if(seed)
		if(mechanical)
			name = "[base_name] ([seed.product_name])"
		else
			name = seed.product_name
	else
		SetName(initial(name))

	cut_overlays()

	var/image/plant_overlay = new /image
	plant_overlay.overlays = seed?.get_appearance(dead = dead, age = age, can_harvest = harvest)
	plant_overlay.layer = layer + 0.5
	plant_overlay.appearance_flags |= RESET_COLOR
	add_overlay(plant_overlay)

	//Updated the various alert icons.
	if(mechanical)
		//Draw the cover.
		if(closed_system)
			add_overlay("lid")
		if(seed && plant_health <= (seed.get_trait(TRAIT_ENDURANCE) / 2))
			add_overlay("over_lowhealth")
		if(waterlevel <= 10)
			add_overlay("over_lowwater")
		if(nutrilevel <= 2)
			add_overlay("over_lownutri")
		if(weedlevel >= 5 || pestlevel >= 5 || toxins >= 40)
			add_overlay("over_alert3")
		if(harvest)
			add_overlay("over_harvest")

	if((!density || !opacity) && seed && seed.get_trait(TRAIT_LARGE))
		if(!mechanical)
			set_density(1)
		set_opacity(1)
	else
		if(!mechanical)
			set_density(0)
		set_opacity(0)

	// Update bioluminescence.
	if(seed && seed.get_trait(TRAIT_BIOLUM))
		set_light(round(seed.get_trait(TRAIT_POTENCY)/10), l_color = seed.get_trait(TRAIT_BIOLUM_COLOUR))
	else
		set_light(0)
