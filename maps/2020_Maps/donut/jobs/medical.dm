/datum/job/doctor
	title = "Medical Doctor"
	department_types = list(/decl/department/medical)
	minimal_player_age = 3
	total_positions = 5
	spawn_positions = 3
	supervisors = "the chief medical officer"
	selection_color = "#013d3b"
	economic_power = 7
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks,
		access_psychiatrist
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
	)
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA      = SKILL_BASIC,
		SKILL_MEDICAL  = SKILL_ADEPT,
		SKILL_ANATOMY  = SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)
	skill_points = 22
	event_categories = list(ASSIGNMENT_MEDICAL)