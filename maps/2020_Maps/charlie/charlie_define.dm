/datum/map/charlie
	name = "Charlie"
	full_name = "Charlie Station"
	path = "charlie"

	station_name  = "Charlie Station 13"
	station_short = "Charlie"
	dock_name     = "Outpost Zeta"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "NanoTrasen"
	company_short = "NT"
	system_name   = "Cassini"

	game_year = 2213

	overmap_ids = list(OVERMAP_ID_SPACE)
//	away_site_budget = 5

	map_admin_faxes = list() // NO ONE CAN HELP YOU

	lobby_screens = list(
		'maps/2020_Maps/charlie/lobby.png'
	)

	welcome_sound = 'sound/AI/welcome.ogg'

	evac_controller_type = /datum/evacuation_controller/shuttle

	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately %ETD% to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA%."
	emergency_shuttle_called_sound = 'sound/AI/shuttlecalled.ogg'

	starting_money = 0
	department_money = 0
	salary_modifier = 0

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Station wide maintenance access has been granted. Please take shelter within the Dorms, Engineering, Atmospherics or Research."

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)))