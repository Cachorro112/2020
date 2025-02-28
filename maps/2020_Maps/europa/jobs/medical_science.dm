/datum/job/doctor
	title = "Medical Doctor"
	description = "Maintaining the key resource: the people. Medical Doctors are capable of creating various drugs on the Chemistry Lab, as well as diagnosing and treating the diseases and injures that hinder the crew."
	department_types = list(/decl/department/medical)
	minimal_player_age = 3
	total_positions = 2
	spawn_positions = 2
	supervisors = "the captain."
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
		SKILL_CHEMISTRY= SKILL_ADEPT,
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
		SKILL_ANATOMY   = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)
	skill_points = 22
	event_categories = list(ASSIGNMENT_MEDICAL)

/datum/job/scientist
	title = "Researcher"
	description = "The brain of the base, or maybe the person who will doom the base. You job is research new technologys and study the deeps of Europa, Study artifacts and try not create a Nether portal that will destroy Europa."
	department_types = list(/decl/department/science)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the captain."
	selection_color = "#633d63"
	economic_power = 7
	access = list(
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch,
		access_hydroponics
	)
	minimal_access = list(
		access_tox,
		access_tox_storage,
		access_research,
		access_xenoarch,
		access_xenobiology,
		access_hydroponics
	)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/science/researcher
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES  = SKILL_BASIC,
		SKILL_SCIENCE  = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_ANATOMY  = SKILL_MAX,
	    SKILL_DEVICES  = SKILL_MAX,
	    SKILL_SCIENCE  = SKILL_MAX
	)
	skill_points = 20
	event_categories = list(ASSIGNMENT_SCIENTIST)