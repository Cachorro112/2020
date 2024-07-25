/datum/map/ss13/get_map_info()
	return "Space Station 13 was one of the first stations built by Nanotrasen in the 'golden age'; it was the first research station specializing in Phoron. despite this, the station quickly lost its podium to others such as NSS Helios and later NSS Gimini, in part due to its size and lack of maintenance and adjustments to keep it running. after a few years of disuse, Nanotrasen revamped the station and turned it into a general station. \
	In fact, they say it's just a dump for low-level employees or those who have caused problems (this don't mean you are a trouble maker.)."

/datum/job
	required_language = /decl/language/human/english

/obj/effect/overmap/visitable/ship/ss13/generate_skybox()
	return overlay_image('mods/content/2020_the_cold_war/icons/effects/misc/plasma_giant.dmi', "plasma_giant", null, RESET_COLOR)

/obj/effect/overmap/visitable/sector/asteroid/generate_skybox()
	return overlay_image('mods/content/2020_the_cold_war/icons/effects/misc/plasma_giant.dmi', "plasma_giant", null, RESET_COLOR)