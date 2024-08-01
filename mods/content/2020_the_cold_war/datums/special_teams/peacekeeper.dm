/decl/special_role/peacekeeper
	name = "Terran Peacekeeper"
	name_plural = "Terran Peacekeepers"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the TPC.</b>"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "TPK"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 4
	hard_cap_round = 5
	initial_spawn_req = 4
	initial_spawn_target = 5
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/hierarchy/outfit/terran_pk
	var/deployed = 0

/decl/special_role/peacekeeper/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/peacekeeper/Initialize()
	. = ..()
	var/mob/user
	leader_welcome_text = "As leader of the Terran Peacekeeper Team, you answer only to the Terran Organization, and have authority to override the Captain where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the captain where possible, however."
	welcome_text = "As member of the Terran Peacekeeper Team, you answer only to your leader and the Terran Organization officials."
	sound_to(user, sound('mods/content/2020_the_cold_war/sounds/themes/peacekeeper.ogg'))

/decl/special_role/peacekeeper/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Terran Peacekeeper Team works for the Terran Organization, but requisited by the [global.using_map.boss_name] to operate on the station; your job is to restore the order and you may be assigned with other mission. There is a code red alert on [station_name()].")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")