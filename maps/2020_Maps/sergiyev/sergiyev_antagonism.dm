/decl/special_role/traitor/Initialize()
	. = ..()
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/officer, /datum/job/captain, /datum/job/hop)

/decl/special_role/godcultist/Initialize()
	. = ..()
	LAZYINITLIST(restricted_jobs)
	restricted_jobs  |= list(/datum/job/captain, /datum/job/hop)
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/officer)

/decl/special_role/cultist/Initialize()
	. = ..()
	LAZYINITLIST(restricted_jobs)
	restricted_jobs  |= list(/datum/job/captain, /datum/job/hop)
	LAZYINITLIST(protected_jobs)
	protected_jobs   |= list(/datum/job/officer)

/decl/special_role/loyalist
	command_department_id = /decl/department/command

/decl/special_role/revolutionary
	command_department_id = /decl/department/command