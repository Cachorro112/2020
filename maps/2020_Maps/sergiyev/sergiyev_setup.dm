/datum/map/sergiyev/send_welcome()
	var/obj/effect/overmap/visitable/ship/sergiyev = SSshuttle.ship_by_type(/obj/effect/overmap/visitable/ship/sergiyev)

	var/welcome_text = "<center><font size = 3><b>[global.using_map.station_name]</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"

	if(sergiyev) //If the overmap is disabled, it's possible for there to be no Sergiyev, this would be bad.
		var/list/space_things = list()
		welcome_text += "Current Coordinates:<br /><b>[sergiyev.x]:[sergiyev.y]</b><br /><br>"
		welcome_text += "Travel time to Mars:<br /><b>14 hours</b><br /><br>"
		welcome_text += "Time since initial construction:<br /><b>26 days</b><br /><hr>"
		welcome_text += "Scan results show the following points of interest:<br />"

		for(var/zlevel in global.overmap_sectors)
			var/obj/effect/overmap/visitable/O = global.overmap_sectors[zlevel]
			if(O.name == sergiyev.name)
				continue
			if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
				continue
			if (O.hide_from_reports)
				continue
			space_things |= O

		var/list/distress_calls
		for(var/obj/effect/overmap/visitable/O in space_things)
			var/location_desc = " at present co-ordinates."
			if(O.loc != sergiyev.loc)
				var/bearing = round(90 - Atan2(O.x - sergiyev.x, O.y - sergiyev.y),5) //fucking triangles how do they work
				if(bearing < 0)
					bearing += 360
				location_desc = ", bearing [bearing]."
			if(O.has_distress_beacon)
				LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
			welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

		if(LAZYLEN(distress_calls))
			welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
		else
			welcome_text += "<br>No distress calls logged.<br />"
		welcome_text += "<hr>"

	post_comm_message("[global.using_map.station_short] Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "The Soviet Sector Command provide informations about this Sector, available at all communication consoles.")
