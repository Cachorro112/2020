/obj/item/paper_bin
	icon = 'mods/content/2020_the_cold_war/icons/obj/bureaucracy.dmi'
	icon_state          = "paper_bin1"
	item_state          = "sheet-metal"

/obj/item/paper_bin/on_update_icon()
	. = ..()
	if(amount <= 0)
		icon_state = "paper_bin0"
	else
		icon_state = "paper_bin1"