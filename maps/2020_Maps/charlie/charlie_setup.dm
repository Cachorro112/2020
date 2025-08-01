/datum/map/charlie/get_map_info()
	return "Charlie Station is an Nanotrasen Station Located in the deep, unexplored outer space of Cassini, the station is focused on communications relay and used as a outpost. \
	But in 2034 all crewmembers were adviced to enter in cryo sleep due to a possible radiation storm approaching the station. and now the crew wake up form its sleep, just to find the same, old, space station... what happens?"

/datum/controller/subsystem/skybox
	background_color = "#ffffff"
	skybox_icon = 'mods/2020_mods/2020_main/icons/skybox/skybox.dmi'
	background_icon = "cassini"
	use_stars = FALSE

/datum/job
	required_language = /decl/language/human/english

/datum/map/charlie

	allowed_latejoin_spawns = list(
		/decl/spawnpoint/cryo
	)
	default_spawn = /decl/spawnpoint/cryo

	lobby_tracks = list(
	/decl/music_track/stars,
	/decl/music_track/reported_missing,
	/decl/music_track/wake_up_in_the_darkness
	)

	credit_sound = list('mods/2020_mods/2020_main/sounds/music/its_full_of_stars.ogg')

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