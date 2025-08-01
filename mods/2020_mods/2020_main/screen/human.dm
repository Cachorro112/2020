#define ui_combat_toggle "EAST-3:24,SOUTH:5"

/obj/screen/combat_mode_icon
	name       = "combat mode"
	icon = 'mods/2020_mods/2020_main/icons/mobs/screen1.dmi'
	screen_loc = ui_combat_toggle
	icon_state = "cmbt0"
	requires_ui_style = FALSE

/obj/screen/fullscreen/film_grain
	icon = 'mods/2020_mods/2020_main/icons/effects/static.dmi'
	screen_loc = ui_entire_screen
	alpha = 90
	layer = 0
	mouse_opacity = 0
	blend_mode = 4

/datum/hud/human
	var/obj/screen/fullscreen/film_grain/film_grain2
	var/obj/screen/combat_mode_icon/combat_mode_icon

/datum/hud/human/FinalizeInstantiation()
	..()
	combat_mode_icon = new(combat_mode_icon, mymob)
	adding += combat_mode_icon

	film_grain2 = new(null, mymob)
	film_grain2.icon_state = "[rand(1,9)]h"
	adding += film_grain2

	var/mob/living/human/H = mymob
	H.hovertext = new /obj/screen/text
	H.hovertext.maptext = ""
	H.hovertext.screen_loc = "CENTER-7, CENTER+6"
	..()

//Hovertext
/obj/screen/text
	icon = null
	icon_state = null
	mouse_opacity = 0
	screen_loc = "TOP,LEFT"
	maptext_height = 480
	maptext_width = 480
	alpha = 90
	blend_mode = 4
	maptext = ""
	requires_ui_style = FALSE

/mob/living/human
	var/obj/screen/text/hovertext = null

//Thing for Hovertext
/proc/ScreenText(obj/O, maptext="", screen_loc="CENTER-7,CENTER-7", maptext_height=480, maptext_width=480)
	if(!isobj(O))	O = new /obj/screen/text()
	O.maptext = maptext
	O.maptext_height = maptext_height
	O.maptext_width = maptext_width
	O.screen_loc = screen_loc
	return O

/client/MouseEntered(var/atom/a)
	if(mob && ishuman(mob))
		var/mob/living/human/H = mob
		var/colorofText = "#999897"
		var/display_name = a.name
		if(istype(a, /turf))
			colorofText = "#999897"
		if(istype(a, /obj))
			colorofText = "#b5b3b1"
		if(istype(a, /obj/item))
			colorofText = "#c9c7c5"
		if(istype(a, /mob/living))
			colorofText = "#04c918"
		if(a.mouse_opacity)  // i spread this out to make it more "readable"
			H.hovertext.maptext = "<center><br><br><br><span style=\"\
			color: [colorofText]; \
			\"><font size= '3' face='AlundraText'>[uppertext(display_name)]\
			</font></span></center>"
		else
			H.hovertext.maptext = ""  // ui is blank, sad!