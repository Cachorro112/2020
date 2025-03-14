/datum/trader/ship/unique
	abstract_type = /datum/trader/ship/unique
	trade_flags = TRADER_WANTED_ONLY | TRADER_GOODS | TRADER_BRIBABLE
	want_multiplier = 5
	typical_duration = 40

/datum/trader/ship/unique/New()
	..()
	wanted_items = list()
	for(var/type in possible_wanted_items)
		var/status = possible_wanted_items[type]
		if(status & TRADER_THIS_TYPE)
			wanted_items += type
		if(status & TRADER_SUBTYPES_ONLY)
			wanted_items += subtypesof(type)
		if(status & TRADER_BLACKLIST)
			wanted_items -= type
		if(status & TRADER_BLACKLIST_SUB)
			wanted_items -= subtypesof(type)

/datum/trader/ship/unique/tick()
	if(prob(-disposition) || refuse_comms)
		duration_of_stay--
	return --duration_of_stay > 0

/datum/trader/ship/unique/what_do_you_want()
	return get_response(TRADER_WHAT_WANT, "I don't want anything!")

/datum/trader/ship/unique/severance
	name = "Unknown"
	origin = "SGS Severance"

	possible_wanted_items = list(
		/obj/item/food/butchery/meat/human = TRADER_THIS_TYPE,
		/mob/living/human                  = TRADER_ALL
	)

	possible_trading_items = list(
		/obj/item/gun/projectile/automatic       = TRADER_SUBTYPES_ONLY
	)

	blacklisted_trade_items = null

	speech = list(
		TRADER_HAIL_GENERIC      = "H-hello. Can you hear me? G-good... I have... specific needs... I have a lot to t-trade with you in return of course.",
		TRADER_HAIL_DENY         = "--CONNECTION SEVERED--",
		TRADER_TRADE_COMPLETE    = "Hahahahahahaha! Thankyouthankyouthankyou!",
		TRADER_NO_MONEY          = "I d-don't NEED cash.",
		TRADER_NOT_ENOUGH        = "N-no, no no no. M-more than that... more...",
		TRADER_FOUND_UNWANTED    = "I d-don't think you GET what I want, fr- from your offer.",
		TRADER_HOW_MUCH          = "Meat. I want meat. The kind they don't serve in the- the mess hall.",
		TRADER_WHAT_WANT         = "Long p-pork. Yes... that's what I want...",
		TRADER_COMPLIMENT_DENY   = "Your lies won't ch-change what I did.",
		TRADER_COMPLIMENT_ACCEPT = "Yes... I suppose you're right.",
		TRADER_INSULT_GOOD       = "I... probably deserve that.",
		TRADER_INSULT_BAD        = "Maybe you should c-come here and say that. You'd be worth s-something then.",
		TRADER_BRIBE_ACCEPT      = "Okay. Fine. But... h-hurry. I can only stay another " + TRADER_TOKEN_TIME + "m-minutes.",
		TRADER_BRIBE_REFUSAL     = "No! N-no, they're getting closer- I have to, I h-have to go soon."
	)
	mob_transfer_message = "<span class='danger'>You are transported to " + TRADER_TOKEN_ORIGIN + ", and with a sickening thud, you fall unconscious, never to wake again.</span>"


