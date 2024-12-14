/datum/job/subject
	title = "Subject"
	description = "As a Subject Employee, you don't know how you end up here, the memories are confused, but you know who you are... REMEMBER: Rioting as Subject is prohibited without staff approval, so Ahelp and ask before doing it. IMPORTANT! Do not try to break out of your cell at game start. You will break your only way out!"
	selection_color = "#E55700"
	total_positions = 20
	spawn_positions = 20
	supervisors = "Mortensen Personnel"
	economic_power = 1
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/subject
	department_types = list(/decl/department/civilian)

///// Logistic /////
/datum/job/logistic_officer
	title = "Logistic Officer"
	department_types = list(/decl/department/logistic)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the human resources officer"
	economic_power = 5
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/logistic/logistic_officer
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

/datum/job/logistic_spec
	title = "Logistic Specialist"
	department_types = list(/decl/department/logistic)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the logistic officer"
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_access = list(
		access_maint_tunnels,
		access_cargo,
		access_cargo_bot,
		access_mailsorting
	)
	outfit_type = /decl/hierarchy/outfit/job/logistic/logistic_spec
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC,
		SKILL_HAULING  = SKILL_BASIC
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/supply,
		/datum/computer_file/program/deck_management,
		/datum/computer_file/program/reports
	)