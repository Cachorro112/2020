/datum/map/charlie
	default_job_type = /datum/job/assistant
	default_department_type = /decl/department/service
	id_hud_icons = 'maps/2020_Maps/charlie/hud.dmi'
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/officer,
		/datum/job/doctor,
		/datum/job/toxin,
		/datum/job/engineer,
		/datum/job/miner,
		/datum/job/assistant
	)

	species_to_job_blacklist = list(/decl/species/farey = list(
		/datum/job/captain,
		/datum/job/officer,
		/datum/job/doctor,
		/datum/job/toxin,
		/datum/job/engineer,
		/datum/job/miner,
		/datum/job/assistant
		))

	species_to_job_whitelist = list(/decl/species/farey = list())