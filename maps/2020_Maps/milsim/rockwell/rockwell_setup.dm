/datum/map/rockwell/get_map_info()
	return "Rockwell is a WIP MAP!"

/datum/job
	required_language = /decl/language/human/english

/datum/map/rockwell

	allowed_latejoin_spawns = list(
		/decl/spawnpoint/arrivals,
	)
	default_spawn = /decl/spawnpoint/arrivals

	lobby_tracks = list(
	/decl/music_track/stars,
	/decl/music_track/reported_missing,
	/decl/music_track/wake_up_in_the_darkness
	)

	credit_sound = list('mods/2020_mods/2020_main/sounds/music/its_full_of_stars.ogg')

	available_background_info = list(
		/decl/background_category/homeworld = list(
			/decl/background_detail/location/human/earth/usa
		),
		/decl/background_category/faction = list(/decl/background_detail/faction/usa/usmc),

		/decl/background_category/heritage = list(
			/decl/background_detail/heritage/human_2020/yankee
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
		/decl/background_category/faction =   /decl/background_detail/faction/usa/usmc,
		/decl/background_category/heritage =   /decl/background_detail/heritage/human_2020/yankee,
		/decl/background_category/religion  =  /decl/background_detail/religion/christian
	)