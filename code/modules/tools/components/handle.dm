/obj/item/tool_component/handle
	name          = "tool handle"
	force         = 5
	icon          = 'icons/obj/items/tool/components/tool_handle.dmi'
	material      = /decl/material/solid/organic/wood
	abstract_type = /obj/item/tool_component/handle

/obj/item/tool_component/handle/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/tool_component/head))
		return W.attackby(src, user)
	return ..()

/obj/item/tool_component/handle/short
	name          = "short tool handle"
	desc          = "A short, straight rod suitable for use as the handle of a tool."
	icon_state    = "handle_short"

/obj/item/tool_component/handle/long
	name          = "long tool handle"
	desc          = "A long, hefty rod suitable for use as the handle of a heavy tool."
	icon_state    = "handle_long"
	force         = 8 // bonk
	w_class       = ITEM_SIZE_NORMAL
