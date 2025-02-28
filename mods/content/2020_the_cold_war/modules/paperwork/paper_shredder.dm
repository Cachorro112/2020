/obj/machinery/papershredder
	icon               = 'mods/content/2020_the_cold_war/icons/obj/bureaucracy.dmi'
	icon_state         = "papershredder0"

/obj/machinery/papershredder/on_update_icon()
	cut_overlays()
	var/ratio = ((cached_total_matter * 5) / max_total_matter)
	icon_state = "papershredder[clamp(CEILING(ratio), 0, 5)]"

/obj/item/shreddedp
	icon         = 'mods/content/2020_the_cold_war/icons/obj/bureaucracy.dmi'
	icon_state   = "shredp"