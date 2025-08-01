/obj/machinery/papershredder
	icon               = 'mods/2020_mods/2020_main/icons/obj/bureaucracy.dmi'
	icon_state         = "papershredder0"

/obj/machinery/papershredder/on_update_icon()
	cut_overlays()
	var/ratio = ((cached_total_matter * 5) / max_total_matter)
	icon_state = "papershredder[clamp(ceil(ratio), 0, 5)]"

/obj/item/shreddedp
	icon         = 'mods/2020_mods/2020_main/icons/obj/bureaucracy.dmi'
	icon_state   = "shredp"