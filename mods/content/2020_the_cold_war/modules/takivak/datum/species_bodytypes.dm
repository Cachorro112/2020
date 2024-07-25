/decl/bodytype/canine
	name                    = "feminine"
	bodytype_category       = BODYTYPE_HUMANOID
	icon_template           = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/template.dmi'
	icon_base               = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/body_female.dmi'
	icon_deformed           = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/deformed_body.dmi'
//	cosmetics_icon          = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/cosmetics.dmi'
	blood_overlays          = 'icons/mob/human_races/species/human/blood_overlays.dmi'
	bandages_icon           = 'icons/mob/bandage.dmi'
	health_hud_intensity    = 1.75
	associated_gender       = FEMALE
	onmob_state_modifiers   = list(slot_w_uniform_str = "f")
	movement_slowdown       = -0.5
	base_color              = "#5f5f5f"
	appearance_flags        = HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	eye_darksight_range     = 3
	eye_flash_mod           = 1.2
	nail_noun               = "claws"

	age_descriptor = /datum/appearance_descriptor/age/takivak

	eye_darksight_range  = 7
	eye_flash_mod        = 2
	eye_blend            = ICON_MULTIPLY
	eye_icon             = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/eyes.dmi'
	eye_low_light_vision_effectiveness    = 0.15
	eye_low_light_vision_adjustment_speed = 0.3

	cold_level_1 = 200
	cold_level_2 = 140
	cold_level_3 = 80

	heat_level_1 = 330
	heat_level_2 = 380
	heat_level_3 = 800

	heat_discomfort_level   = 294
	cold_discomfort_level   = 230
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
	)

/decl/bodytype/canine/get_default_grooming_results(obj/item/organ/external/limb, obj/item/grooming/tool)
	if(tool?.grooming_flags & GROOMABLE_BRUSH)
		return list(
			"success"    = GROOMING_RESULT_SUCCESS,
			"descriptor" = "[limb.name] fur"
		)
	return ..()

/decl/bodytype/canine/masculine
	name                  = "masculine"
	icon_base             = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/body_male.dmi'
	icon_deformed         = 'mods/content/2020_the_cold_war/icons/mobs/species/takivak/deformed_body.dmi'
	associated_gender     = MALE
	onmob_state_modifiers = null