/datum/map/facility
	name          = "Facility"
	full_name     = "Containment Facility Site-8"
	path          = "facility"

	station_name  = "Containment Facility Site-8"
	station_short = "Facility Site-8"
	dock_name     = "Command NA Area-4"
	boss_name     = "Mortensen North America Oversee"
	boss_short    = "Regional Oversee"
	company_name  = "Mortensen Organization"
	company_short = "MO"
	system_name   = "Sol"

	game_year = 2020

	overmap_ids = list(OVERMAP_ID_SPACE)
	away_site_budget = 0

	evac_controller_type = /datum/evacuation_controller/shuttle

//	For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public ferry to %dock_name% has landed in Gate B pad. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public ferry has left the facility. Estimate %ETA% until the ferry docks at %dock_name%."
	shuttle_called_message = "A public ferry to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled ferry has been cancelled."

	emergency_shuttle_docked_message = "The emergency shuttle has landed in Gate B pad. You have approximately %ETD% to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the facility. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA%."
	emergency_shuttle_called_sound = 'sound/AI/shuttlecalled.ogg'

	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)),
		list("name" = "Logistic",      "key" = "u", "frequency" = 1347, "color" = COMMS_COLOR_SUPPLY,    "span_class" = "supradio", "secured" = list(access_cargo))
	)