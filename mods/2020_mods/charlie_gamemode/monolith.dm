/decl/material/solid/metal/monolith
	name = "black alloy"
	uid = "solid_alien"
	icon_base = 'icons/turf/walls/metal.dmi'
	wall_flags = PAINT_PAINTABLE
	door_icon_base = "metal"
	icon_reinf = 'icons/turf/walls/reinforced_metal.dmi'
	hitsound = 'sound/weapons/smash.ogg'
	construction_difficulty = MAT_VALUE_VERY_HARD_DIY
	hidden_from_codex = TRUE
	//indestructible
	color = "#0a0a0a"
	integrity = 1000000
	ignition_point = 700000
	melting_point = 800000
	boiling_point = 1000000
	value = 50
	default_solid_form = /obj/item/stack/material/cubes
	exoplanet_rarity_plant = MAT_RARITY_EXOTIC
	exoplanet_rarity_gas = MAT_RARITY_NOWHERE

/obj/structure/monolith_2020
	name = "monolith"
	desc = "An obviously artifical structure of unknown origin. it's totally clean and flat."
	icon = 'mods/2020_mods/2020_main/icons/obj/monolith.dmi'
	icon_state = "monolith"
	layer = ABOVE_HUMAN_LAYER
	density = TRUE
	anchored = TRUE
	material = /decl/material/solid/metal/monolith
	material_alteration = MAT_FLAG_ALTERATION_COLOR
	var/static/list/images = list(
	"Stars, Stars, Stars, Stars... it's full of stars.",
	"Death, Life... Darkness.",
	"Earth, the moon... Europa... a strange planet...",
	"God... God?...",
	"Takivak... a strange specie...",
	"creature, a dark creature... it's massive...",
	"Something you cannot understand...",
	"Shapes... Shapes...",
	"The Past... a Tank... Airplanes...",
	"Moscow... it's destroyed... it's empty...",
	"New York... in flames...",
	"Berlin... no longer... where it goes?...",
	"Earth is Dark... very dark...",
	"a Cat... cute... it dies...",
	"Horses running... they fall into the ocean...",
	"Airplanes... Airships... it explode...",
	"Flesh... Meat... Meat... Meat...",
	"Three Kings... Three Demons... three... three...",
	"a japanese village... in the underground... a cute girl stands infront of it... she smiles... she disappear...",
	"a shrine... atop of a mountain... a dark place... peace...",
	"hell... it's dark... very dark...",
	"Dave... who is Dave?...")
	var/static/list/bad_images = list(
	"You see dead animals in a field.",
	"You see a pile of human corpses.",
	"You see a nuclear explosion.",
	"You see a city destroyed.",
	"You see war.",
	"You see dispair.",
	"You see death, so much death.",
	"You see Earth in Flames.",
	"You see Firing squads killing people.",
	"You see Tanks rolling over death people.",
	"You see airplanes dropping bombs.",
	"You see Missiles Flying.",
	"You see people begging for mercy.",
	"You see a snowy field drenched in blood.",
	"You see Three Creatures.",
	"You see One Man.",
	"You see Three Creatures killing people.",
	"You see a King.",
	"You see the devastation.")

/obj/structure/monolith_2020/attack_hand(mob/user)
	SHOULD_CALL_PARENT(FALSE)
	visible_message("\The [user] touches \the [src].")

	if(!ishuman(user))
		to_chat(user, SPAN_NOTICE("\The [src] is still."))
		return TRUE

	var/mob/living/human/H = user
	if(H.isSynthetic())
		to_chat(user, SPAN_NOTICE("\The [src] is still."))
		return TRUE

	if(prob(80))
		to_chat(user, SPAN_NOTICE("As you touch \the [src], you suddenly get a vivid image - [pick(images)]"))
		sound_to(user, sound(pick('mods/2020_mods/2020_main/sounds/effects/vision1.ogg','mods/2020_mods/2020_main/sounds/effects/vision2.ogg','mods/2020_mods/2020_main/sounds/effects/vision3.ogg','mods/2020_mods/2020_main/sounds/effects/vision4.ogg','mods/2020_mods/2020_main/sounds/effects/vision5.ogg')))
		sleep(60)
		return TRUE

	to_chat(user, SPAN_DANGER("An overwhelming stream of information invades your mind!"))
	to_chat(user, SPAN_DANGER("<span class='cult'>[uppertext(pick(bad_images))]</span>"))
	SET_STATUS_MAX(user, STAT_PARA, 2)
	H.set_hallucination(20, 100)
	H.emote("scream")
	H.handle_visions()
	sleep(90)
	H.handle_visions()
	to_chat(user, SPAN_DANGER("<span class='cult'>[uppertext(pick(bad_images))]</span>"))
	sleep(90)
	if(H.mind)
		var/decl/special_role/insane = GET_DECL(/decl/special_role/insane)
		insane.add_antagonist(H.mind)
	return TRUE