/datum/job/engineer
	title = "Engineer"
	description = "The one who harnesses the power of nature. Engineers have above-average construction and mechanic skills, but fixing complex mechanical devices is still usually out of their skill set. They are competent at fixing electrical devices however, and are the ones to turn to when the power grid starts failing."
	department_types = list(/decl/department/engineering)

	total_positions = 3
	spawn_positions = 3
	supervisors = "the captain."
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage
	)
	alt_titles = list(
		"Engine Technician",
		"Atmospheric Technician" = /decl/hierarchy/outfit/job/engineering/atmos)

	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_BASIC,
	    SKILL_EVA          = SKILL_BASIC,
	    SKILL_CONSTRUCTION = SKILL_BASIC,
	    SKILL_ELECTRICAL   = SKILL_EXPERT,
	    SKILL_ATMOS        = SKILL_ADEPT,
	    SKILL_ENGINES      = SKILL_EXPERT
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_ADEPT,
	    SKILL_ELECTRICAL   = SKILL_MAX,
	    SKILL_ATMOS        = SKILL_MAX,
	    SKILL_ENGINES      = SKILL_MAX
	)
	skill_points = 20
	software_on_spawn = list(
		/datum/computer_file/program/power_monitor,
		/datum/computer_file/program/supermatter_monitor,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmos_control,
		/datum/computer_file/program/rcon_console,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/shields_monitor
	)
	event_categories = list(ASSIGNMENT_ENGINEER)

/datum/job/mechanic
	title = "Mechanic"
	description = "Glue, duct tape and your nerve are the only things keeping the crew alive. Mechanics have high construction and mechanic skills. They are usually the only ones who can fix broken mechanical devices."
	department_types = list(/decl/department/engineering)

	total_positions = 3
	spawn_positions = 3
	supervisors = "the captain."
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage
	)
	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_EXPERT,
	    SKILL_EVA          = SKILL_ADEPT,
	    SKILL_CONSTRUCTION = SKILL_EXPERT,
	    SKILL_ELECTRICAL   = SKILL_BASIC,
	    SKILL_ATMOS        = SKILL_BASIC,
	    SKILL_ENGINES      = SKILL_BASIC
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
	    SKILL_ELECTRICAL   = SKILL_ADEPT,
	    SKILL_ATMOS        = SKILL_ADEPT,
	    SKILL_ENGINES      = SKILL_ADEPT
	)
	skill_points = 20
	software_on_spawn = list(
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmos_control
	)
	event_categories = list(ASSIGNMENT_ENGINEER)