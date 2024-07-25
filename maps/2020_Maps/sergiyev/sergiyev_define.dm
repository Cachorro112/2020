/datum/map/sergiyev
	name = "Novo-Sergiyev"
	full_name = "SAC Novo-Sergiyev"
	path = "sergiyev"

	station_name = "SAC Novo-Sergiyev"
	station_short = "Novo-Sergiyev"

	dock_name     = "Sputinik Station"
	boss_name     = "Soviet Central Command"
	boss_short    = "Soviet Centcomm"
	company_name  = "Union of Soviet Republics"
	company_short = "USR"
	system_name   = "Sol"

	overmap_ids = list(OVERMAP_ID_SPACE)
	num_exoplanets = 0
	away_site_budget = 2

	map_admin_faxes = list(
	"TERRAN.COM" = list("name" = "Terran Organization", "color" = "#75CCD1", "access" = list(list(access_heads))),
	"RED_ARMY.COM" = list("name" = "Red Army Mars HQ", "color" = "#73060D", "access" = list(list(access_heads))),
	"ETO.COM" = list("name" = "Earth Trade Organization", "color" = "#BFB53B", "access" = list(list(access_heads))),
	"US_FLEET.COM" = list("name" = "United States Fleet", "color" = "#2846C7", "access" = list(list(access_heads))),
	"SOV_FLEET.COM" = list("name" = "Soviet Union Fleet", "color" = "#73060D", "access" = list(list(access_heads))),
	"NANOTRASEN.COM" = list("name" = "NanoTrasen", "color" = "#DF0000", "access" = list(list(access_heads))),
	"MORTENSEN.COM" = list("name" = "Mortensen Organization", "color" = "#636363", "access" = list(list(access_heads))),
	"TERRAN_FLEET.COM" = list("name" = "Terran International Fleet", "color" = "#75CCD1", "access" = list(list(access_heads)))
	)

	lobby_screens = list(
		'maps/2020_Maps/sergiyev/sergiyev_lobby.png'
	)

	lobby_tracks = list(
	/decl/music_track/ibelivemyfriends,
	/decl/music_track/glorytotheoneswholookforward,
	/decl/music_track/wondrous_future)

	evac_controller_type = /datum/evacuation_controller/shuttle

	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately %ETD% to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% until the shuttle docks at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA%."
	emergency_shuttle_called_sound = 'sound/AI/shuttlecalled.ogg'

	allowed_latejoin_spawns = list(
		/decl/spawnpoint/cryo
	)
	default_spawn = /decl/spawnpoint/cryo

	default_telecomms_channels = list(
		list("name" = "Science",       "key" = "n", "frequency" = 1351, "color" = COMMS_COLOR_SCIENCE,   "span_class" = "sciradio", "secured" = list(access_research)),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = list(access_medical)),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = list(access_bar)),
		COMMON_FREQUENCY_DATA,
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = list(access_bridge)),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = list(access_engine)),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = list(access_security))
		)

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/human/earth/sov
		),
		TAG_FACTION = list(/decl/cultural_info/faction/sov),

		TAG_CULTURE = list(
			/decl/cultural_info/culture/human_2020/russian,
			/decl/cultural_info/culture/human_2020/ukrainian
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
		TAG_HOMEWORLD = /decl/cultural_info/location/human/earth/sov,
		TAG_FACTION =   /decl/cultural_info/faction/sov,
		TAG_CULTURE =   /decl/cultural_info/culture/human_2020/russian,
		TAG_RELIGION =  /decl/cultural_info/religion/christian
	)

/datum/map/sergiyev/get_map_info()
	return "You are on <b>[station_name]</b>, a recent Relay Colony/Station builded by the Soviet Fleet on a asteroid in the asteroid belt, keep monitoring the space traffic... and report to the command."