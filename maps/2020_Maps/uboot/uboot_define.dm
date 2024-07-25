/datum/map/uboot
	name          = "Cassie"
	full_name     = "USS Cassie"
	path          = "uboot"

	station_name  = "USS Cassie"
	station_short = "Cassie"
	dock_name     = "USS Kassandra"
	boss_name     = "Navy Command"
	boss_short    = "Navycomm"
	company_name  = "United States Navy"
	company_short = "USN"
	system_name   = "X-484"

	game_year = 14

	overmap_ids = list(OVERMAP_ID_SPACE)
	away_site_budget = 3
	num_exoplanets = 1

	lobby_screens = list(
		'maps/2020_Maps/exodus_2020/lobby/exodus.png'
	)

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

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
	)

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/human/earth/usa
		),
		TAG_FACTION = list(/decl/cultural_info/faction/usa/navy),

		TAG_CULTURE = list(
			/decl/cultural_info/culture/human_2020/yankee,
			/decl/cultural_info/culture/human_2020/english,
			/decl/cultural_info/culture/human_2020/german,
			/decl/cultural_info/culture/human_2020/french
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
		TAG_FACTION =   /decl/cultural_info/faction/usa/navy,
		TAG_CULTURE =   /decl/cultural_info/culture/human_2020/yankee,
		TAG_RELIGION =  /decl/cultural_info/religion/christian
	)

/datum/map/uboot/get_map_info()
	return "You are aboard the USS Cassie, a Medium-size Spaceship builded by the United States Navy to Investigate Cassini, a system that can be achived by entering on a Wormhole near Jupiter. After enter the Wormhole, the Spaceship arrive at Cassini where only few try to explore... good luck discovery this new place."
