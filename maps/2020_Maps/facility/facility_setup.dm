/datum/map/facility/get_map_info()
	return "Site-8 or Containment Facility Site-8, is one of the Mortensen Organization Facilities on North America. this in specific is focused on research of high danger anomalies."

/datum/job
	required_language = /decl/language/human/english

/datum/map/facility
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

	lobby_tracks = list(
	/decl/music_track/apple,
	/decl/music_track/asimovetowardstheend,
	/decl/music_track/nocturne,
	/decl/music_track/ajoura,
	/decl/music_track/dread,
	/decl/music_track/bookburners,
	/decl/music_track/goc_theme)

	lobby_screens = list(
		'maps/2020_Maps/facility/lobby.dmi'
	)

	window_icon = 'mods/content/2020_the_cold_war/icons/mortensen_64.dmi'