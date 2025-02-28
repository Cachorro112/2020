/area/sov_asteroid
	name = "\improper Central Hallway"
	icon_state = "halls"
	icon = 'maps/2020_Maps/sergiyev/areas.dmi'
	base_turf = /turf/floor/natural/ice

/area/sov_asteroid/north_hall
	name = "\improper North Hallway"
	icon_state = "B"

/area/sov_asteroid/east_hall
	name = "\improper East Hallway"
	icon_state = "C"

/area/sov_asteroid/engineering
	name = "\improper Engineering"
	icon_state = "processing"

/area/sov_asteroid/engine
	name = "\improper Engine"
	icon_state = "X"

/area/sov_asteroid/maintence
	name = "\improper Central Maintence"
	icon_state = "shipping"
	sound_env = TUNNEL_ENCLOSED
	forced_ambience = list('sound/ambience/maintambience.ogg')
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/sov_asteroid/maintence_2
	name = "\improper South Maintence"
	icon_state = "shipping"
	sound_env = TUNNEL_ENCLOSED
	forced_ambience = list('sound/ambience/maintambience.ogg')
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/sov_asteroid/nuke
	name = "\improper Self Destruction Device Vault"
	icon_state = "nuke"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/sov_asteroid/network
	name = "\improper Network"
	icon_state = "processing"

/area/sov_asteroid/atmospherics
	name = "\improper Atmospherics"
	icon_state = "shipping"

/area/sov_asteroid/bathroom
	name = "\improper Lavatory"
	icon_state = "shower"

/area/sov_asteroid/custodial
	name = "\improper Custodial"
	icon_state = "shower"

/area/sov_asteroid/commons
	name = "\improper Common Area"
	icon_state = "A"

/area/sov_asteroid/messhall
	name = "\improper Mess Hall"
	icon_state = "B"

/area/sov_asteroid/tcomms
	name = "\improper Communication"
	icon_state = "C"

/area/sov_asteroid/jail
	name = "\improper Jail"
	icon_state = "D"

/area/sov_asteroid/security
	name = "\improper Security"
	icon_state = "F"

/area/sov_asteroid/hydroponics
	name = "\improper Hydroponics Bay"
	icon_state = "X"

/area/sov_asteroid/airlock
	name = "\improper Primary External Airlock"
	icon_state = "airlock"

/area/sov_asteroid/medbay
	name = "\improper Hospital"
	icon_state = "D"

/area/sov_asteroid/surgery
	name = "\improper Operating Theatre"
	icon_state = "F"

/area/sov_asteroid/mineralprocessing
	name = "\improper Mineral Process"
	icon_state = "A"
	is_outside = OUTSIDE_YES

/area/sov_asteroid/mineequip
	name = "\improper Mining Equip"
	icon_state = "B"

/area/sov_asteroid/command
	name = "\improper Operations Center"
	icon_state = "B"

/area/sov_asteroid/command_quarter
	name = "\improper Commanding Quartes"
	icon_state = "B"

/area/sov_asteroid/meeting
	name = "\improper Meeting Room"
	icon_state = "F"

/area/sov_asteroid/co_office
	name = "\improper Commanding Officer Office"
	icon_state = "C"

/area/sov_asteroid/dc_officer
	name = "\improper Deputy Commander Office"
	icon_state = "X"

/area/sov_asteroid/dorms
	name = "\improper Dormitories"
	icon_state = "C"

/area/sov_asteroid/outpost
	name = "\improper Auxiliary Outpost"
	icon_state = "A"

/area/sov_asteroid/dock
	name = "\improper Sergiyev Dock"
	icon_state = "X"
	base_turf = /turf/space

/////////////Science Outpost
/area/science
	name = "\improper Laboratory"
	icon = 'maps/2020_Maps/sergiyev/areas.dmi'
	icon_state = "C"
	base_turf = /turf/floor/natural/ice

/area/science/science_dock
	name = "\improper Laboratory Dock"
	icon_state = "F"
	base_turf = /turf/space

/area/science/science_engineering
	name = "\improper Laboratory Engineering"
	icon_state = "processing"
	base_turf = /turf/space

/area/science/science_canteen
	name = "\improper Laboratory Canteen"
	icon_state = "B"
	base_turf = /turf/space

/area/science/science_anomaly
	name = "\improper Anomaly Laboratory"
	icon_state = "A"

/area/science/science_airlock
	name = "\improper Laboratory Airlock"
	icon_state = "airlock"
/////////////Asteroid
/area/mine_sov
	icon_state = "asteroid"
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/natural/ice
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES

/area/mine_sov2
	icon_state = "asteroid"
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/natural/ice
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES

/area/mine_sov3
	icon_state = "asteroid"
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/natural/ice
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES
//////////////////Centcom
/area/centcom
	name = "\improper Centcom"
	icon_state = "centcom"
	requires_power = FALSE
	dynamic_lighting = FALSE
	req_access = list(access_cent_general)