/datum/job/cmo
	title = "Chief Medical Officer"
	head_position = TRUE
	disallow_jobhop = TRUE
	pto_type = PTO_COMMAND
	timeoff_factor = 3
	department_types = list(
		/decl/department/medical,
		/decl/department/command
	)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#026865"
	req_admin_notify = TRUE
	economic_power = 10
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_bridge,
		access_heads,
		access_chemistry,
		access_virology,
		access_cmo,
		access_surgery,
		access_RC_announce,
		access_keycard_auth,
		access_sec_doors,
		access_psychiatrist,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_bridge,
		access_heads,
		access_chemistry,
		access_virology,
		access_cmo,
		access_surgery,
		access_RC_announce,
		access_keycard_auth,
		access_sec_doors,
		access_psychiatrist,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
	)
	minimal_player_age = 14
	ideal_character_age = 50
	guestbanned = TRUE
	must_fill = TRUE
	not_random_selectable = TRUE
	outfit_type = /decl/outfit/job/medical/cmo
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_MEDICAL   = SKILL_EXPERT,
		SKILL_ANATOMY   = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
		SKILL_ANATOMY   = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	skill_points = 26
	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/reports
	)
	event_categories = list(ASSIGNMENT_MEDICAL)

/datum/job/doctor
	title = "Medical Doctor"
	department_types = list(/decl/department/medical)
	minimal_player_age = 3
	total_positions = 5
	spawn_positions = 3
	pto_type = PTO_MEDICAL
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
	alt_titles = list(
		"Surgeon" =                      /decl/outfit/job/medical/doctor/surgeon,
		"Emergency Physician" =          /decl/outfit/job/medical/doctor/emergency_physician,
		"Nurse" =                        /decl/outfit/job/medical/doctor/nurse,
		"Virologist" =                   /decl/outfit/job/medical/doctor/virologist,
		"Paramedic" =                    /decl/outfit/job/medical/paramedic
	)
	outfit_type = /decl/outfit/job/medical/doctor
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA      = SKILL_BASIC,
		SKILL_MEDICAL  = SKILL_BASIC,
		SKILL_ANATOMY  = SKILL_BASIC
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

/datum/job/chemist
	title = "Chemist"
	department_types = list(/decl/department/medical)
	minimal_player_age = 7
	total_positions = 2
	spawn_positions = 2
	pto_type = PTO_MEDICAL
	supervisors = "the chief medical officer"
	selection_color = "#013d3b"
	economic_power = 5
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_chemistry
	)
	outfit_type = /decl/outfit/job/medical/chemist
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_MEDICAL   = SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_ADEPT,
		SKILL_ANATOMY	= SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	skill_points = 16

/datum/job/counselor
	title = "Psychiatrist"
	alt_titles = list("Counselor", "Mentalist")
	department_types = list(/decl/department/medical)
	total_positions = 1
	spawn_positions = 1
	pto_type = PTO_MEDICAL
	economic_power = 5
	minimal_player_age = 3
	supervisors = "the chief medical officer"
	selection_color = "#013d3b"
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology,
		access_psychiatrist
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_psychiatrist
	)
	outfit_type = /decl/outfit/job/medical/psychiatrist
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL  = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL  = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)
	give_psionic_implant_on_join = FALSE

/datum/job/counselor/equip_job(var/mob/living/human/H)
	switch(H.mind.role_alt_title)
		if("Counselor")
			psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
		if("Mentalist")
			psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()

// Department-flavor IDs
/obj/item/card/id/medical
	name = "identification card"
	desc = "A card issued to medical staff."
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/medical/head
	name = "identification card"
	desc = "A card which represents care and compassion."
	extra_details = list("goldstripe")
