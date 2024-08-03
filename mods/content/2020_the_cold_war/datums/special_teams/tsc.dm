/decl/special_role/security_council
	name = "Terran Secutiry Council Agent"
	name_plural = "Terran Secutiry Council Agents"
	antag_text = "You are an <b>Neutral</b> antagonist! Within the rules, \
		follow your objectives and finish them. you may use force against non-tsc agents. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the TSC.</b>"
	welcome_text = "You shouldn't see this"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "TSC"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)

	hard_cap = 3
	hard_cap_round = 4
	initial_spawn_req = 3
	initial_spawn_target = 4
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	default_outfit = /decl/hierarchy/outfit/terran_sc
	var/deployed = 0

/decl/special_role/security_council/create_default(var/mob/source)
	var/mob/living/human/M = ..()
	if(istype(M))
		M.set_age(rand(25,45))

/decl/special_role/security_council/Initialize()
	. = ..()
	leader_welcome_text = "As leader of the Terran Security Council Team, you answer only to the Terran Organization. you are a neutral force to the crew and don't need to follow the crew orders and may even use violence against them to achieve your mission goals. It is recommended that you attempt to not get involved with the crew, however."
	welcome_text = "As member of the Terran Security Council Team, you answer only to your leader and the Terran Organization officials."

/decl/special_role/security_council/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Terran Security Council Team works for the Terran Organization, something that threat humanity is happening or is on [global.using_map.station_name]; your job is to destroy or contain this threat and you may be assigned with other mission.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
	sound_to(usr, sound('mods/content/2020_the_cold_war/sounds/themes/tsc_theme.ogg'))