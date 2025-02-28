/datum/job/engineer
	title = "Engineer"
	department_types = list(/decl/department/engineering)

	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_BASIC,
	    SKILL_EVA          = SKILL_ADEPT,
	    SKILL_CONSTRUCTION = SKILL_EXPERT,
	    SKILL_ELECTRICAL   = SKILL_EXPERT,
	    SKILL_ATMOS        = SKILL_BASIC,
	    SKILL_ENGINES      = SKILL_EXPERT
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
	    SKILL_ELECTRICAL   = SKILL_MAX,
	    SKILL_ATMOS        = SKILL_EXPERT,
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

/datum/job/technician
	title = "Technician"
	department_types = list(/decl/department/engineering)

	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	outfit_type = /decl/hierarchy/outfit/job/engineering/technician
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_EXPERT,
	    SKILL_EVA          = SKILL_BASIC,
	    SKILL_CONSTRUCTION = SKILL_BASIC,
	    SKILL_ELECTRICAL   = SKILL_EXPERT,
	    SKILL_ATMOS        = SKILL_BASIC,
	    SKILL_ENGINES      = SKILL_BASIC
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
	    SKILL_ELECTRICAL   = SKILL_MAX,
	    SKILL_ATMOS        = SKILL_EXPERT,
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

/datum/job/atmos_tech
	title = "Atmospheric Technician"
	department_types = list(/decl/department/engineering)

	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	outfit_type = /decl/hierarchy/outfit/job/engineering/atmos
	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_BASIC,
	    SKILL_EVA          = SKILL_ADEPT,
	    SKILL_CONSTRUCTION = SKILL_EXPERT,
	    SKILL_ELECTRICAL   = SKILL_EXPERT,
	    SKILL_ATMOS        = SKILL_BASIC,
	    SKILL_ENGINES      = SKILL_EXPERT
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
	    SKILL_ELECTRICAL   = SKILL_MAX,
	    SKILL_ATMOS        = SKILL_MAX,
	    SKILL_ENGINES      = SKILL_MAX
	)
	skill_points = 20
	software_on_spawn = list(
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmos_control
	)
	event_categories = list(ASSIGNMENT_ENGINEER)

/datum/job/qm
	title = "Quartermaster"
	selection_color = "#5b4d20"
	department_types = list(/decl/department/engineering)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	economic_power = 5
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_player_age = 3
	outfit_type = /decl/hierarchy/outfit/job/qm
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
	    SKILL_FINANCE  = SKILL_BASIC,
	    SKILL_HAULING  = SKILL_BASIC,
	    SKILL_EVA      = SKILL_BASIC,
	    SKILL_PILOT    = SKILL_BASIC
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)
	skill_points = 18
	software_on_spawn = list(
		/datum/computer_file/program/supply,
		/datum/computer_file/program/deck_management,
		/datum/computer_file/program/reports
	)

/datum/job/miner
	title = "Miner"
	selection_color = "#5b4d20"
	department_types = list(/decl/department/engineering)
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of personnel"
	economic_power = 5
	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage,
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	outfit_type = /decl/hierarchy/outfit/job/engineering/mining
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_HAULING  = SKILL_ADEPT,
	    SKILL_EVA      = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)