/datum/map/donut/proc/get_skybox_image()
	var/image/base = image('icons/skybox/planet.dmi', "base")
	base.color = "#538224"

	var/image/skybox_image = image('icons/skybox/planet.dmi', "")
	skybox_image.overlays += base

	var/image/water = image('icons/skybox/planet.dmi', "water")
	water.color = "#314b99"
	water.appearance_flags = DEFAULT_APPEARANCE_FLAGS | PIXEL_SCALE
	skybox_image.overlays += water

	var/image/clouds = image('icons/skybox/planet.dmi', "weak_clouds")

	clouds.overlays += image('icons/skybox/planet.dmi', "clouds")

	clouds.color = COLOR_WHITE
	skybox_image.overlays += clouds

	var/image/atmo = image('icons/skybox/planet.dmi', "atmoring")
	skybox_image.underlays += atmo

	var/image/shadow = image('icons/skybox/planet.dmi', "shadow")
	shadow.blend_mode = BLEND_MULTIPLY
	skybox_image.overlays += shadow

	var/image/light = image('icons/skybox/planet.dmi', "lightrim")
	skybox_image.overlays += light

	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	skybox_image.appearance_flags = DEFAULT_APPEARANCE_FLAGS | RESET_COLOR
	skybox_image.blend_mode = BLEND_OVERLAY

	return skybox_image

/datum/map/donut/get_map_info()
	return "NSS Helios, Populatedly called the 'Donut Station'; It is a space station orbiting the planet Cassini IV, making an orbit next to an asteroid where a research facility and mining base is located. Helios was one of the first space stations built by Nanotrasen during an era called the 'Golden Age', which was the best time (theoretically) of Nanotrasen. \
	the purpose of the station (like several others) is advanced research, mainly of the Phoron material and other minor research such as medical and engineering. with the passage of time its brilliance was taken over by larger and more modern stations, leaving Helio defaced for a while... until Nanotrasen redesigned and modernized the station."

/datum/map/donut
	get_skybox_image()

/datum/job
	required_language = /decl/language/human/english