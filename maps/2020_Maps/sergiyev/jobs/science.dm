/datum/job/scientist
	title = "Researcher"
	department_types = list(/decl/department/science)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Commanding Officer and the Deputy Commander"
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
	outfit_type = /decl/hierarchy/outfit/job/science/scientist
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

/obj/item/card/id/science
	name = "identification card"
	desc = "A card issued to science staff."
	detail_color = COLOR_PALE_PURPLE_GRAY