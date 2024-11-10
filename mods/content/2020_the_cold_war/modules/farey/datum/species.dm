/datum/appearance_descriptor/age/farey
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       30,
		"middle-aged" =    55,
		"aging" =          80,
		"elderly" =       140
	)

/decl/species/farey
	name = SPECIES_FAREY
	name_plural = SPECIES_FAREYS
	base_external_prosthetics_model = null

	description = "an omnivorous mammalian creature from the planet cassini IV/Korevak. recently discovered by mankind. \
	They have a biology almost identical to humans, but their genetics are similar to those of terrestrial lupines and foxes."
	hidden_from_codex = FALSE
	available_bodytypes = list(
		/decl/bodytype/farey,
		/decl/bodytype/farey/masculine
	)

	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_charge_scale = 1
	exertion_reagent_scale = 1
	exertion_reagent_path = /decl/material/liquid/lactate
	exertion_emotes_biological = list(
		/decl/emote/exertion/biological,
		/decl/emote/exertion/biological/breath,
		/decl/emote/exertion/biological/pant
	)
	exertion_emotes_synthetic = list(
		/decl/emote/exertion/synthetic,
		/decl/emote/exertion/synthetic/creak
	)

	spawn_flags = SPECIES_IS_WHITELISTED

	preview_outfit = /decl/hierarchy/outfit/job/generic/engineer

	organs_icon = 'mods/content/2020_the_cold_war/icons/mobs/species/farey/organs.dmi'

	strength = STR_LOW
	hunger_factor = 0.01
	thirst_factor = DEFAULT_THIRST_FACTOR * 1.2
	gluttonous = GLUT_TINY

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/farey/obyaes,
			/decl/cultural_info/location/farey/space
		),
		TAG_FACTION = list(/decl/cultural_info/faction/remote/nanotrasen), // If they are on space, they work for nanotrasen.
		TAG_CULTURE = list(
			/decl/cultural_info/culture/farey,
			/decl/cultural_info/culture/farey/kalyec
		)
	)

	default_emotes = list(
		/decl/emote/visible/tail/swish,
		/decl/emote/visible/tail/wag,
		/decl/emote/visible/tail/sway,
		/decl/emote/visible/tail/qwag,
		/decl/emote/visible/tail/fastsway,
		/decl/emote/visible/tail/swag,
		/decl/emote/visible/tail/stopsway,
		/decl/emote/audible/woof
	)

/decl/species/farey/handle_additional_hair_loss(var/mob/living/human/H, var/defer_body_update = TRUE)
	. = H?.set_skin_colour(rgb(189, 171, 143))
