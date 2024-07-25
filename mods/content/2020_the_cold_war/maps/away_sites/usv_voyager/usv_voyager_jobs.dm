/datum/job/submap/scout_captain
	title = "USV Voyager Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/scout/captain
	supervisors = "your bottom line"
	info = "You are the Captain of the USV Voyager, a Scout spaceship of the United States Fleet.\
	you must keep the crew in order and complete you mission. your mission is survey this sector and send the information to the Command. \
	You are allowed to open fire on Syndicate ships or stations. Avoid contact with Soviet ships, use force against them if necessary. (This may change depending on the command's orders during the round)"

/datum/job/submap/scout_crewman
	title = "USV Voyager Crewman"
	supervisors = "the Captain"
	total_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/scout/crew
	info = "Your are a Crewman of the USV Voyager. a Scout spaceship of the United States Fleet.\
	you must do what your captain order you to do, keep the ship working and protect it."

/decl/hierarchy/outfit/job/scout
	abstract_type = /decl/hierarchy/outfit/job/scout
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store_str
	r_pocket = /obj/item/radio
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/scout/crew
	name = "Voyager - Job - USF Crew"
	id_type = /obj/item/card/id/scout_crew
	uniform = /obj/item/clothing/under/syndicate/combat

/decl/hierarchy/outfit/job/scout/captain
	name = "Voyager - Job - USF Captain"
	uniform = /obj/item/clothing/under/syndicate/combat
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda/heads/captain
	id_type = /obj/item/card/id/scout_captain

/obj/abstract/submap_landmark/spawnpoint/scout_captain
	name = "USV Voyager Captain"

/obj/abstract/submap_landmark/spawnpoint/scout_crewman
	name = "USV Voyager Crewman"

/obj/item/card/id/scout_captain
	name = "identification card"
	desc = "A card issued to united states fleet captains."
	detail_color = COLOR_BLUE

/obj/item/card/id/scout_crew
	name = "identification card"
	desc = "A card issued to united states fleet crew."
	detail_color = COLOR_SUN