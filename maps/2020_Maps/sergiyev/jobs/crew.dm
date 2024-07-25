/datum/job/crew
	title = "Crew"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Commanding Officer and the Deputy Commander"
	economic_power = 1
	access = list()
	minimal_access = list()
	alt_titles = list("Technical Crew","Nurse","Research Assistant")
	outfit_type = /decl/hierarchy/outfit/job/crew
	department_types = list(/decl/department/support)

/datum/job/assistant/get_access()
	if(get_config_value(/decl/config/toggle/assistant_maint))
		return list(access_maint_tunnels)
	return list()

/obj/item/card/id/crew
	name = "identification card"
	desc = "A card issued to crew staff."
	detail_color = COLOR_CIVIE_GREEN

/datum/job
	required_language = /decl/language/human/russian