/decl/special_role/traitor/Initialize()
	. = ..()
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/hor, /datum/job/officer, /datum/job/hop, /datum/job/captain)

/decl/special_role/godcultist/Initialize()
	. = ..()
	LAZYINITLIST(restricted_jobs)
	restricted_jobs  |= list(/datum/job/captain, /datum/job/hor,/datum/job/hop)
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/officer, /datum/job/forensic)
	LAZYINITLIST(blacklisted_jobs)
	blacklisted_jobs |= /datum/job/chaplain

/decl/special_role/cultist/Initialize()
	. = ..()
	LAZYINITLIST(restricted_jobs)
	restricted_jobs  |= list(/datum/job/captain, /datum/job/hor, /datum/job/hop)
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/officer, /datum/job/forensic)
	LAZYINITLIST(blacklisted_jobs)
	blacklisted_jobs |= list(/datum/job/chaplain)

/decl/special_role/loyalist
	command_department_id = /decl/department/command

/decl/special_role/revolutionary
	command_department_id = /decl/department/command
