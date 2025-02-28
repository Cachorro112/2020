//Just a copy of Gleam, fuck.

/decl/material/liquid/nether
	name = "putrid meat"
	lore_text = "meat of unknown origin, has a putrid smell and appearance regardless of whether it is fresh or old."
	color = "#ccccff"
	metabolism = REM
	overdose = 10
	exoplanet_rarity_gas = MAT_RARITY_EXOTIC
	uid = "chem_nether"

	// F E E L  T H E  N E T H E R
	var/static/list/dose_messages = list(
		"You feel... you feel... you feel.",
		"Your muscles tremble, tremble with fear...",
		"your mind is dominated by fear...",
		"Join us, become one of us...",
		"Become one of us, let us unite...",
		"Movements in the corner of your eyes....",
		"I want you...",
		"Screams.. Screams... Scream.",
		"The voices don't stop the voices don't stop.",
		"Agony Fear...",
		"The Three Knights of Nether...",
		"The Three invite you, join us...",
		"Nothing ends. Nothing begins.",
		"I Have to Wake up...",
		"You want to see a wonder?",
		"The pain fuel us... the pain fuel us...",
		"We miss you. Where are you?",
		"start the wheel, move the wheel...",
		"You are the only one expelled from paradise.",
		"Do you believe in god?",
		"God created us to lead people in obedience to us.",
		"A man offered a serpent to the sun, and prayed for salvation.",
		"Humans are worthless.",
		"Body to body.",
		"Flesh to flesh.",
		"you will feel pain once again.",
		"It's time to wake up.",
		"He's coming! He's coming!",
		"Run!",
		"Raping the Slave.",
		"I am your sun!",
		"If LIES are everywhere, then how to make a MATTER of conscience?"
		)

	var/static/list/overdose_messages = list(
		"THE SIGNAL THE SIGNAL THE SIGNAL THE SIGNAL",
		"THE PAIN PAIN PAIN PAIN PAIN PAIN PAIN",
		"YOUR BLOOD IS OUR",
		"JOIN US NOW JOIN US NOW JOIN US NOW",
		"WAKE UP! WAKE UP! WAKE UP!",
		"THE BLOOD THE BLOOD THE BLOOD THE BLOOD",
		"GIVE ME YOUR BLOOD, I WANT TO DRINK YOUR BLOOD",
		"THE GUTS GIVE ME YOUR GUTS WE WILL EAT YOUR GUTS",
		"SHOW ME A WONDER SHOW ME A WONDER SHOW ME A WONDER",
		"BECOME THE FOUR BECOME THE FOUR KNIGHT, JOIN OUR ARMY",
		"WE WILL INVADE YOUR JOIN YOUR WORLD",
		"THE THREE WILL CONQUEST YOUR WORLD",
		"WE ARE COMING NOW WE ARE COMING SOON",
		"THE BORDER WORLD WAIT FOR THE TIME",
		"THE WILLING OF THE NETHER IS UNIVERSAL",
		"RUN!",
		"DON'T LOOK BACK!",
		"KILL THEM!",
		"FIGHT!"
	)

/decl/material/liquid/nether/affect_blood(var/mob/living/M, var/removed, var/datum/reagents/holder)
	. = ..()
	M.add_chemical_effect(CE_MIND, -2)
	M.set_hallucination(50, 50)
	ADJ_STATUS(M, STAT_JITTER, 3)
	ADJ_STATUS(M, STAT_DIZZY,  3)
	if(prob(0.1) && ishuman(M))
		var/mob/living/human/H = M
		H.seizure()
		H.adjustBrainLoss(rand(8, 12))
	if(prob(5))
		to_chat(M, SPAN_WARNING("<font size = [rand(1,3)]>[pick(dose_messages)]</font>"))

/decl/material/liquid/nether/on_leaving_metabolism(datum/reagents/metabolism/holder)
	. = ..()

/decl/material/liquid/nether/affect_overdose(mob/living/M, total_dose)
	M.adjustBrainLoss(rand(1, 5))
	if(ishuman(M) && prob(10))
		var/mob/living/human/H = M
		H.seizure()
	if(prob(10))
		to_chat(M, SPAN_DANGER("<font size = [rand(2,4)]>[pick(overdose_messages)]</font>"))

/obj/item/food/butchery/meat/nether
	desc = "An ugly-looking meat with a rotten smell."
	icon                           = 'mods/content/2020_the_cold_war/icons/mobs/items/nether_meat.dmi'
	nutriment_type                 = /decl/material/liquid/nether
	meat_name = "putrid flesh"