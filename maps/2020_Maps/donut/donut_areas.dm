/area/donut
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CREW

//Hallways
/area/donut/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/donut/hallway/south
	name = "\improper South Hallway"
	icon_state = "hallF"

/area/donut/hallway/east
	name = "\improper East Hallway"
	icon_state = "hallS"

/area/donut/hallway/west
	name = "\improper West Hallway"
	icon_state = "hallA"

/area/donut/hallway/north
	name = "\improper North Hallway"
	icon_state = "hallP"

/area/donut/hallway/exit
	name = "\improper Escape Hallway"
	icon_state = "escape"

/area/donut/hallway/entry
	name = "\improper Arrival Hallway"
	icon_state = "entry_1"

//Security / Command
/area/donut/security
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/donut/bridge
	name = "\improper Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/donut/bridge_lobby
	name = "\improper Bridge Lobby"
	icon_state = "bridge"
	req_access = list()

/area/donut/security/bridge_entrace
	name = "\improper Bridge Entrace"
	icon_state = "security"
	req_access = list(access_security)

/area/donut/security/cells
	name = "\improper Security Cells"
	icon_state = "brig"

/area/donut/security/armoury
	name = "\improper Security Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/donut/security/security
	name = "\improper Security"
	icon_state = "security"

/area/donut/security/detectives_office
	name = "\improper Detective Office"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/donut/security/security_post
	name = "\improper Security Post"
	icon_state = "security"


//Engineering.
/area/donut/engineering
	name = "\improper Engineering"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/donut/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/donut/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/donut/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/donut/engineering/chamber
	name = "\improper Engine Burning Chamber"
	icon_state = "engineering_foyer"

/area/donut/engineering/telecomms
	name = "Telecommunications"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_tcomsat)

//Atmos
/area/donut/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

//Science
/area/donut/research
	name = "\improper Research and Development"
	icon_state = "research"
	req_access = list(access_research)
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE

/area/donut/research/lab
	name = "\improper Toxin Research Lab"
	icon_state = "toxlab"

//Quartermaster.
/area/donut/quartermaster
	name = "\improper Quartermasters"
	icon_state = "quart"
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

//Crew Quarter
/area/donut/crew_quarters
	name = "\improper Dormitories"
	icon_state = "Sleep"

/area/donut/crew_quarters/kitchen
	name = "\improper Cafeteria"
	icon_state = "kitchen"

/area/donut/crew_quarters/hydro
	name = "\improper Hydrophonics"
	icon_state = "hydro"

/area/donut/crew_quarters/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/donut/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/donut/crew_quarters/toilet
	name = "\improper Toilets"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

//Chapel
/area/donut/chapel
	area_flags = AREA_FLAG_HOLY

/area/donut/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"
	sound_env = LARGE_ENCLOSED
	ambience = list(
		'sound/ambience/ambicha1.ogg',
		'sound/ambience/ambicha2.ogg',
		'sound/ambience/ambicha3.ogg',
		'sound/ambience/ambicha4.ogg',
		'sound/music/traitor.ogg'
	)

/area/donut/chapel/office
	name = "\improper Chapel Office"
	icon_state = "chapeloffice"
	req_access = list(access_chapel_office)

//MEDBAY

/area/donut/medical
	req_access = list(access_medical)
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/donut/medical/medbay
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/donut/medical/research
	name = "\improper Medical Research"
	icon_state = "chem"

/area/donut/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

//Maintence
/area/donut/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_MAINTENANCE

/area/donut/maintenance/security
	name = "\improper Security Maintenance"
	icon_state = "maint_security_port"
	req_access = list(access_security)

/area/donut/maintenance/medbay
	name = "\improper Medbay Maintenance"
	icon_state = "maint_medbay"

/area/donut/maintenance/south
	name = "\improper South Maintenance"
	icon_state = "fpmaint"

/area/donut/maintenance/arrivals
	name = "\improper Arrivals Maintenance"
	icon_state = "maint_arrivals"

/area/donut/maintenance/crew
	name = "\improper Crew Maintenance"
	icon_state = "maint_locker"

/area/donut/maintenance/chapel
	name = "\improper Chapel Maintenance"
	icon_state = "maint_locker"

//Misc.
/area/donut/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"
	req_access = list(access_teleporter)

/area/donut/storage/emergency
	name = "North Emergency Storage"
	icon_state = "emergencystorage"

/area/donut/storage/primary
	name = "Tool Storage"
	icon_state = "primarystorage"

/area/donut/storage/eva
	name = "\improper EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

//Shuttles
/area/shuttle/arrival
	name = "\improper Arrival Shuttle"
	icon_state = "shuttle"

//Centcom
/area/centcom
	name = "\improper Centcom"
	icon_state = "centcom"
	requires_power = FALSE
	dynamic_lighting = FALSE
	req_access = list(access_cent_general)

//Mining
/area/mining/solar
	name = "\improper Mining Solar Array"
	icon_state = "panelsA"
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space

/area/mining
	name = "Mining Outpost Equipment"
	icon_state = "mining"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	sound_env = STANDARD_STATION
	base_turf = /turf/floor/natural/barren
	req_access = list(list(access_mining, access_xenoarch))

/area/mining/hangar
	name = "Mining Outpost Hangar"
	sound_env = LARGE_ENCLOSED
	icon_state = "mining_living"

/area/mining/recreation
	name = "Mining Outpost Recreation Section"
	icon_state = "crew_quarters"

/area/mining/kitchen
	name = "Mining Outpost Kitchen"
	icon_state = "kitchen"

/area/mining/toilet
	name = "Mining Outpost Restroom"
	sound_env = SMALL_ENCLOSED
	icon_state = "toilet"

/area/mining/power
	name = "Mining Outpost Solar Control"
	icon_state = "engine_smes"

/area/mining/atmos
	name = "Mining Outpost Atmospheric"
	icon_state = "atmos"

/area/mining/eva
	name = "Mining Outpost EVA"
	icon_state = "mining_eva"

/area/mining/central
	name = "Mining Outpost Central"
	icon_state = "mining_living"

/area/mining/maints
	name = "Mining Outpost Maintenance"
	icon_state = "asmaint"

/area/mining/medical
	name = "Mining Outpost Medical Comparement"
	icon_state = "medbay"

/area/mining/relay // Will be not used, yet.
	name = "Mining Outpost Communication Relay"

/area/mine_asteroid
	name = "Asteroid"
	icon_state = "cave"
	ambience = list('sound/ambience/ambimine.ogg', 'sound/ambience/song_game.ogg')
	sound_env = ASTEROID
	base_turf = /turf/floor/natural/barren
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_EXTERNAL
	is_outside = OUTSIDE_YES