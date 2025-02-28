/area/ss13
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CREW

//Hallways
/area/ss13/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/ss13/hallway/lab_access
	name = "\improper Laboratory Access Hallway"
	icon_state = "hallC1"

/area/ss13/hallway/south_access
	name = "\improper South Access Corridor"
	icon_state = "hallS"

/area/ss13/hallway/control_access
	name = "\improper Control Access"
	icon_state = "bridge_hallway"

/area/ss13/hallway/lounge_hall
	name = "\improper Lounge Hall"
	icon_state = "hallC2"

/area/ss13/hallway/arrival
	name = "\improper Arrival Hallway"
	icon_state = "entry_1"

/area/ss13/hallway/east_airlock
	name = "\improper East Airlock"
	icon_state = "entry_1"

/area/ss13/hallway/shuttle_airlock
	name = "\improper Shuttle Airlock"
	icon_state = "escape"

/area/ss13/hallway/central
	name = "\improper Central Hallway"
	icon_state = "hallC3"


//Quartermaster.
/area/ss13/quartermaster_entrace
	name = "\improper Quartermasters Entrace"
	icon_state = "quart"

/area/ss13/quartermaster
	name = "\improper Quartermasters"
	icon_state = "quartoffice"
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/ss13/quartermaster/storage
	name = "\improper Quartermasters Storage"
	icon_state = "quartstorage"

/area/ss13/quartermaster/dock
	name = "\improper Quartermasters Dock"
	icon_state = "quart"

//Engineering.
/area/ss13/engineering
	name = "\improper Engineering Hallway"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/ss13/engineering/aux_engine
	name = "\improper Aux. Engine"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/ss13/engineering/generator
	name = "\improper Generator Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/ss13/engineering/resting
	name = "\improper Engineering Resting Room"
	icon_state = "engineering_break"
	sound_env = LARGE_ENCLOSED

/area/ss13/engineering/engineering_monitor
	name = "\improper Engineering Monitoration Room"
	icon_state = "engine_monitoring"

/area/ss13/engineering/gas_storage
	name = "\improper Engineering Gas Storage"
	icon_state = "engineering_supply"
	sound_env = SMALL_ENCLOSED

/area/ss13/engineering/engine_storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/ss13/engineering/engine_control
	name = "\improper Engine Control"
	icon_state = "engineering_foyer"

/area/ss13/engineering/telecomms_control
	name = "Telecommunications Control"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_tcomsat)

/area/ss13/engineering/telecomms_in
	name = "Telecommunications Chamber"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_tcomsat)

/area/ss13/engineering/north_solar
	name = "\improper North Solar"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED

/area/ss13/engineering/south_solar
	name = "\improper South Solar"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED

//Atmos
/area/ss13/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_atmospherics)

/area/ss13/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"

//Science
/area/ss13/research
	name = "\improper Research and Development"
	icon_state = "research"
	req_access = list(access_research)
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE

/area/ss13/research/toxin
	name = "\improper Toxin Lab"
	icon_state = "toxlab"

/area/ss13/research/gas_storage
	name = "\improper Toxin Gas Storage"
	icon_state = "toxstorage"

/area/ss13/research/flora
	name = "\improper Flora Research Lab"
	icon_state = "xeno_f_lab"

//MEDBAY

/area/ss13/medical
	req_access = list(access_medical)
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/ss13/medical/medbay
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/ss13/medical/medbay_research
	name = "\improper Medbay Research"
	icon_state = "medbay4"

/area/ss13/medical/surgery
	name = "\improper Medbay Surgery"
	icon_state = "medbay3"

/area/ss13/medical/chemistry
	name = "\improper Medical Chemistry Lab"
	icon_state = "chem"

/area/ss13/medical/storage
	name = "\improper Medical Storage"
	icon_state = "medbay2"

/area/ss13/medical/exam
	name = "\improper Medical Examination"
	icon_state = "exam_room"

/area/ss13/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

//Security / Command
/area/ss13/security
	name = "\improper Security"
	icon_state = "security"
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/ss13/bridge
	name = "\improper Control Room"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/ss13/heads
	name = "\improper Heads Office"
	icon_state = "heads"
	req_access = list(access_heads)

/area/ss13/captain
	name = "\improper Captain Room"
	icon_state = "captain"
	req_access = list(access_captain)

/area/ss13/security/armoury
	name = "\improper Security Armory"
	icon_state = "armory"
	req_access = list(access_armory)

/area/ss13/security/annex
	name = "\improper Security Annex"
	icon_state = "checkpoint1"

/area/ss13/court
	name = "\improper Court"
	icon_state = "courtroom"

//Crew Quarter
/area/ss13/crew_quarters
	name = "\improper Crew Quarters"
	icon_state = "crew_quarters"

/area/ss13/crew_quarters/sleep_area
	name = "\improper Sleep Area"
	icon_state = "Sleep"

/area/ss13/crew_quarters/cryo
	name = "\improper Cryo"
	icon_state = "cryo"

/area/ss13/crew_quarters/Lounge
	name = "\improper Loungue"
	icon_state = "conference"

/area/ss13/crew_quarters/mess
	name = "\improper Mess Hall"
	icon_state = "cafeteria"

/area/ss13/crew_quarters/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/ss13/crew_quarters/hydro
	name = "\improper Hydrophonics"
	icon_state = "hydro"

/area/ss13/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/ss13/chapel
	area_flags = AREA_FLAG_HOLY

/area/ss13/chapel/main
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

/area/ss13/chapel/office
	name = "\improper Chapel Office"
	icon_state = "chapeloffice"
	req_access = list(access_chapel_office)

//Misc.
/area/ss13/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"
	req_access = list(access_teleporter)

/area/ss13/storage/emergency
	name = "Emergency Storage"
	icon_state = "emergencystorage"

/area/ss13/storage/auxiliary
	name = "Aux. Storage"
	icon_state = "auxstorage"

/area/ss13/storage/technical
	name = "Technical Storage"
	icon_state = "primarystorage"

/area/ss13/storage/tool
	name = "Tool Storage"
	icon_state = "yellow"

/area/ss13/storage/eva
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
	dynamic_lighting = TRUE
	req_access = list(access_cent_general)

/area/centcom/armory
	name = "\improper Centcom Armory"
	req_access = list(access_cent_specops)

//Solar
/area/ss13/solar
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space

/area/ss13/solar/north
	name = "\improper North Solar Array"
	icon_state = "panelsA"

/area/ss13/solar/south
	name = "\improper South Solar Array"
	icon_state = "panelsP"

/area/ss13/solar/west
	name = "\improper West Solar Array"
	icon_state = "panelsS"

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