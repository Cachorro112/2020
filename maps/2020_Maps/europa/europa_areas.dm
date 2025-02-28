/area/europa_base
	name = "\improper Central Hallway"
	icon_state = "halls"
	icon = 'maps/2020_Maps/europa/areas.dmi'
	base_turf = /turf/floor/natural/seafloor/flooded/europa

/area/europa_base/bridge
	name = "\improper Bridge"
	icon_state = "B"

/area/europa_base/captain
	name = "\improper Captain Quarter"
	icon_state = "C"

/area/europa_base/first_officer
	name = "\improper First Officer Quarter"
	icon_state = "F"

/area/europa_base/quarters
	name = "\improper Crew Quarters"
	icon_state = "A"

/area/europa_base/lockers
	name = "\improper Lockers"
	icon_state = "C"

/area/europa_base/lougue
	name = "\improper Lougue"
	icon_state = "X"

/area/europa_base/primary_tool
	name = "\improper Primary Tool Storage"
	icon_state = "D"

/area/europa_base/diving
	name = "\improper Diving Equipament"
	icon_state = "F"

/area/europa_base/emergency
	name = "\improper Emergency Equipament"
	icon_state = "F"

/area/europa_base/maintence
	name = "\improper Maintence"
	icon_state = "shipping"
	sound_env = TUNNEL_ENCLOSED
	forced_ambience = list('sound/ambience/maintambience.ogg')
	area_flags = AREA_FLAG_RAD_SHIELDED

/////////////Ocean
/area/europa_ocean
	name = "Europa Ocean"
	icon = 'maps/2020_Maps/europa/areas.dmi'
	icon_state = "ocean"
//	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/natural/seafloor/flooded/europa
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES
