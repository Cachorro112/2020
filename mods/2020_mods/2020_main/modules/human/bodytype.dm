/decl/bodytype/human
	var/sclera = 'mods/2020_mods/2020_main/icons/mobs/human/sclera.dmi' //Sclera, that white part of our eyes.
	icon_base             = 'mods/2020_mods/2020_main/icons/mobs/human/body_female.dmi'
	onmob_state_modifiers = list(slot_w_uniform_str = "f")
	override_emote_sounds = list(
		"cough" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_cough1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cough2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cough3.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cough4.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cough5.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cough6.ogg'
		),
		"sneeze" = list(
			'mods/2020_mods/2020_main/sounds/emotes/sneezef1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/sneezef2.ogg'
		),
		"scream" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_scream1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_scream2.ogg'
		),
		"cry" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_cry1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_cry2.ogg'
		),
		"laugh" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_laugh1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_laugh2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_laugh3.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/girl_laugh1.ogg'
		),
		"yawn" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_yawn1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_yawn2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_yawn3.ogg'
		),
		"giggle" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_giggle1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/female_giggle2.ogg'
		),
		"sigh" = list(
			'mods/2020_mods/2020_main/sounds/emotes/sigh_female.ogg'
		),
		"whimper" = list(
			'mods/2020_mods/2020_main/sounds/emotes/female_whimper.ogg'
		),
		"mumble" = list(
			'mods/2020_mods/2020_main/sounds/emotes/mumble_female.ogg'
		),
		"sniff" = list(
			'mods/2020_mods/2020_main/sounds/emotes/sniff.ogg'
		),
		"gasp" = list(
			'mods/2020_mods/2020_main/sounds/emotes/woman_gasp1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/woman_gasp2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/woman_gasp3.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/woman_gasp4.ogg'
		)
	)

/decl/bodytype/human/masculine
	icon_base             = 'mods/2020_mods/2020_main/icons/mobs/human/body_male.dmi'
	override_emote_sounds = list(
		"cough" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_cough1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_cough2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_cough3.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_cough4.ogg'
		),
		"sneeze" = list(
			'mods/2020_mods/2020_main/sounds/emotes/sneezem1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/sneezem2.ogg'
		),
		"scream" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_scream1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_scream2.ogg'
		),
		"cry" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_cry1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_cry2.ogg'
		),
		"laugh" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh3.ogg'
		),
		"yawn" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_yawn1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_yawn2.ogg'
		),
		"giggle" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/male_laugh3.ogg'
		),
		"sigh" = list(
			'mods/2020_mods/2020_main/sounds/emotes/sigh_male.ogg'
		),
		"whimper" = list(
			'mods/2020_mods/2020_main/sounds/emotes/male_whimper.ogg'
		),
		"mumble" = list(
			'mods/2020_mods/2020_main/sounds/emotes/mumble_male.ogg'
		),
		"gasp" = list(
			'mods/2020_mods/2020_main/sounds/emotes/man_gasp1.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/man_gasp2.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/man_gasp3.ogg',
			'mods/2020_mods/2020_main/sounds/emotes/man_gasp4.ogg'
		)
	)