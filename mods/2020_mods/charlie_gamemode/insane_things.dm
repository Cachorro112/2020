/obj/screen/fullscreen/insane
	icon = 'mods/2020_mods/2020_main/icons/effects/insane.dmi'
	icon_state = "hall"
	plane = 30
	layer = 30
	alpha = 180

/obj/screen/fullscreen/war
	icon = 'mods/2020_mods/2020_main/icons/effects/insane.dmi'
	icon_state = "war"
	plane = 30
	layer = 30
	alpha = 180

/mob
	var/last_said = null	//Living, usado para o Insano*

/mob/living/say(var/message) //para o insano
	. = ..()
	last_said = message
	return 1

/mob/living/human/proc/handle_insane()
	if(combat_mode)
		spawn(0)
			INVOKE_ASYNC(src, .proc/handle_insane_screenshake)

	if(src && istype(src) && is_insane(src))
		INVOKE_ASYNC(src, .proc/handle_insane_hallucinations)

/mob/living/human/proc/handle_insane_hallucinations()
	if(!is_insane(src)) return

	if(prob(7))
		handle_visions()

	if(prob(4))
		src.adjust_hallucination (500, 40)

	if(prob(7))
		handle_war_vision()

	if(prob(16))
		handle_insane_talking()

//Copy-pasted and edited from Farweb's dreamer jumpscare proc.
/mob/living/human/proc/handle_visions()
	if(prob(10))
		emote("scream")

	overlay_fullscreen("visions", /obj/screen/fullscreen/insane, rand(1,13))

	var/turf/insane_turf = get_turf(src)
	if(insane_turf)
		insane_turf = locate(insane_turf.x, insane_turf.y, insane_turf.z)

	var/Laughhalo = pick('mods/2020_mods/2020_main/sounds/effects/comic1.ogg', 'mods/2020_mods/2020_main/sounds/effects/comic2.ogg', 'mods/2020_mods/2020_main/sounds/effects/comic3.ogg', 'mods/2020_mods/2020_main/sounds/effects/comic4.ogg')
	var/scaryhalo = pick('mods/2020_mods/2020_main/sounds/effects/littlescary.ogg', 'mods/2020_mods/2020_main/sounds/effects/littlescary2.ogg')
	var/random = rand(1,2)
	if(random == 1 && prob(80))
		src.playsound_local(insane_turf, Laughhalo, 80)
		spawn(rand(10, 20))
			clear_fullscreen("visions")
	else
		var/insanity = rand(10, 20)
		spawn(insanity)
			clear_fullscreen("visions")
			spawn(10)
				overlay_fullscreen("visions", /obj/screen/fullscreen/insane, rand(1,13))
				spawn(10)
					clear_fullscreen("visions")
		src.playsound_local(insane_turf, scaryhalo, 80)

//meh, i could made it simpler.
/mob/living/human/proc/handle_war_vision()
	if(prob(40))
		emote("scream")

	overlay_fullscreen("war", /obj/screen/fullscreen/war, rand(1,6))

	var/turf/insane_turf = get_turf(src)
	if(insane_turf)
		insane_turf = locate(insane_turf.x, insane_turf.y, insane_turf.z)

	var/sufferinghalo = pick('mods/2020_mods/2020_main/sounds/effects/war1.ogg', 'mods/2020_mods/2020_main/sounds/effects/war2.ogg', 'mods/2020_mods/2020_main/sounds/effects/war3.ogg', 'mods/2020_mods/2020_main/sounds/effects/war5.ogg')
	var/scaryambi = pick('mods/2020_mods/2020_main/sounds/effects/war4.ogg')
	var/random = rand(1,2)
	if(random == 1 && prob(80))
		src.playsound_local(insane_turf, sufferinghalo, 80)
		spawn(rand(10, 20))
			clear_fullscreen("war")
	else
		var/insanity = rand(10, 20)
		spawn(insanity)
			clear_fullscreen("war")
			spawn(10)
				overlay_fullscreen("war", /obj/screen/fullscreen/war, rand(1,6))
				spawn(10)
					clear_fullscreen("war")
		src.playsound_local(insane_turf, scaryambi, 80)


/mob/living/proc/handle_insane_screenshake()
	if(!client)
		return
	var/client/C = client
	var/shakeit = 0
	while(shakeit < 20)
		shakeit++
		var/intensity = 1 //i tried rand(1,2) but even that was 2 intense
		animate(C, pixel_y = (pixel_y + intensity), time = 0.5)
		sleep(0.5)
		animate(C, pixel_y = (pixel_y - intensity), time = 0.5)
		sleep(0.5)

/mob/living/human/Life()
	. = ..()

	if(stat != DEAD)
		handle_insane() // Ele skippa se nao for INSANO

//Putaria começa
/mob/living/human/proc/handle_insane_talking()
	var/list/object = list()
	for(var/obj/E in view(src, world.view)) /***************OBJETOS FALANDO, ETA CODING, MAS FUNCIONA PERFEITAMENTE*****************/
		if(istype(E.loc, /turf))
			object.Add(E)
	if(object.len)
		var/obj/O = pick(object)
		var/Onomatopeia = rand(0, 1)

		var/file_en = file2text('mods/2020_mods/2020_main/game/special_roles/insane_words.txt')
		var/insane_words = null

		insane_words = pick(splittext(file_en, "\n"))

		var/ending_d = copytext(insane_words, length(insane_words)) // Ending das frases estabelecidas
		var/ending_l = copytext(last_said, length(last_said)) //
		var/icone_to_go = null
		if(Onomatopeia == 0) //0 ele pega frase existente
			var/hasgone = 0
			if(ending_d == "!")
				icone_to_go = "h2"
				hasgone = 1
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>exclaims, </span>\"<span class='saybasic'><b>[insane_words]</b></span>\"")
			if(ending_d == "?")
				icone_to_go = "h1"
				hasgone = 1
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>asks, </span>\"<span class='saybasic'>[insane_words]</span>\"")
			else
				if(hasgone)
					return
				icone_to_go = "h0"
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>says, </span>\"<span class='saybasic'>[insane_words]</span>\"")
		if(Onomatopeia == 1) //last word do cara
			if(last_said == null)
				return
			if(ending_l == "!")
				icone_to_go = "h2"
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>exclaims, </span>\"<span class='saybasic'>[last_said]</span>\"")
			if(ending_l == "?")
				icone_to_go = "h1"
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>asks, </span>\"<span class='saybasic'>[last_said]</span>\"")
			else
				icone_to_go = "h0"
				to_chat(src, "[capitalize(O.name)] <span class='sayverb'>says, </span>\"<span class='saybasic'>[last_said]</span>\"")

		var/image/objchatimage
		objchatimage = image('icons/mob/talk.dmi', O, "[icone_to_go]", "[O.layer]")
		client.images += objchatimage
		var/turf/insane_turf = get_turf(src)
		if(insane_turf)
			insane_turf = locate(insane_turf.x, insane_turf.y, insane_turf.z)
		var/HallSounds = pick('mods/2020_mods/2020_main/sounds/effects/hall_appear1.ogg', 'mods/2020_mods/2020_main/sounds/effects/hall_appear2.ogg', 'mods/2020_mods/2020_main/sounds/effects/hall_appear3.ogg')
		src.playsound_local(insane_turf, HallSounds, 70)
		sleep(20)
		client.images -= objchatimage