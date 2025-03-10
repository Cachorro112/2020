/area/facility
	name = "\improper Facility"
	icon_state = "unknown"
	abstract_type = /area/facility
	allow_xenoarchaeology_finds = FALSE
	base_turf = /turf/floor/rock/basalt

/area/shuttle/arrival
	name = "\improper Arrival Shuttle"
	icon_state = "shuttle"

/area/facility/gatea_maintence
	name = "\improper Gate A Maintence"
	icon_state = "auxstorage"
	req_access = list(access_maint_tunnels)

/area/facility/gatea_control
	name = "\improper Gate A Control Room"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/facility/backup_servers
	name = "\improper Backup Servers"
	icon_state = "purple"
	req_access = list(access_research)

/area/facility/outside
	name = "\improper Surface"
	color = COLOR_GREEN
	is_outside = OUTSIDE_YES
	ambience = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)
	area_blurb_category = /area/facility/outside
	interior_ambient_light_modifier = -0.3

/area/facility/outside/gate_a
	name = "\improper Gate A Outside"
	icon_state = "dk_yellow"

/area/facility/engineering
	name = "\improper Engineering"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/facility/engineering/reactor
	name = "\improper Fusion Reactor Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/facility/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/facility/engineering/hallway
	name = "\improper Engineering Hallway"
	icon_state = "engineering_foyer"

/area/facility/engineering/eng_director
	name = "\improper Engineering Director office"
	icon_state = "heads_ce"

/area/facility/engineering/atmos
	name = "\improper Engineering Ventilation System"
	icon_state = "atmos"

/area/facility/engineering/observation
	name = "\improper Reactor Observation"
	icon_state = "engine_monitoring"

/area/facility/hallway/hallway1
	name = "Main Entrace Hallway"
	area_flags = AREA_FLAG_HALLWAY
	icon_state = "hallA"

/area/facility/hallway/hallway2
	name = "Second Row Hallway"
	area_flags = AREA_FLAG_HALLWAY
	icon_state = "hallC2"

/area/facility/hallway/hallway3
	name = "Third Row Hallway"
	area_flags = AREA_FLAG_HALLWAY
	icon_state = "hallF"

/area/facility/hallway/command_sector
	name = "Command Sector"
	area_flags = AREA_FLAG_HALLWAY
	icon_state = "bridge"

/area/facility/hallway/gate_a
	name = "\improper Gate A Entrace"
	icon_state = "hallF"

///Sevice shit
/area/facility/service/cafeteria
	name = "\improper Cafeteria"
	icon_state = "dk_yellow"

/area/facility/service/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/facility/service/hydro
	name = "\improper Hydrophonics"
	icon_state = "hydro"

/area/facility/service/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR


///Security
/area/facility/security
	name = "Debug Security"
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

///Science
/area/facility/research
	name = "\improper Research and Development"
	icon_state = "research"
	req_access = list(access_research)
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE

/area/facility/research/chemistry
	name = "\improper Chemical Research"
	icon_state = "chem"

/area/facility/medical
	req_access = list(access_medical)
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/facility/medical/medbay
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/facility/medical/medbay2
	name = "\improper Medbay Hallway"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')

/area/facility/medical/exam
	name = "\improper Examination Room"
	icon_state = "exam_room"
	req_access = list(access_medical)

/area/facility/medical/surgery
	name = "\improper Surgery Room"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/facility/medical/storage
	name = "\improper Storage Room"
	icon_state = "medbay3"
	req_access = list(access_medical_equip)

/area/facility/medical/pharmacy
	name = "\improper Pharmacy"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/facility/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)