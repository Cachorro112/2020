/decl/modpack/matchmaking/on_roundstart()
	do_matchmaking()

// It doesn't really matter when this registers during init as long as it's before roundstart.
/decl/modpack/matchmaking/post_initialize()
	. = ..()
	events_repository.register_global(/decl/observ/player_latejoin, src, PROC_REF(matchmake_latejoiner))

/decl/modpack/matchmaking/proc/matchmake_latejoiner(mob/living/character, datum/job/job)
	if(character.mind && character.client?.prefs.relations.len)
		for(var/T in character.client.prefs.relations)
			var/TT = relation_types[T]
			var/datum/relation/R = new TT
			R.holder = character.mind
			R.info = character.client.prefs.relations_info[T]
			character.mind.gen_relations_info = character.client.prefs.relations_info["general"]
	if(!ishuman(character))
		return TRUE
	if(!job.create_record)
		return TRUE
	do_matchmaking()
	return TRUE

/datum/mind
	var/list/known_connections //list of known (RNG) relations between people

/datum/mind/Destroy()
	QDEL_NULL_LIST(known_connections)
	. = ..()

/decl/modpack/matchmaking
	var/list/relation_types = list()
	var/list/relations = list()

/decl/modpack/matchmaking/Initialize()
	. = ..()
	for(var/T in subtypesof(/datum/relation/))
		var/datum/relation/R = T
		relation_types[initial(R.name)] = T

/decl/modpack/matchmaking/proc/do_matchmaking()
	var/list/to_warn = list()
	for(var/datum/relation/R in relations)
		if(R.other)
			continue // don't warn about already-matched relations, even if they aren't finalised
		R.find_match()
		if(R.other && !R.finalized)
			to_warn |= R.holder.current
	for(var/mob/M in to_warn)
		to_chat(M,"<span class='warning'>You have new connections. Use \"<a href='byond://?src=\ref[M];show_relationship_info=1'>See Relationship Info</a>\" to view and finalize them.</span>")

/decl/modpack/matchmaking/proc/get_relationships(datum/mind/M, finalized_only)
	. = list()
	for(var/datum/relation/R in relations)
		if(R.holder == M && R.other && (R.finalized || !finalized_only))
			. += R

/decl/modpack/matchmaking/proc/get_relationships_between(datum/mind/holder, datum/mind/target, finalized_only)
	. = list()
	for(var/datum/relation/R in relations)
		if(R.holder == holder && R.other && R.other.holder == target && (R.finalized || !finalized_only))
			. += R

/decl/human_examination/matchmaking/do_examine(var/mob/living/user, var/distance, var/mob/living/source) //These can either return text, or should return nothing at all if you're doing to_chat()
	if(!istype(source) || !istype(user))
		return
	if(!source.mind || !user.mind || source.name != source.real_name)
		return
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	if(!length(matchmaker.get_relationships_between(user.mind, source.mind, TRUE)))
		return
	return "<br><span class='notice'>You know them. <a href='byond://?src=\ref[src];show_relations=1'>More...</a></span><br>"

//Types of relations

/datum/relation
	var/name = "Acquaintance"
	var/desc = "You just know them."
	var/list/can_connect_to	//What relations (names) can matchmaking join us with? Defaults to own name.
	var/list/incompatible 	//If we have relation like this with the mob, we can't join
	var/datum/mind/holder
	var/datum/relation/other
	var/info
	var/finalized
	var/open = 2			//If non-zero, allow other relations to form connections

/datum/relation/New()
	..()
	if(!can_connect_to)
		can_connect_to = list(type)
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	matchmaker.relations += src

/datum/relation/proc/get_candidates()
	.= list()
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	for(var/datum/relation/R in matchmaker.relations)
		if(!valid_candidate(R.holder) || !can_connect(R))
			continue
		. += R

