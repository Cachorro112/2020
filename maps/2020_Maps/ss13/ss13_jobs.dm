/datum/map/ss13
	default_job_type = /datum/job/sci_assistant
	default_department_type = /decl/department/civilian
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/hor,
		/datum/job/officer,
		/datum/job/doctor,
		/datum/job/toxin,
		/datum/job/med_research,
		/datum/job/engineer,
		/datum/job/atmos_tech,
		/datum/job/technician,
		/datum/job/forensic,
		/datum/job/research_tech,
		/datum/job/qm,
		/datum/job/miner,
		/datum/job/chef,
		/datum/job/chaplain,
		/datum/job/bartender,
		/datum/job/staff_assistant,
		/datum/job/med_assistant,
		/datum/job/tech_assistant,
		/datum/job/sci_assistant
	)

	species_to_job_blacklist = list(/decl/species/farey = list(
			/datum/job/captain,
			/datum/job/hop,
			/datum/job/hor,
			/datum/job/toxin,
			/datum/job/med_research,
			/datum/job/doctor,
			/datum/job/forensic,
			/datum/job/chaplain, // Takivaks may follow human religions, but they can't work as chap due being aliens.
		))

	species_to_job_whitelist = list(/decl/species/farey = list(
		/datum/job/officer,
		/datum/job/engineer,
		/datum/job/atmos_tech,
		/datum/job/technician,
		/datum/job/research_tech,
		/datum/job/qm,
		/datum/job/miner,
		/datum/job/chef,
		/datum/job/bartender,
		/datum/job/staff_assistant,
		/datum/job/med_assistant,
		/datum/job/tech_assistant,
		/datum/job/sci_assistant
		))