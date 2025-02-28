/obj/machinery/smartfridge
	name = "\improper SmartFridge"
	icon = 'mods/content/2020_the_cold_war/icons/obj/vending.dmi'
	icon_state = "smartfridge"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	anchored = TRUE
	idle_power_usage = 5
	active_power_usage = 100
	atom_flags = ATOM_FLAG_NO_CHEM_CHANGE
	obj_flags = OBJ_FLAG_ANCHORABLE | OBJ_FLAG_ROTATABLE
	atmos_canpass = CANPASS_NEVER
	required_interaction_dexterity = DEXTERITY_SIMPLE_MACHINES

	icon_base = "smartfridge"

/obj/machinery/smartfridge/on_update_icon()
	overlays.Cut()
	if(stat & (BROKEN|NOPOWER))
		icon_state = "[icon_base]-off"
	else
		icon_state = icon_base

	if(panel_open)
		overlays += image(icon, "[icon_base]-panel")

	if(inoperable())
		icon_state = "[icon_base]-off"

/obj/machinery/smartfridge/secure/medbay
	icon_state = "medfridge"
	icon_base = "medfridge"

/obj/machinery/smartfridge/chemistry
	icon_state = "medfridge"
	icon_base = "medfridge"

/obj/machinery/smartfridge/drinks
	icon_state = "boozeomat"
	icon_base = "boozeomat"

/obj/machinery/smartfridge/foods
	icon_state = "smartfridge"
	icon_base = "smartfridge"