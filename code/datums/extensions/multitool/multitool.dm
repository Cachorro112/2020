/datum/extension/interactive/multitool
	base_type = /datum/extension/interactive/multitool
	var/window_x = 370
	var/window_y = 470

/datum/extension/interactive/multitool/proc/interact(var/obj/item/multitool/M, var/mob/user)
	if(extension_status(user) != STATUS_INTERACTIVE)
		return

	var/html = get_interact_window(M, user)
	if(html)
		var/datum/browser/popup = new(user, "multitool", "Multitool Menu", window_x, window_y)
		popup.set_content(html)
		popup.open()
	else
		close_window(usr)

/datum/extension/interactive/multitool/proc/get_interact_window(var/obj/item/multitool/M, var/mob/user)
	return

/datum/extension/interactive/multitool/proc/close_window(var/mob/user)
	close_browser(user, "window=multitool")

/datum/extension/interactive/multitool/proc/buffer(var/obj/item/multitool/multitool)
	. += "<b>Buffer Memory:</b><br>"
	var/buffer_name = multitool.get_buffer_name()
	if(buffer_name)
		. += "[buffer_name] <a href='byond://?src=\ref[src];send=\ref[multitool.buffer_object]'>Send</a> <a href='byond://?src=\ref[src];purge=1'>Purge</a><br>"
	else
		. += "No connection stored in the buffer."

/datum/extension/interactive/multitool/extension_status(var/mob/user)
	if(!user.get_multitool())
		return STATUS_CLOSE
	. = ..()

/datum/extension/interactive/multitool/extension_act(href, href_list, var/mob/user)
	if(..())
		close_window(usr)
		return TRUE

	var/obj/item/multitool/M = user.get_multitool()
	if(href_list["send"])
		var/atom/buffer = locate(href_list["send"])
		. = send_buffer(M, buffer, user)
	else if(href_list["purge"])
		M.set_buffer(null)
		. = TOPIC_REFRESH
	else
		. = on_topic(href, href_list, user)

	if(. & TOPIC_CLOSE)
		close_window(user)
		return TOPIC_HANDLED // don't run any other Topic() behavior for this call
	else if(. & TOPIC_REFRESH)
		interact(M, user)
		return TOPIC_HANDLED // don't return TOPIC_REFRESH to avoid any potential double-refreshes
	else if(!.)
		return TOPIC_NOACTION
	return TOPIC_REFRESH

/datum/extension/interactive/multitool/proc/on_topic(href, href_list, user)
	return TOPIC_NOACTION

/datum/extension/interactive/multitool/proc/send_buffer(var/obj/item/multitool/M, var/atom/buffer, var/mob/user)
	if(M.get_buffer() == buffer && buffer)
		receive_buffer(M, buffer, user)
	else if(!buffer)
		to_chat(user, "<span class='warning'>Unable to acquire data from the buffered object. Purging from memory.</span>")
	return TOPIC_REFRESH

/datum/extension/interactive/multitool/proc/receive_buffer(var/obj/item/multitool/M, var/atom/buffer, var/mob/user)
	return