/datum/relation/proc/valid_candidate(datum/mind/M)
	if(M == holder)	//no, you NEED other people
		return FALSE

	if(!M.current)	//no extremely platonic relationships
		return FALSE

	var/decl/special_role/special_role_data = GET_DECL(M.assigned_special_role)
	if(istype(special_role_data) && (special_role_data.flags & ANTAG_OVERRIDE_JOB))
		return FALSE

	return TRUE

/datum/relation/proc/can_connect(var/datum/relation/R)
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	for(var/datum/relation/D in matchmaker.relations) //have to check all connections between us and them
		if(D.holder == R.holder && D.other && D.other.holder == holder)
			if(D.type in incompatible)
				return 0
	return (R.type in can_connect_to) && !(R.type in incompatible) && R.open

/datum/relation/proc/get_copy()
	var/datum/relation/R = new type
	R.holder = holder
	R.info = holder.current && holder.current.client ? holder.current.client.prefs.relations_info[R.name] : info
	R.open = 0
	return R

/datum/relation/proc/find_match()
	var/list/candidates = get_candidates()
	if(!candidates.len) //bwoop bwoop
		return 0
	var/datum/relation/R = pick(candidates)
	R.open--
	if(R.other)
		R = R.get_copy()
	other = R
	R.other = src
	return 1

/datum/relation/proc/sever()
	to_chat(holder.current,"<span class='warning'>Your connection with [other.holder] is no more.</span>")
	to_chat(other.holder.current,"<span class='warning'>Your connection with [holder] is no more.</span>")
	other.other = null
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	matchmaker.relations -= other
	matchmaker.relations -= src
	qdel(other)
	other = null
	qdel(src)

//Finalizes and propagates info if both sides are done.
/datum/relation/proc/finalize()
	finalized = 1
	to_chat(holder.current,"<span class='warning'>You have finalized a connection with [other.holder].</span>")
	to_chat(other.holder.current,"<span class='warning'>[holder] has finalized a connection with you.</span>")
	if(other && other.finalized)
		to_chat(holder.current,"<span class='warning'>Your connection with [other.holder] is now confirmed!</span>")
		to_chat(other.holder.current,"<span class='warning'>Your connection with [holder] is now confirmed!</span>")
		var/list/candidates = filter_list(global.player_list, /mob/living/human)
		candidates -= holder.current
		candidates -= other.holder.current
		for(var/mob/living/human/M in candidates)
			if(!M.mind || M.stat == DEAD || !valid_candidate(M.mind))
				candidates -= M
				continue
			var/datum/job/coworker = SSjobs.get_by_title(M.job)
			if(coworker && holder.assigned_job && other.holder.assigned_job)
				if(LAZYLEN(coworker.department_types & holder.assigned_job.department_types) || LAZYLEN(coworker.department_types & other.holder.assigned_job.department_types))
					candidates[M] = 5	//coworkers are 5 times as likely to know about your relations

		for(var/i=1 to 5)
			if(!candidates.len)
				break
			var/mob/M = pickweight(candidates)
			candidates -= M
			if(!M.mind.known_connections)
				M.mind.known_connections = list()
			if(prob(70))
				M.mind.known_connections += get_desc_string()
			else
				M.mind.known_connections += "[holder] and [other.holder] seem to know each other, but you're not sure on the details."

/datum/relation/proc/get_desc_string()
	return "[holder] and [other.holder] know each other."

