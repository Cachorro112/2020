/area/charlie
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CREW

//Hallways
/area/charlie/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/charlie/hallway/central
	name = "\improper Charlie Sector"
	icon_state = "hallC1"

/area/charlie/hallway/east
	name = "\improper Delta Sector"
	icon_state = "hallS"

/area/charlie/hallway/west
	name = "\improper Beta Sector"
	icon_state = "hallF2"

//Maintence
/area/charlie/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_MAINTENANCE

/area/charlie/maintenance/deltamaintence1
	name = "\improper Delta Maintenance 1"
	icon_state = "fmaint"
/area/charlie/maintenance/deltamaintence2
	name = "\improper Delta Maintenance 2"
	icon_state = "pmaint"

//Engineering
/area/charlie/engineering
	name = "\improper Engineering"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/charlie/engineering/charlie_solar
	name = "\improper Charlie Sector Engineering"
	icon_state = "SolarcontrolS"

/area/charlie/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_atmospherics)

/area/charlie/engineering/telecomms
	name = "Telecommunications Chamber"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_tcomsat)

/area/charlie/engineering/monitor
	name = "Engineering Monitoring"
	sound_env = SMALL_ENCLOSED

//Security
/area/charlie/security
	name = "\improper Security"
	icon_state = "security"
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

//Storage
/area/charlie/storage
	name = "\improper Storage"
	icon_state = "primarystorage"

/area/charlie/storage/eva
	name = "\improper EVA Storage"
	icon_state = "eva"

/area/charlie/storage/generator
	name = "\improper Charlie Station Emergency Generator"
	icon_state = "yellow"

//Science
/area/charlie/research
	name = "\improper Research and Development"
	icon_state = "research"
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE

/area/charlie/research/anomaly
	name = "\improper Xeno-Biology/Archeology Lab"
	icon_state = "xeno_lab"
	req_access = list(access_research)

//Medbay
/area/charlie/medical
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')
	area_flags = AREA_FLAG_RAD_SHIELDED
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

//Bridge
/area/charlie/bridge
	name = "\improper Bridge Room"
	icon_state = "bridge"
	req_access = list(access_bridge)

//Civilian
/area/charlie/crew_quarters
	name = "\improper Charlie Station Dorms"
	icon_state = "crew_quarters"

/area/charlie/crew_quarters/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/charlie/crew_quarters/hydro
	name = "\improper Hydrophonics"
	icon_state = "hydro"

//Mining
/area/charlie/mining
	name = "\improper Mining"
	icon_state = "mining"

//Solar
/area/charlie/solar
	name = "Charlie Station Solar"
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space