/obj/item/paper_bin
	icon = 'mods/2020_mods/2020_main/icons/obj/bureaucracy.dmi'
	icon_state          = "paper_bin1"
	item_state          = "sheet-metal"

/obj/item/paper_bin/on_update_icon()
	. = ..()
	if(amount <= 0)
		icon_state = "paper_bin0"
	else
		icon_state = "paper_bin1"