/mob/living/verb/see_relationship_info()
	set name = "See Relationship Info"
	set desc = "See what connections between people you know of."
	set category = "IC"

	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	var/list/relations = matchmaker.get_relationships(mind)
	var/list/dat = list()
	var/editable = 0
	if(mind.gen_relations_info)
		dat += "<b>Things they all know about you:</b><br>[mind.gen_relations_info]<hr>"
		dat += "An <b>\[F\]</b> indicates that the other player has finalized the connection.<br>"
		dat += "<br>"
	for(var/datum/relation/R in relations)
		dat += "<b>[R.other.finalized ? "\[F\] " : ""][R.other.holder]</b>, [R.other.holder.role_alt_title ? R.other.holder.role_alt_title : R.other.holder.assigned_role]."
		if (!R.finalized)
			dat += " <a href='byond://?src=\ref[src];del_relation=\ref[R]'>Remove</a>"
			editable = 1
		dat += "<br>[R.desc]"
		dat += "<br>"
		dat += "<b>Things they know about you:</b>[!R.finalized ?"<a href='byond://?src=\ref[src];info_relation=\ref[R]'>Edit</a>" : ""]<br>[R.info ? "[R.info]" : " Nothing specific."]"
		if(R.other.info)
			dat += "<br><b>Things you know about them:</b><br>[R.other.info]<br>[R.other.holder.gen_relations_info]"
		dat += "<hr>"

	if(mind.known_connections && mind.known_connections.len)
		dat += "<b>Other people:</b>"
		for(var/I in mind.known_connections)
			dat += "<br><i>[I]</i>"

	var/datum/browser/popup = new(usr, "relations", "Relationship Info")
	if(editable)
		dat.Insert(1,"<a href='byond://?src=\ref[src];relations_close=1;'>Finalize edits and close</a><br>")
		popup.set_window_options("focus=0;can_close=0;can_minimize=1;can_maximize=0;can_resize=1;titlebar=1;")
	popup.set_content(jointext(dat,null))
	popup.open()

/mob/living/proc/see_relationship_info_with(var/mob/living/other)
	if(!other.mind)
		return
	var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
	var/list/relations = matchmaker.get_relationships(mind,other.mind,TRUE)
	var/list/dat = list("<h2>[other]</h2>")
	if(mind.gen_relations_info)
		dat += "<b>Things they know about you:</b><br>[mind.gen_relations_info]<hr>"
		dat += "<br>"
	for(var/datum/relation/R in relations)
		dat += "<br>[R.desc]"
		dat += "<br>"
		dat += "<b>Things they know about you:</b><br>[R.info ? "[R.info]" : " Nothing specific."]"
		if(R.other.info)
			dat += "<br><b>Things you know about them:</b><br>[R.other.info]<br>[R.other.holder.gen_relations_info]"
		dat += "<hr>"

	var/datum/browser/popup = new(usr, "relations", "Relationship Info")
	popup.set_content(jointext(dat,null))
	popup.open()

/mob/living/OnTopic(mob/living/user, href_list)
	if(href_list["show_relations"])
		if(istype(user))
			user.see_relationship_info_with(src)
			return TOPIC_HANDLED
	if(href_list["show_relationship_info"])
		if(istype(user))
			user.see_relationship_info()
			return TOPIC_HANDLED
	return ..()

/mob/living/OnSelfTopic(href_list)
	if(href_list["del_relation"])
		var/datum/relation/R = locate(href_list["del_relation"])
		if(istype(R))
			R.sever()
			see_relationship_info()
			return TOPIC_HANDLED
	if(href_list["info_relation"])
		var/datum/relation/R = locate(href_list["info_relation"])
		if(istype(R))
			var/info = sanitize(input("What would you like the other party for this connection to know about your character?","Character info",R.info) as message|null)
			if(info)
				R.info = info
				see_relationship_info()
				return TOPIC_HANDLED
	if(href_list["relations_close"])
		var/ok = "Close anyway"
		ok = alert("HEY! You have some non-finalized relationships. You can terminate them if they do not fit your character, or edit the info tidbit that the other party is given. THIS IS YOUR ONLY CHANCE to do so - after you close the window, they won't be editable.","Finalize relationships","Return to edit", "Close anyway")
		if(ok == "Close anyway")
			var/decl/modpack/matchmaking/matchmaker = IMPLIED_DECL
			var/list/relations = matchmaker.get_relationships(mind)
			for(var/datum/relation/R in relations)
				R.finalize()
			show_browser(usr,null, "window=relations")
		else
			show_browser(usr,null, "window=relations")
		return TOPIC_HANDLED
	return ..()