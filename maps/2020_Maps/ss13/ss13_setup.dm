/datum/map/ss13/get_map_info()
	return "Space Station 13 was one of the first stations built by Nanotrasen in the 'golden age'; it was the first research station specializing in Phoron. despite this, the station quickly lost its podium to others such as NSS Helios and later NSS Gimini, in part due to its size and lack of maintenance and adjustments to keep it running. after a few years of disuse, Nanotrasen revamped the station and turned it into a general station. \
	In fact, they say it's just a dump for low-level employees or those who have caused problems (this don't mean you are a trouble maker.)."

/datum/job
	required_language = /decl/language/human/english

/obj/effect/overmap/visitable/generate_skybox()
	return overlay_image('mods/content/2020_the_cold_war/icons/effects/misc/plasma_giant.dmi', "plasma_giant", null, RESET_COLOR)

/datum/map/ss13

	lobby_tracks = list(
	/decl/music_track/title_3,
	/decl/music_track/title_3_og,
	/decl/music_track/level3_mod,
	/decl/music_track/thunderdome,
	/decl/music_track/title_2,
	/decl/music_track/dawsons_christian)

	credit_sound = list('mods/content/2020_the_cold_war/sounds/music/title3_og.ogg')

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