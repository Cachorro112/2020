/datum/map/facility
	security_state = /decl/security_state/default/facility

/decl/security_state/default/facility
	severe_security_level = /decl/security_level/default/facility/code_delta
	high_security_level = /decl/security_level/default/facility/code_red

	all_security_levels = list(/decl/security_level/default/facility/code_green, /decl/security_level/default/facility/code_yellow, /decl/security_level/default/facility/code_red, /decl/security_level/default/facility/code_black, /decl/security_level/default/facility/code_ventablack, /decl/security_level/default/facility/code_delta)
	standard_security_levels = list(/decl/security_level/default/facility/code_green, /decl/security_level/default/facility/code_yellow, /decl/security_level/default/facility/code_red, /decl/security_level/default/facility/code_black, /decl/security_level/default/facility/code_ventablack)

/decl/security_level/default/facility/code_green
	name = "code green"

	light_range = 0.25
	light_power = 1

	light_color_alarm = COLOR_GREEN
	light_color_class = "font_green"
	light_color_status_display = COLOR_GREEN


	alarm_appearance = /datum/alarm_appearance/green

	down_description = "The situation has been resolved. All personnel are to return to their regular duties."

/decl/security_level/default/facility/code_yellow
	name = "code yellow"

	light_range = 0.5
	light_power = 1
	light_color_alarm = COLOR_YELLOW
	light_color_class = "font_yellow"
	light_color_status_display = COLOR_YELLOW

	alarm_appearance = /datum/alarm_appearance/yellow

	up_description = "There is an unconfirmed potential threat to the facility. Guards are to cautiously investigate the facility and secure sensitive areas. All personnel are recommended to report unusual behaviour."
	down_description = "All Mid and High Danger Anomalies have been recontained and controlled. the general integrity of the site should be restored."

/decl/security_level/default/facility/code_red
	name = "code red"

	light_range = 0.75
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_red"
	light_color_status_display = COLOR_RED

	alarm_appearance = /datum/alarm_appearance/red

	up_description = "An Anomaly has broken containment and its current whereabouts are unknown. Security should secure all exit points immediately before recontaining breached anomalies."
	down_description = "All major threats to the Site have been neutralized or contained, but one or more Anomalies remain uncontained. Security should focus their efforts on recontaining the escaped Anomalies. Full site lockdown disengaged."

/decl/security_level/default/facility/code_black
	name = "code black"

	light_range = 0.75
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_black"
	light_color_status_display = COLOR_NAVY_BLUE

	alarm_appearance = /datum/alarm_appearance/red

	up_description = "The site is experiencing multiple High and Mid level containment breaches. Full site lockdown initiated."
	down_description = "The Site has been secured from subversive elements. Security is to sweep the facility and recontain all dangerous Anomalies immediately."

/decl/security_level/default/facility/code_ventablack
	name = "code ventablack"

	light_range = 0.75
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_black"
	light_color_status_display = COLOR_NAVY_BLUE

	alarm_appearance = /datum/alarm_appearance/red

	up_description = "There have been confirmed reports of a hostile Group of Interest on-site. Security is allowed to terminate all suspected hostiles."
	down_description = "The destructive threat has been neutralized, however there is still a hostile Group of Interest within the facility."

/decl/security_level/default/facility/code_delta
	name = "code delta"

	light_range = 0.75
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_red"
	light_color_status_display = COLOR_NAVY_BLUE

	alarm_appearance = /datum/alarm_appearance/delta


	var/static/datum/announcement/priority/security/security_announcement_delta_2 = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/code_delta/switching_up_to()
	security_announcement_delta.Announce("The destruction of the site is imminent. All personnel are to obey instructions given by administrative staff. Any violation of these orders is punishable by immediate termination. This is not a drill.", "Attention! Delta security level reached!")
	notify_station()


///APPEARANCE
/datum/alarm_appearance/yellow
	display_icon = "status_display_lines"
	display_icon_color = COLOR_YELLOW

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_YELLOW

	alarm_icon = "alarm_normal"
	alarm_icon_color = COLOR_YELLOW