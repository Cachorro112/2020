/decl/species/human

	// Removed /decl/bodytype/prosthetic/basic_human from this list due lore.
	available_bodytypes = list(
		/decl/bodytype/human,
		/decl/bodytype/human/masculine
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

	available_pronouns = list( // You can't use non-female/male pronouns.
		/decl/pronouns/female,
		/decl/pronouns/male
	)