/datum/trader/ship/unique/rock
	name = "Bobo"
	origin = "Floating rock"

	possible_wanted_items  = list(
		/obj/item/stack/material/ore     = TRADER_ALL
	)
	possible_trading_items = list(
		/obj/machinery/power/supermatter = TRADER_ALL,
		/obj/item/aiModule               = TRADER_SUBTYPES_ONLY
	)
	want_multiplier = 5000

	speech = list(
		TRADER_HAIL_GENERIC      = "Blub am " + TRADER_TOKEN_MERCHANT + ". Blub hunger for things. Boo bring them to blub, yes?",
		TRADER_HAIL_DENY         = "Blub does not want to speak to boo.",
		TRADER_TRADE_COMPLETE    = "Blub likes to trade!",
		TRADER_NO_MONEY          = "Boo try to give Blub paper. Blub does not want paper.",
		TRADER_NOT_ENOUGH        = "Blub hungry for bore than that.",
		TRADER_NO_BLACKLISTED    = "Blub not want that! No!",
		TRADER_FOUND_UNWANTED    = "Blub only wants bocks. Give bocks.",
		TRADER_HOW_MUCH          = "Blub wants bocks. Boo give bocks. Blub gives stuff blub found.",
		TRADER_WHAT_WANT         = "Blub wants bocks. Big bocks, small bocks. Shiny bocks!",
		TRADER_COMPLIMENT_DENY   = "Blub is just " + TRADER_TOKEN_MERCHANT + ". What do boo mean?",
		TRADER_COMPLIMENT_ACCEPT = "Boo are a bood berson!",
		TRADER_INSULT_GOOD       = "Blub do not understand. Blub thought we were briends.",
		TRADER_INSULT_BAD        = "Blub feels bad now.",
		TRADER_BRIBE_ACCEPT      = "Blub will stay for " + TRADER_TOKEN_TIME + " binutes bonger.",
		TRADER_BRIBE_REFUSAL     = "Blub must go. Blub's beople beed blem."
	)

//probably could stick soem Howl references in here but like, eh. Haven't seen it in years.
/datum/trader/ship/unique/wizard
	name = "Sorcerer"
	origin = "A moving castle"
	possible_origins = list(
		"An indistinct location",
		"Unknown location",
		"The Diamond Sphere",
		"Beyond the Veil",
		"Deadverse"
	)

	possible_wanted_items = list(
		/mob/living/simple_animal/familiar               = TRADER_SUBTYPES_ONLY,
		/mob/living/simple_animal/familiar/pet           = TRADER_BLACKLIST,
		/mob/living/simple_animal/hostile/mimic          = TRADER_ALL
	)
	possible_trading_items = list(
		/obj/item/clothing/gloves/wizard                 = TRADER_THIS_TYPE,
		/obj/item/clothing/head/helmet/space/void/wizard = TRADER_THIS_TYPE,
		/obj/item/clothing/head/wizard                   = TRADER_ALL,
		/obj/item/clothing/suit/space/void/wizard        = TRADER_THIS_TYPE,
		/obj/item/toy/figure/wizard                      = TRADER_THIS_TYPE,
		/obj/item/staff                                  = TRADER_ALL,
	) //Probably see about getting some more wizard based shit

	speech = list(
		TRADER_HAIL_GENERIC      = "Hello! Are you here on pleasure or business?",
		TRADER_HAIL_DENY         = "I'm sorry, but I REALLY don't want to speak to you.",
		TRADER_TRADE_COMPLETE    = "Pleasure doing business with you!",
		TRADER_NO_MONEY          = "Cash? Ha! What's cash to a man like me?",
		TRADER_NOT_ENOUGH        = "Hm, well I do enjoy what you're offering, I prefer a fair trade.",
		TRADER_FOUND_UNWANTED    = "What? I want oddities! Don't you understand?",
		TRADER_HOW_MUCH          = "I want dark things, brooding things... things that go bump in the night. Things that bleed wrong, live wrong, are wrong.",
		TRADER_WHAT_WANT         = "Have anything from a broodish cult?",
		TRADER_COMPLIMENT_DENY   = "Like I haven't heard that one before!",
		TRADER_COMPLIMENT_ACCEPT = "Haha! Aren't you nice.",
		TRADER_INSULT_GOOD       = "Naughty naughty.",
		TRADER_INSULT_BAD        = "Now where do you get off talking to me like that?",
		TRADER_BRIBE_ACCEPT      = "Well, if you're not pulling the knob on my staff, I can stay for another " + TRADER_TOKEN_TIME + " minutes.",
		TRADER_BRIBE_REFUSAL     = "A wizard does not depart early or late, but precisely when they intend to. No.",
		TRADER_NO_BLACKLISTED    = "I cannot accept such a thing. No trade."
	)

/datum/trader/ship/unique/wizard/New()
	speech[TRADER_HAIL_START + SPECIES_GOLEM] = "Interesting... how incredibly interesting... come! Let us do business!"
	..()
