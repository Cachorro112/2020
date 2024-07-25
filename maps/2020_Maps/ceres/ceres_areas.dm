/datum/event/prison_break/medical
	areaType = list(/area/ceres/medical)

/datum/event/prison_break/science
	areaType = list(/area/ceres/science)

/datum/event/prison_break/station
	areaType = list(/area/ceres/security)

/area/ceres
	name = "\improper ceres"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/2020_Maps/ceres/icons/ceres_areas.dmi'
	icon_state = "default"
	holomap_color = HOLOMAP_AREACOLOR_CREW

//Hallways
/area/ceres/hall
	icon_state = "white"
	area_flags = AREA_FLAG_HALLWAY
	holomap_color = HOLOMAP_AREACOLOR_HALLWAYS

/area/ceres/hall/central
	name = "\improper Central Hallway"

/area/ceres/hall/north
	name = "\improper North Hallway"

/area/ceres/hall/eng
	name = "\improper Engineering Hallway"

//Maintenance
/area/ceres/maint
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE
	req_access = list(access_maint_tunnels)
	turf_initializer = /decl/turf_initializer/maintenance
	icon_state = "orange"
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_MAINTENANCE

//Departments
/area/ceres/hop
	name = "\improper Executive Officer Office"
	req_access = list(access_hop)
	secure = TRUE
	icon_state = "dark_blue"

/area/ceres/janitor
	name = "\improper Custodial Closet"
	req_access = list(access_janitor)
	icon_state = "janitor"

/area/ceres/cargo
	name = "\improper Mining Bay"
	req_access = list(access_mining)
	icon_state = "brown"
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/ceres/bridge
	name = "\improper Bridge"
	req_access = list(access_heads)
	secure = TRUE
	icon_state = "dark_blue"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/ceres/bridge/vault
	name = "\improper Vault"
	req_access = list(access_heads_vault)
	ambience = list()
	icon_state = "green"

/area/ceres/security
	name = "\improper Security Office"
	req_access = list(access_security)
	secure = TRUE
	icon_state = "red"
	area_flags = AREA_FLAG_SECURITY

/area/ceres/security/equip
	name = "\improper Security Equipment"

/area/ceres/security/cos
	name = "\improper Chief of Security Office"

/area/ceres/detective
	name = "\improper Detective Office"
	req_access = list(access_forensics_lockers)
	secure = TRUE
	icon_state = "dark_blue"

/area/ceres/atmospherics
	name = "\improper Atmospherics"
	req_access = list(access_atmospherics)
	icon_state = "ATMOS"
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/ceres/science
	name = "\improper Research & Development Laboratory"
	req_access = list(access_robotics)
	secure = TRUE
	icon_state = "purple"

/area/ceres/science/archeology
	name = "\improper Archeology Laboratory"

/area/ceres/science/paperwork
	name = "\improper RD Paperwork"

/area/ceres/science/anonmaly
	name = "\improper Anomaly Laboratory"

/area/ceres/science/chemist
	name = "\improper Chemist Laboratory"

/area/ceres/eva
	name = "\improper EVA Storage"
	req_access = list(access_eva)
	secure = TRUE
	icon_state = "dark_blue"

/area/ceres/medical
	name = "\improper Medical Bay"
	req_access = list(access_medical)
	icon_state = "light_blue"
	secure = TRUE
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/ceres/medical/ward
	name = "\improper Patient Ward"

/area/ceres/medical/chemist
	name = "\improper Pharmacy"

/area/ceres/medical/isolation
	name = "\improper Isolation"

/area/ceres/medical/hdoffice
	name = "\improper Head Doctor Office"

/area/ceres/medical/breakroom
	name = "\improper Medical Breakroom"

/area/ceres/dorms
	name = "\improper Dormatories"
	req_access = list()
	icon_state = "red"
	secure = FALSE

/area/ceres/hydro
	name = "\improper Hydroponics"
	req_access = list(access_hydroponics)
	icon_state = "green"

/area/ceres/cafe // no access requirement to get in. inner doors need access kitchen
	name = "\improper Cafeteria"
	icon_state = "red"
	secure = TRUE

/area/ceres/engine
	name = "Engineering"
	req_access = list(access_engine_equip)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "yellow"
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/ceres/engine/breakroom
	name = "Engineering Breakroom"

/area/ceres/engine/equip
	name = "Engineering Equipment"

/area/ceres/fission
	name = "\improper Fission Engine"
	req_access = list(access_engine)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "brown"

/area/ceres/smcontrol
	name = "\improper Supermatter Control"
	req_access = list(access_engine)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "red"

/area/ceres/telecomms
	name = "\improper Telecommunications Control"
	req_access = list(list(access_engine),list(access_heads)) //can get inside to monitor but not actually access anything important. Inner doors have tcomm access
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')
	secure = TRUE
	icon_state = "light_blue"
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/ceres/shuttle/outgoing
	name = "\improper General Propouse Shuttle"
	icon_state = "shuttle"

/area/shuttle/escape_shuttle
	name = "\improper Emergency Shuttle"
	icon_state = "shuttle"