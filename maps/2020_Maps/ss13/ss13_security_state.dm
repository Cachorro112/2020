/datum/map/ss13
	security_state = /decl/security_state/default/ss13

/decl/security_state/default/ss13
	severe_security_level = list(/decl/security_level/default/ss13/code_delta)
	high_security_level = list(/decl/security_level/default/ss13/code_red)
	highest_standard_security_level = list(/decl/security_level/default/ss13/code_blue)
	all_security_levels = list(/decl/security_level/default/ss13/code_green, /decl/security_level/default/ss13/code_violet, /decl/security_level/default/ss13/code_orange, /decl/security_level/default/ss13/code_blue, /decl/security_level/default/ss13/code_red, /decl/security_level/default/ss13/code_delta)
	standard_security_levels = list(/decl/security_level/default/ss13/code_green, /decl/security_level/default/ss13/code_violet, /decl/security_level/default/ss13/code_orange)
	comm_console_security_levels = list(/decl/security_level/default/ss13/code_green, /decl/security_level/default/ss13/code_violet, /decl/security_level/default/ss13/code_orange, /decl/security_level/default/ss13/code_blue)

/decl/security_level/default/ss13/code_green
	name = "code green"

	light_range = 2
	light_power = 1

	light_color_alarm = COLOR_GREEN
	light_color_class = "font_green"


	alarm_appearance = /datum/alarm_appearance/green

	down_description = "All threats to the station have passed. Security may not have weapons visible, privacy laws are once again fully enforced."

/decl/security_level/default/ss13/code_violet
	name = "code violet"

	light_range = 2
	light_power = 1
	light_color_alarm = COLOR_VIOLET
	light_color_class = "font_violet"

	alarm_appearance = /datum/alarm_appearance/ss13/violet

	up_description = "A major medical emergency has developed. Medical personnel are required to report to their supervisor for orders, and non-medical personnel are required to obey all relevant instructions from medical staff."
	down_description = "Code violet procedures are now in effect; Medical personnel are required to report to their supervisor for orders, and non-medical personnel are required to obey relevant instructions from medical staff."

/decl/security_level/default/ss13/code_orange
	name = "code orange"

	light_range = 2
	light_power = 1
	light_color_alarm = COLOR_ORANGE
	light_color_class = "font_orange"

	alarm_appearance = /datum/alarm_appearance/ss13/blue

	up_description = "A major engineering emergency has developed. Engineering personnel are required to report to their supervisor for orders, and non-engineering personnel are required to evacuate any affected areas and obey relevant instructions from engineering staff."
	down_description = "Code orange procedures are now in effect; Engineering personnel are required to report to their supervisor for orders, and non-engineering personnel are required to evacuate any affected areas and obey relevant instructions from engineering staff."

/decl/security_level/default/ss13/code_blue
	name = "code blue"

	light_range = 2
	light_power = 1
	light_color_alarm = COLOR_BLUE
	light_color_class = "font_blue"

	alarm_appearance = /datum/alarm_appearance/ss13/blue

	up_description = "The station has received reliable information about possible hostile activity on the station. Security staff may have weapons visible, random searches are permitted."
	down_description = "The immediate threat has passed. Security may no longer have weapons drawn at all times, but may continue to have them visible. Random searches are still allowed."

/decl/security_level/default/ss13/code_red
	name = "code red"

	light_range = 4
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_red"

	alarm_appearance = /datum/alarm_appearance/ss13/red

	up_description = "There is an immediate serious threat to the station. Security may have weapons unholstered at all times. Random searches are allowed and advised."
	down_description = "The self-destruct mechanism has been deactivated, there is still however an immediate serious threat to the station. Security may have weapons unholstered at all times, random searches are allowed and advised."

/decl/security_level/default/ss13/code_delta
	name = "code delta"

	light_range = 4
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_class = "font_red"

	alarm_appearance = /datum/alarm_appearance/ss13/delta

	var/static/datum/announcement/priority/security/security_announcement_delta = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/ss13/code_delta/switching_up_to()
	security_announcement_delta.Announce("The self-destruct mechanism has been engaged. All crew are instructed to obey all instructions given by heads of staff. Any violations of these orders can be punished by death. This is not a drill.", "Attention! Delta security level reached!")
	notify_station()


/datum/alarm_appearance/ss13/green
	display_icon = "status_display_lines"
	display_icon_color = PIPE_COLOR_GREEN

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_normal"
	alarm_icon_color = PIPE_COLOR_GREEN

/datum/alarm_appearance/ss13/blue
	display_icon = "status_display_lines"
	display_icon_color = COLOR_BLUE

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_normal"
	alarm_icon_color = COLOR_BLUE

/datum/alarm_appearance/ss13/orange
	display_icon = "status_display_lines"
	display_icon_color = COLOR_ORANGE

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_normal"
	alarm_icon_color = COLOR_ORANGE

/datum/alarm_appearance/ss13/violet
	display_icon = "status_display_lines"
	display_icon_color = COLOR_VIOLET

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_normal"
	alarm_icon_color = COLOR_VIOLET

/datum/alarm_appearance/ss13/red
	display_icon = "status_display_lines"
	display_icon_color = COLOR_RED

	display_emblem = "status_display_alert"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_blinking"
	alarm_icon_color = COLOR_RED

/datum/alarm_appearance/ss13/delta
	display_icon = "status_display_twotone1"
	display_icon_color = COLOR_RED

	display_icon_twotone = "status_display_twotone2"
	display_icon_twotone_color = COLOR_YELLOW

	display_emblem = "delta"
	display_emblem_color = COLOR_WHITE

	alarm_icon = "alarm_blinking_twotone1"
	alarm_icon_color = COLOR_RED

	alarm_icon_twotone = "alarm_blinking_twotone2"
	alarm_icon_twotone_color = PIPE_COLOR_YELLOW