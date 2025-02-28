/datum/map/ss13
	name = "SS13"
	full_name = "Space Station 13"
	path = "ss13"

	station_name  = "Space Station 13"
	station_short = "SS13"
	dock_name     = "Supply Station 12"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "NanoTrasen"
	company_short = "NT"
	system_name   = "Cassini"

	game_year = 2020

	overmap_ids = list(OVERMAP_ID_SPACE)
//	away_site_budget = 5

	lobby_tracks = list(
	/decl/music_track/title_3,
	/decl/music_track/title_3_og,
	/decl/music_track/level3_mod,
	/decl/music_track/thunderdome,
	/decl/music_track/title_2,
	/decl/music_track/dawsons_christian)

	credit_sound = list('mods/content/2020_the_cold_war/sounds/music/title3_og.ogg')

	map_admin_faxes = list(
	"TERRAN.COM" = list("name" = "Terran Organization", "color" = "#75CCD1", "access" = list(list(access_heads))),
	"ETO.COM" = list("name" = "Earth Trade Organization", "color" = "#BFB53B", "access" = list(list(access_heads))),
	"US_FLEET.COM" = list("name" = "United States Fleet", "color" = "#2846C7", "access" = list(list(access_heads))),
	"SOV_FLEET.COM" = list("name" = "Soviet Union Fleet", "color" = "#73060D", "access" = list(list(access_heads))),
	"NTAP.COM" = list("name" = "NanoTrasen Assets Protection", "color" = "#DF0000", "access" = list(list(access_heads))),
	"NANOTRASEN.COM" = list("name" = "NanoTrasen Central Office", "color" = "#DF0000", "access" = list(list(access_heads))),
	"MORTENSEN.COM" = list("name" = "Mortensen Organization", "color" = "#636363", "access" = list(list(access_heads))),
	"TERRAN_FLEET.COM" = list("name" = "Terran International Fleet", "color" = "#75CCD1", "access" = list(list(access_heads)))
	)

//	lobby_screens = list(
//		'maps/2020_Maps/donut/title.dmi'
//	)

	evac_controller_type = /datum/evacuation_controller/shuttle

	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately %ETD% to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA%."
	emergency_shuttle_called_sound = 'sound/AI/shuttlecalled.ogg'

	starting_money = 10000
	department_money = 2000
	salary_modifier = 0.4

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Station wide maintenance access has been granted. Please take shelter within the Medbay, Engineering, Atmospherics or Toxin."

	allowed_latejoin_spawns = list(
		/decl/spawnpoint/arrivals,
		/decl/spawnpoint/cryo
	)
	default_spawn = /decl/spawnpoint/arrivals

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,
		list("name" = "Entertainment", "key" = "z", "frequency" = 1461, "color" = COMMS_COLOR_ENTERTAIN, "span_class" = CSS_CLASS_RADIO, "receive_only" = TRUE),
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)),
		list("name" = "Supply",        "key" = "u", "frequency" = 1347, "color" = COMMS_COLOR_SUPPLY,    "span_class" = "supradio", "secured" = list(access_cargo))
	)

	available_background_info = list(
		/decl/background_category/homeworld = list(
			/decl/background_detail/location/human/earth/usa,
			/decl/background_detail/location/human/earth/sov,
			/decl/background_detail/location/human/earth/uk,
			/decl/background_detail/location/human/earth/ger,
			/decl/background_detail/location/human/earth/frc,
			/decl/background_detail/location/human/earth/eu,
			/decl/background_detail/location/human/earth/chn,
			/decl/background_detail/location/human/earth/jap
		),
		/decl/background_category/faction = list(/decl/background_detail/faction/remote/nanotrasen),

		/decl/background_category/heritage = list(
			/decl/background_detail/heritage/human_2020/yankee,
			/decl/background_detail/heritage/human_2020/russian,
			/decl/background_detail/heritage/human_2020/english,
			/decl/background_detail/heritage/human_2020/german,
			/decl/background_detail/heritage/human_2020/french,
			/decl/background_detail/heritage/human_2020/chinese,
			/decl/background_detail/heritage/human_2020/ukrainian,
			/decl/background_detail/heritage/human_2020/japan
		),

		/decl/background_category/religion =  list(
			/decl/background_detail/religion/jewish,
			/decl/background_detail/religion/hindu,
			/decl/background_detail/religion/buddhist,
			/decl/background_detail/religion/jain,
			/decl/background_detail/religion/sikh,
			/decl/background_detail/religion/muslim,
			/decl/background_detail/religion/christian,
			/decl/background_detail/religion/bahai,
			/decl/background_detail/religion/agnostic,
			/decl/background_detail/religion/deist,
			/decl/background_detail/religion/atheist,
			/decl/background_detail/religion/thelemite,
			/decl/background_detail/religion/spiritualism,
			/decl/background_detail/religion/shinto,
			/decl/background_detail/religion/taoist,
			/decl/background_detail/religion/other)
		)

	default_background_info = list(
		/decl/background_category/homeworld = /decl/background_detail/location/human/earth/usa,
		/decl/background_category/faction =   /decl/background_detail/faction/remote/nanotrasen,
		/decl/background_category/heritage =   /decl/background_detail/heritage/human_2020/yankee,
		/decl/background_category/religion  =  /decl/background_detail/religion/christian
	)