/mob
	var/combat_mode = 0

/mob/living/human/verb/combat_mode()
	set name = "CombatModeToggle"
	set instant = 1
	set hidden = 1
	var/mob/living/human/H = usr
	H.toggle_combat_mode()

/mob/living/human/verb/toggle_combat_mode(var/mob/user)
	set hidden = 1
	var/mob/living/human/H = usr
	var/datum/hud/human/hud = user.hud_used
	if(H.combat_mode)
		H.combat_mode = 0
		hud.combat_mode_icon.icon_state = "cmbt0"
		H << 'mods/2020_mods/2020_main/sounds/effects/ui_toggleoff.ogg'
		sound_to(H, sound(null, repeat = 0, wait = 0, volume = 70, channel = 12))
		var/list/sounds_list = H.client.SoundQuery()
		for(var/playing_sound in sounds_list)
			var/sound/found = playing_sound
			if(found.channel == 9)
				found.volume = 70
				found.status = SOUND_UPDATE
				H << found
	else
		H.combat_mode = 1
		hud.combat_mode_icon.icon_state = "cmbt1"
		H << 'mods/2020_mods/2020_main/sounds/effects/ui_toggle.ogg'
		var/area/A = get_area(src)

		var/list/sounds_list = H.client.SoundQuery()
		for(var/playing_sound in sounds_list)
			var/sound/found = playing_sound
			if(found.channel == 9)
				found.volume = 0
				found.status = SOUND_UPDATE
				H << found

		var/sound/S = sound(pick('mods/2020_mods/2020_main/sounds/combat/fight1.ogg','mods/2020_mods/2020_main/sounds/combat/fight2.ogg','mods/2020_mods/2020_main/sounds/combat/fight3.ogg'), repeat = 1, wait = 0, volume = 70, channel = 12)
		S.environment = A.sound_env

		if(is_insane(H))
			S = sound('mods/2020_mods/2020_main/sounds/combat/bloodlust1.ogg', repeat = 1, wait = 0, volume = 70, channel = 12)
		else
			S = sound(pick('mods/2020_mods/2020_main/sounds/combat/fight1.ogg','mods/2020_mods/2020_main/sounds/combat/fight2.ogg','mods/2020_mods/2020_main/sounds/combat/fight3.ogg'), repeat = 1, wait = 0, volume = 70, channel = 12)

		H << S