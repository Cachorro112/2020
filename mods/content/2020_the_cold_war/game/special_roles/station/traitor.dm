/decl/special_role/traitor
	welcome_text = "You are a Traitor of the station. maybe a corrupt worker or a infiltrator of [enemy_group]."
	hard_cap = 2
	hard_cap_round = 3
	var/enemy_group = "Syndicate" // Enemy of Everyone, generic type. other groups may vary by map to map.
	var/syndicate_group = "Global Insurgency" // Basically; if the enemy_group is syndicate, this may change to a group of the syndicate IN 2020 Lore.

	antag_text = "You are an Traitor! \
		You might be a corrupt worker o a infiltrator that work to [enemy_group], but your antagonist history is made by you. \
		try to act as an opposing force to the crew. Further RP and try to make sure \
		other players have <i>fun</i>!"

/decl/special_role/traitor/proc/enemy_group
	if(enemy_group == "Syndicate")
		if(prob(60))
			syndicate_group == "Global Insurgency"
				antag_text = "You are an Traitor! \
				You might be a corrupt worker o a infiltrator that work to [enemy_group], but your antagonist history is made by you. \
				You make part of the Global Insurgency, the major Syndicate group, try to act stealthly and cautions, \
				but always trying to complete your objetive. and, if captured, keep your mouth closed... or else, you know, is on the contract. \
				try to act as an opposing force to the crew. Further RP and try to make sure \
				other players have <i>fun</i>!"
		//May vary by map as well. thats it, for now.