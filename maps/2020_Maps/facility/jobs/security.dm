/datum/job/guard_commander
	title = "Guard Commander"
	head_position = 1
	department_types = list(
		/decl/department/security,
		/decl/department/command
	)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the site director"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_power = 10
	access = list(
		access_security,
		access_eva,
		access_sec_doors,
		access_brig,
		access_armory,
		access_heads,
		access_forensics_lockers,
		access_morgue,
		access_maint_tunnels,
		access_all_personal_lockers,
		access_research,
		access_engine,
		access_mining,
		access_medical,
		access_construction,
		access_mailsorting,
		access_bridge,
		access_hos,
		access_RC_announce,
		access_keycard_auth,
		access_gateway,
		access_external_airlocks
	)
	minimal_access = list(
		access_security,
		access_eva,
		access_sec_doors,
		access_brig,
		access_armory,
		access_heads,
		access_forensics_lockers,
		access_morgue,
		access_maint_tunnels,
		access_all_personal_lockers,
		access_research,
		access_engine,
		access_mining,
		access_medical,
		access_construction,
		access_mailsorting,
		access_bridge,
		access_hos,
		access_RC_announce,
		access_keycard_auth,
		access_gateway,
		access_external_airlocks
	)
	minimal_player_age = 14
	guestbanned = 1
	must_fill = 1
	not_random_selectable = 1
	outfit_type = /decl/outfit/job/security/commander
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COMBAT    = SKILL_BASIC,
		SKILL_WEAPONS   = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT    = SKILL_MAX,
		SKILL_WEAPONS   = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX
	)
	skill_points = 28
	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/digitalwarrant,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/reports
	)
	event_categories = list(ASSIGNMENT_SECURITY)

/datum/job/guard_commander/equip_job(var/mob/living/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/internal_security
	title = "Internal Security Agent"
	department_types = list(/decl/department/security)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the guard commander"
	selection_color = "#601c1c"
	economic_power = 5
	access = list(
		access_security,
		access_sec_doors,
		access_forensics_lockers,
		access_morgue,
		access_maint_tunnels
	)
	minimal_access = list(
		access_security,
		access_sec_doors,
		access_forensics_lockers,
		access_morgue,
		access_maint_tunnels
	)
	minimal_player_age = 7
	outfit_type = /decl/outfit/job/security/intel
	guestbanned = 1
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COMPUTER  = SKILL_BASIC,
		SKILL_COMBAT    = SKILL_BASIC,
		SKILL_WEAPONS   = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_COMBAT    = SKILL_MAX,
	    SKILL_WEAPONS   = SKILL_MAX,
	    SKILL_FORENSICS = SKILL_MAX
	)
	skill_points = 20
	software_on_spawn = list(
		/datum/computer_file/program/digitalwarrant,
		/datum/computer_file/program/camera_monitor
	)

/datum/job/guard
	title = "Guard"
	department_types = list(/decl/department/security)
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of security"
	selection_color = "#601c1c"
	economic_power = 4
	access = list(
		access_security,
		access_eva,
		access_sec_doors,
		access_brig,
		access_maint_tunnels,
		access_morgue,
		access_external_airlocks
	)
	minimal_access = list(
		access_security,
		access_eva,
		access_sec_doors,
		access_brig,
		access_maint_tunnels,
		access_external_airlocks
	)
	minimal_player_age = 7
	outfit_type = /decl/outfit/job/security/guard
	guestbanned = 1
	min_skill = list(
		SKILL_LITERACY  = SKILL_BASIC,
		SKILL_EVA       = SKILL_BASIC,
		SKILL_COMBAT    = SKILL_ADEPT,
		SKILL_WEAPONS   = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT    = SKILL_MAX,
	    SKILL_WEAPONS   = SKILL_MAX,
	    SKILL_FORENSICS = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/digitalwarrant,
		/datum/computer_file/program/camera_monitor
	)
	event_categories = list(ASSIGNMENT_SECURITY)