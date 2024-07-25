/datum/map/euclid
	name          = "Euclid"
	full_name     = "XSS Euclid"
	path          = "euclid"

	station_name  = "XSS Euclid"
	station_short = "Euclid"
	dock_name     = "XAS Europa"
	boss_name     = "Directors Council"
	boss_short    = "Council"
	company_name  = "Xy Foundation"
	company_short = "XY"
	system_name   = "Sol"

	game_year = 14

	overmap_ids = list(OVERMAP_ID_SPACE)
	away_site_budget = 6

	lobby_screens = list(
	)

	evac_controller_type = /datum/evacuation_controller/shuttle

//  For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public ferry to %dock_name% has docked with the station. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public ferry has left the station. Estimate %ETA% until the ferry docks at %dock_name%."
	shuttle_called_message = "A public ferry to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled ferry has been cancelled."

	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately %ETD% to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA%."
	emergency_shuttle_called_sound = 'sound/AI/shuttlecalled.ogg'

	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,
		list("name" = "Entertainment", "key" = "z", "frequency" = 1461, "color" = COMMS_COLOR_ENTERTAIN, "span_class" = CSS_CLASS_RADIO, "receive_only" = TRUE),
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)),
		list("name" = "Supply",        "key" = "u", "frequency" = 1347, "color" = COMMS_COLOR_SUPPLY,    "span_class" = "supradio", "secured" = list(access_cargo)),
		list("name" = "Exploration",   "key" = "x", "frequency" = 1361, "color" = COMMS_COLOR_EXPLORER , "span_class" = "EXPradio", "secured" = list(access_eva)),
		list("name" = "AI Private",    "key" = "p", "frequency" = 1343, "color" = COMMS_COLOR_AI,        "span_class" = "airadio",  "secured" = list(access_ai_upload))
	)

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/human/earth/usa,
			/decl/cultural_info/location/human/earth/sov,
			/decl/cultural_info/location/human/earth/uk,
			/decl/cultural_info/location/human/earth/ger,
			/decl/cultural_info/location/human/earth/frc,
			/decl/cultural_info/location/human/earth/eu,
			/decl/cultural_info/location/human/earth/chn,
			/decl/cultural_info/location/human/earth/jap,
			/decl/cultural_info/location/human,
			/decl/cultural_info/location/human/luna,
			/decl/cultural_info/location/human/ceres,
			/decl/cultural_info/location/human/spacer
		),
		TAG_FACTION = list(/decl/cultural_info/faction/remote/nanotrasen),

		TAG_CULTURE = list(
			/decl/cultural_info/culture/human_2020/yankee,
			/decl/cultural_info/culture/human_2020/russian,
			/decl/cultural_info/culture/human_2020/english,
			/decl/cultural_info/culture/human_2020/german,
			/decl/cultural_info/culture/human_2020/french,
			/decl/cultural_info/culture/human_2020/chinese,
			/decl/cultural_info/culture/human_2020/ukrainian,
			/decl/cultural_info/culture/human_2020/japan,
			/decl/cultural_info/culture/human_2020/luna,
			/decl/cultural_info/culture/human_2020/mars,
			/decl/cultural_info/culture/human_2020/ceres,
			/decl/cultural_info/culture/human_2020/belter,
			/decl/cultural_info/culture/human_2020/spacer
		),

		TAG_RELIGION =  list(
			/decl/cultural_info/religion/jewish,
			/decl/cultural_info/religion/hindu,
			/decl/cultural_info/religion/buddhist,
			/decl/cultural_info/religion/jain,
			/decl/cultural_info/religion/sikh,
			/decl/cultural_info/religion/muslim,
			/decl/cultural_info/religion/christian,
			/decl/cultural_info/religion/bahai,
			/decl/cultural_info/religion/agnostic,
			/decl/cultural_info/religion/deist,
			/decl/cultural_info/religion/atheist,
			/decl/cultural_info/religion/thelemite,
			/decl/cultural_info/religion/spiritualism,
			/decl/cultural_info/religion/shinto,
			/decl/cultural_info/religion/taoist,
			/decl/cultural_info/religion/other)
		)

	default_cultural_info = list(
		TAG_HOMEWORLD = /decl/cultural_info/location/human/earth/usa,
		TAG_FACTION =   /decl/cultural_info/faction/remote/nanotrasen,
		TAG_CULTURE =   /decl/cultural_info/culture/human_2020/yankee,
		TAG_RELIGION =  /decl/cultural_info/religion/christian
	)

/datum/map/euclid/get_map_info()
	return "MSS Euclid is a space station located inside an asteroid near the orbit of Saturn. Euclid is a top-secret base of the Mortensen organization, serving as a containment site for high-end anomalies, such as those capable of opening Nether portals and other types of unconventional anomalies. only reliable and capable Employees are sent to work here. Euclid was built after the 'MSS [REDACTED]' suffered a level 5 security breach \
	leading to it being destroyed by the nuclear demolition charge."