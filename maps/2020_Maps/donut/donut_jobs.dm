/datum/map/donut
	default_department_type = /decl/department/civilian
	id_hud_icons = 'maps/2020_Maps/donut/hud.dmi'
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/chef,
		/datum/job/chaplain,
		/datum/job/janitor,
		/datum/job/chief_engineer,
		/datum/job/engineer,
		/datum/job/atmos_tech,
		/datum/job/qm,
		/datum/job/miner,
		/datum/job/cmo,
		/datum/job/doctor,
		/datum/job/hor,
		/datum/job/scientist,
		/datum/job/chemist,
		/datum/job/hos,
		/datum/job/detective,
		/datum/job/officer,
		/datum/job/tech_assistant,
		/datum/job/med_assistant,
		/datum/job/sci_assistant,
		/datum/job/staff_assistant
	)

	species_to_job_blacklist = list(SPECIES_TAKIVAK = list(
	/datum/job/captain,
	/datum/job/hop,
	/datum/job/chief_engineer,
	/datum/job/cmo,
	/datum/job/hor,
	/datum/job/hos,
	/datum/job/chaplain
	))
