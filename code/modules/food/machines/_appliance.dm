// This folder contains code that was originally ported from Apollo Station and then refactored/optimized/changed on Aurora.
// Then it was ported to Citadel Station RP where it was refactored/optimized/changed.
// Then it was ported to Bastion of Hestia where it was refactored/optimized/changed.
// Then it was ported back to Aurora where it was refactored/optimized/changed.
// Then it was ported to Hearth of Hestia where it was refactored/optimized/changed.

// Tracks precooked food to stop deep fried baked grilled grilled grilled diona nymph cereal.
/obj/item/food
	var/tmp/list/cooked

// Root type for cooking machines. See following files for specific implementations.
/obj/machinery/appliance
	abstract_type = /obj/machinery/appliance
	name = "cooker"
	desc = "You shouldn't be seeing this!"
	icon = 'icons/obj/cooking_machines.dmi'
	var/cooking_category = 0
	density = TRUE
	anchored = TRUE
	construct_state = /decl/machine_construction/default/panel_closed
	uncreated_component_parts = null
	maximum_component_parts = list(/obj/item/stock_parts = 11)

	pass_flags = PASS_FLAG_TABLE

	use_power = 0
	idle_power_usage = 5			// Power used when turned on, but not processing anything
	active_power_usage = 1000		// Power used when turned on and actively cooking something

	var/cooking_power = 0			// Effectiveness/speed at cooking
	var/cooking_coeff = 0			// Part-based cooking power multiplier
	var/heating_power = 1000		// Effectiveness at heating up; not used for mixers, should be equal to active_power_usage
	var/max_contents = 1			// Maximum number of things this appliance can simultaneously cook
	var/on_icon						// Icon state used when cooking.
	var/off_icon					// Icon state used when not cooking.
	var/cooking						// Whether or not the machine is currently operating.
	var/cook_type					// A string value used to track what kind of food this machine makes.
	var/can_cook_mobs				// Whether or not this machine accepts grabbed mobs.
	var/mobdamagetype = BRUTE		// Burn damage for cooking appliances, brute for cereal/candy
	var/food_color					// Colour of resulting food item.
	var/cooked_sound = 'sound/machines/ding.ogg'				// Sound played when cooking completes.
	var/can_burn_food				// Can the object burn food that is left inside?
	var/burn_chance = 10			// How likely is the food to burn?
	var/list/cooking_objs = list()	// List of things being cooked

	// If the machine has multiple output modes, define them here.
	var/selected_option
	var/list/output_options = list()
	var/finish_verb = "pings!"
	var/combine_first = FALSE//If 1, this appliance will do combination cooking before checking recipes

/obj/machinery/appliance/components_are_accessible(path)
	return !cooking && ..()

/obj/machinery/appliance/cannot_transition_to(state_path, mob/user)
	if(cooking)
		return SPAN_NOTICE("Wait for \the [src] to finish first!")
	return ..()

/obj/machinery/appliance/Initialize()
	. = ..()
	if(length(output_options))
		verbs += /obj/machinery/appliance/proc/choose_output

/obj/machinery/appliance/Destroy()
	for (var/a in cooking_objs)
		var/datum/cooking_item/CI = a
		qdel(CI.container)//Food is fragile, it probably doesnt survive the destruction of the machine
		cooking_objs -= CI
		qdel(CI)
	return ..()

/obj/machinery/appliance/examine(var/mob/user)
	. = ..()
	if(panel_open)
		to_chat(user, "The service panel is open.")
	if(Adjacent(user))
		list_contents(user)

/obj/machinery/appliance/get_mechanics_info()
	return "Control-click this to toggle its power."

/obj/machinery/appliance/proc/list_contents(var/mob/user)
	if (!length(cooking_objs))
		to_chat(user, SPAN_NOTICE("It is empty."))
		return
	var/string = "Contains...<ul>"
	for (var/datum/cooking_item/CI in cooking_objs)
		string += "<li>\a [CI.container.label(null, CI.combine_target)], [report_progress(CI)]</li>"
	string += "</ul>"
	to_chat(user, string)

/obj/machinery/appliance/proc/report_progress(var/datum/cooking_item/CI)
	if (!CI || !CI.max_cookwork)
		return null

	if (!CI.cookwork)
		return "It is cold."
	var/progress = CI.cookwork / CI.max_cookwork
	var/half_overcook = (CI.overcook_mult - 1)*0.5
	switch(progress)
		if (0 to 0.25)
			return "It's barely started cooking."
		if (0.25 to 0.75)
			return SPAN_NOTICE("It's cooking away nicely.")
		if (0.75 to 1)
			return SPAN_NOTICE("<b>It's almost ready!</b>")
	if (progress < 1+half_overcook)
		return FONT_COLORED(COLOR_GREEN_GRAY, "<b>It is done!</b>")
	if (progress < CI.overcook_mult)
		return SPAN_WARNING("It looks overcooked, get it out!")
	return SPAN_DANGER("It is burning!")

/obj/machinery/appliance/proc/get_cooking_item_from_container(var/obj/item/chems/cooking_container/CC)
	for(var/C in cooking_objs)
		var/datum/cooking_item/CI = C
		if(CI.container == CC)
			return CI

/obj/machinery/appliance/on_update_icon()
	if ((use_power != POWER_USE_OFF) && length(cooking_objs))
		icon_state = on_icon
	else
		icon_state = off_icon

/obj/machinery/appliance/proc/attempt_toggle_power(mob/user)
	if (!isliving(user))
		return

	if (!user.check_dexterity(DEXTERITY_SIMPLE_MACHINES))
		return

	if (user.stat || user.restrained() || user.incapacitated())
		return

	if (!Adjacent(user) && !issilicon(user))
		to_chat(user, "You can't reach [src] from here.")
		return

	update_use_power((use_power == POWER_USE_OFF) ? POWER_USE_IDLE : POWER_USE_OFF) // If on, use active power, else use no power
	if(user)
		user.visible_message("[user] turns [src] [use_power ? "on" : "off"].", "You turn [use_power ? "on" : "off"] [src].")
	playsound(src, 'sound/machines/click.ogg', 40, 1)
	update_icon()

/obj/machinery/appliance/AICtrlClick(mob/user)
	attempt_toggle_power(user, TRUE)

/obj/machinery/appliance/proc/choose_output()
	set src in view()
	set name = "Choose output"
	set category = "Object"

	if (!isliving(usr))
		return

	if (!usr.check_dexterity(DEXTERITY_SIMPLE_MACHINES))
		return

	if (usr.stat || usr.restrained() || usr.incapacitated())
		return

	if (!Adjacent(usr) && !issilicon(usr))
		to_chat(usr, "You can't adjust the [src] from this distance, get closer!")
		return
	if(!length(output_options))
		return
	var/choice = input("What specific food do you wish to make with [src]?", "Choose Output") as null|anything in output_options+"Default"
	if(!choice)
		return
	selected_option = (choice == "Default") ? null : choice
	to_chat(usr, SPAN_NOTICE("You decide to make [choice == "Default" ? "nothing specific" : choice] with [src]."))

//Handles all validity checking and error messages for inserting things
/obj/machinery/appliance/proc/can_insert(var/obj/item/I, var/mob/user)
	if(!I.canremove || istype(I.loc, /mob/living/silicon) || istype(I.loc, /obj/item/rig_module))
		return CANNOT_INSERT

	// We are trying to cook a grabbed mob.
	var/obj/item/grab/G = I
	if(istype(G))

		if(!can_cook_mobs)
			to_chat(user, SPAN_WARNING("That's not going to fit."))
			return CANNOT_INSERT

		if(!isliving(G.affecting))
			to_chat(user, SPAN_WARNING("You can't cook that."))
			return CANNOT_INSERT

		return INSERT_GRABBED

	if (!has_space(I))
		to_chat(user, SPAN_WARNING("There's no room in [src] for that!"))
		return CANNOT_INSERT

	if (istype(I, /obj/item/chems/cooking_container))
		var/obj/item/chems/cooking_container/CC = I
		if(CC.cooking_category & cooking_category)
			return CAN_INSERT

	// We're trying to cook something else. Check if it's valid.
	var/obj/item/food/check = I
	if(istype(check) && LAZYISIN(cook_type,check.cooked))
		to_chat(user, SPAN_WARNING("[check] has already been [cook_type]."))
		return CANNOT_INSERT
	else if(istype(I, /obj/item/chems/glass))
		to_chat(user, SPAN_WARNING("That would probably break [I]."))
		return CANNOT_INSERT
	else if(IS_CROWBAR(I) || IS_SCREWDRIVER(I) || istype(I, /obj/item/part_replacer))
		return CANNOT_INSERT
	else if(!istype(check) && !istype(I, /obj/item/holder))
		to_chat(user, SPAN_WARNING("That's not edible."))
		return CANNOT_INSERT
	return CAN_INSERT

//This function is overridden by cookers that do stuff with containers
/obj/machinery/appliance/proc/has_space(var/obj/item/I)
	if (length(cooking_objs) >= max_contents)
		return FALSE
	return TRUE

/obj/machinery/appliance/attackby(var/obj/item/I, var/mob/user)
	if(component_attackby(I, user))
		return TRUE

	if(!cook_type || (stat & (BROKEN)))
		to_chat(user, SPAN_WARNING("[src] is not working."))
		return

	var/result = can_insert(I, user)
	if(result == CANNOT_INSERT)
		return ..(I, user)

	if(result == INSERT_GRABBED)
		var/obj/item/grab/G = I
		if (G && istype(G) && G.affecting)
			cook_mob(G.affecting, user)
			return

	//From here we can start cooking food
	add_content(I, user)
	update_icon()

//Override for container mechanics
/obj/machinery/appliance/proc/add_content(var/obj/item/I, var/mob/user)
	if(!user.try_unequip(I))
		return

	var/datum/cooking_item/CI = has_space(I)
	if (istype(I, /obj/item/chems/cooking_container) && CI)
		var/obj/item/chems/cooking_container/CC = I
		CI = new /datum/cooking_item/(CC)
		I.forceMove(src)
		cooking_objs.Add(CI)
		if (CC.check_contents() == CONTAINER_EMPTY)//If we're just putting an empty container in, then dont start any processing.
			user.visible_message("<b>[user]</b> puts [I] into [src].")
			return
	else
		if (CI && istype(CI))
			I.forceMove(CI.container)

		else //Something went wrong
			return

	if (selected_option)
		CI.combine_target = selected_option

	// We can actually start cooking now.
	user.visible_message("<b>[user]</b> puts [I] into [src].")
	var/atom/recipe_parent = CI.container || src
	if(selected_option || length(CI.container.contents) || select_recipe(CI.container.cooking_category, recipe_parent, recipe_parent.temperature)) // we're doing combo cooking, we're not just heating reagents, OR we have a valid reagent-only recipe
		// this is to stop reagents from burning when you're heating stuff
		get_cooking_work(CI)
		cooking = TRUE

	return CI

/obj/machinery/appliance/proc/get_cooking_work(var/datum/cooking_item/CI)
	for (var/obj/item/J in CI.container)
		oilwork(J, CI)

	for (var/_R in CI.container.reagents.reagent_volumes)
		if (ispath(_R, /decl/material/liquid/nutriment))
			CI.max_cookwork += CI.container.reagents.reagent_volumes[_R] *2//Added reagents contribute less than those in food items due to granular form

			//Nonfat reagents will soak oil
			if (!ispath(_R, /decl/material/liquid/nutriment/triglyceride))
				CI.max_oil += CI.container.reagents.reagent_volumes[_R] * 0.25
		else
			CI.max_cookwork += CI.container.reagents.reagent_volumes[_R]
			CI.max_oil += CI.container.reagents.reagent_volumes[_R]* 0.10

	//Rescaling cooking work to avoid insanely long times for large things
	var/brackets = CI.max_cookwork / 4
	CI.max_cookwork = 4*(1-0.95**brackets)/0.05

//Just a helper to save code duplication in the above
/obj/machinery/appliance/proc/oilwork(var/obj/item/I, var/datum/cooking_item/CI)
	var/obj/item/food/S = I
	var/work = 0
	if (istype(S) && S.reagents)
		for (var/_R in S.reagents.reagent_volumes)
			if (ispath(_R, /decl/material/liquid/nutriment))
				work += S.reagents.reagent_volumes[_R] *3//Core nutrients contribute much more than peripheral chemicals

				//Nonfat reagents will soak oil
				if (!ispath(_R, /decl/material/liquid/nutriment/triglyceride))
					CI.max_oil += S.reagents.reagent_volumes[_R] * 0.35
			else
				work += S.reagents.reagent_volumes[_R]
				CI.max_oil += S.reagents.reagent_volumes[_R] * 0.15

	else if(istype(I, /obj/item/holder))
		var/mob/living/contained = locate() in I
		if (contained)
			work += (contained.mob_size * contained.mob_size * 2)+2

	CI.max_cookwork += work

//Called every tick while we're cooking something
/obj/machinery/appliance/proc/do_cooking_tick(var/datum/cooking_item/CI)
	if (!CI.max_cookwork)
		return FALSE

	var/was_done = (CI.cookwork >= CI.max_cookwork)

	CI.cookwork += cooking_power

	if (!was_done && CI.cookwork >= CI.max_cookwork)
		//If cookwork has gone from above to below 0, then this item finished cooking
		finish_cooking(CI)

	else if (can_burn_food && !CI.burned && CI.cookwork > CI.max_cookwork * CI.overcook_mult)
		burn_food(CI)

	// Gotta hurt.
	for(var/obj/item/holder/H in CI.container.contents)
		var/mob/living/M = locate() in H.contents
		M.apply_damage(rand(1,3), mobdamagetype, BP_CHEST)

	return TRUE

/obj/machinery/appliance/Process()
	if (cooking_power > 0 && cooking)
		for (var/i in cooking_objs)
			do_cooking_tick(i)

/obj/machinery/appliance/proc/finish_cooking(var/datum/cooking_item/CI)
	audible_message("<b>[src]</b> [finish_verb]")
	if(cooked_sound)
		playsound(get_turf(src), cooked_sound, 50, 1)
	//Check recipes first, a valid recipe overrides other options
	var/decl/recipe/recipe = null
	var/atom/C = null
	var/category
	if (CI.container?.cooking_category)
		C = CI.container
		category = CI.container.cooking_category
	else if(cooking_category)
		C = src
		category = cooking_category
	if(category)
		recipe = select_recipe(category, C, C.temperature)

	if (recipe)
		var/decl/recipe/oldrecipe = recipe
		var/list/cooked_items = list()
		while(recipe)
			cooked_items += recipe.produce_result(C)
			recipe = select_recipe(category, C, C.temperature)
			if (!recipe || recipe != oldrecipe)
				break

		for (var/r in cooked_items)
			var/obj/item/food/R = r
			R.forceMove(C) //Move everything from the buffer back to the container
			LAZYDISTINCTADD(R.cooked, cook_type)

		return TRUE //None of the rest of this function is relevant for recipe cooking

	else if(CI.combine_target)
		. = combination_cook(CI)

	else
		//Otherwise, we're just doing standard modification cooking. change a color + name
		for (var/obj/item/i in C)
			modify_cook(i, CI)

	//Final step. Cook function just cooks batter for now.
	for (var/obj/item/food/S in C)
		S.cook()

//Combination cooking involves combining the names and reagents of ingredients into a predefined output object
//The ingredients represent flavours or fillings. EG: donut pizza, cheese bread
/obj/machinery/appliance/proc/combination_cook(var/datum/cooking_item/CI)
	if(!CI.combine_target)
		return
	var/cook_path = output_options[CI.combine_target]

	var/list/words = list()
	var/list/cooktypes = list()
	var/datum/reagents/buffer = new /datum/reagents(1000)
	var/totalcolour

	for (var/obj/item/I in CI.container)
		var/obj/item/food/S
		if (istype(I, /obj/item/holder))
			S = create_mob_food(I, CI)
		else if (istype(I, /obj/item/food))
			S = I

		if (!S)
			continue

		words |= splittext(S.name," ")
		cooktypes |= S.cooked

		if (S.reagents?.total_volume)
			if (S.filling_color)
				if (!totalcolour || !buffer.total_volume)
					totalcolour = S.filling_color
				else
					var/t = buffer.total_volume + S.reagents.total_volume
					t = buffer.total_volume / y
					totalcolour = BlendRGB(totalcolour, S.filling_color, t)
					//Blend colours in order to find a good filling color

			S.reagents.trans_to_holder(buffer, S.reagents.total_volume)
		//Cleanup these empty husk ingredients now
		if (I)
			qdel(I)
		if (S)
			qdel(S)

	CI.container.reagents.trans_to_holder(buffer, CI.container.reagents.total_volume)

	var/obj/item/food/variable/result = new cook_path(CI.container)
	buffer.trans_to(result, buffer.total_volume)

	//Filling overlay
	var/image/I = image(result.icon, "[result.icon_state]_filling")
	I.color = totalcolour
	result.overlays += I
	result.filling_color = totalcolour

	//Set the name.
	words -= list("and", "the", "in", "is", "bar", "raw", "sticks", "boiled", "fried", "deep", "-o-", "warm", "two", "flavored")
	//Remove common connecting words and unsuitable ones from the list. Unsuitable words include those describing
	//the shape, cooked-ness/temperature or other state of an ingredient which doesn't apply to the finished product
	words.Remove(result.name)
	shuffle(words)
	var/num = 6 //Maximum number of words
	result.name = result.get_name_sans_prefix()
	while (num > 0)
		num--
		if (!length(words))
			break
		//Add prefixes from the ingredients in a random order until we run out or hit limit
		result.name = "[pop(words)] [result.name]"

	//This proc sets the size of the output result
	result.update_prefix()
	return result

//Helper proc for standard modification cooking
/obj/machinery/appliance/proc/modify_cook(var/obj/item/input, var/datum/cooking_item/CI)
	var/obj/item/food/result
	if (istype(input, /obj/item/holder))
		result = create_mob_food(input, CI)
	else if (istype(input, /obj/item/food))
		result = input
	else
		//Nonviable item
		return

	if (!result)
		return

	LAZYDISTINCTADD(result.cooked, cook_type)

	// Set icon and appearance.
	change_product_appearance(result, CI)

	// Update strings.
	change_product_strings(result, CI)

/obj/machinery/appliance/proc/burn_food(var/datum/cooking_item/CI)
	// You dun goofed.
	CI.burned = TRUE
	CI.container.clear()
	new /obj/item/food/badrecipe(CI.container)

	// Produce nasty smoke.
	visible_message(SPAN_DANGER("[src] vomits a gout of rancid smoke!"))
	var/datum/effect/effect/system/smoke_spread/bad/smoke = new /datum/effect/effect/system/smoke_spread/bad
	smoke.attach(src)
	smoke.set_up(10, 0, get_turf(src), 300)
	smoke.start()

/obj/machinery/appliance/CtrlClick(var/mob/user)
	if(!anchored)
		return ..()
	attempt_toggle_power(user)

/obj/machinery/appliance/physical_attack_hand(var/mob/user)
	if (!length(cooking_objs))
		return
	if (removal_menu(user))
		return
	. = ..()

/obj/machinery/appliance/proc/removal_menu(var/mob/user)
	if (!can_remove_items(user))
		return FALSE
	var/list/choices = list()
	var/list/menuoptions = list()
	for (var/a in cooking_objs)
		var/datum/cooking_item/CI = a
		if (CI.container)
			var/current_iteration_len = length(menuoptions) + 1
			menuoptions[CI.container.label(current_iteration_len)] = CI
			var/obj/item/icon_to_use = CI.container
			if(CI.container.contents.len == 1)
				var/obj/item/I = locate() in CI.container.contents
				icon_to_use = I
			choices[CI.container.label(current_iteration_len)] = icon_to_use

	var/selection = show_radial_menu(user, src, choices, require_near = TRUE, tooltips = TRUE, no_repeat_close = TRUE)
	if (selection)
		var/datum/cooking_item/CI = menuoptions[selection]
		eject(CI, user)
		update_icon()
	return TRUE

/obj/machinery/appliance/proc/can_remove_items(var/mob/user)
	if (!Adjacent(user) || isanimal(user) || user.incapacitated())
		return FALSE

	return TRUE

/obj/machinery/appliance/proc/eject(var/datum/cooking_item/CI, var/mob/user = null)
	var/obj/item/thing
	var/delete = TRUE
	var/status = CI.container.check_contents()
	if (status == CONTAINER_SINGLE)//If theres only one object in a container then we extract that
		thing = locate(/obj/item) in CI.container
		delete = FALSE
	else//If the container is empty OR contains more than one thing, then we must extract the container
		thing = CI.container
		cooking_objs -= CI
	if (!user || !user.put_in_hands(thing))
		thing.forceMove(get_turf(src))

	if (delete)
		qdel(CI)
	else
		CI.reset()//reset instead of deleting if the container is left inside

/obj/machinery/appliance/proc/cook_mob(var/mob/living/victim, var/mob/user)
	return

/obj/machinery/appliance/proc/change_product_strings(var/obj/item/food/product, var/datum/cooking_item/CI)
	product.name = "[cook_type] [product.name]"
	product.desc = "[product.desc]\nIt has been [cook_type]."

/obj/machinery/appliance/proc/change_product_appearance(var/obj/item/food/product, var/datum/cooking_item/CI)
	if (!product.batter_coating) //Coatings change colour through a new sprite
		product.color = food_color
	product.filling_color = food_color

//This function creates a food item which represents a dead mob
/obj/machinery/appliance/proc/create_mob_food(var/obj/item/holder/H, var/datum/cooking_item/CI)
	var/mob/living/victim = locate() in H.contents
	if (!istype(H) || !victim)
		qdel(H)
		return null
	if (victim.stat != DEAD)
		return null //Victim somehow survived the cooking, they do not become food

	var/obj/item/food/variable/mob/result = new /obj/item/food/variable/mob(CI.container)
	result.w_class = victim.mob_size
	var/reagent_amount = victim.mob_size ** 2 * 3
	var/decl/butchery_data/butchery_data = GET_DECL(victim.butchery_data)
	if(butchery_data?.meat_amount)
		reagent_amount = butchery_data.meat_amount*9 // at a rate of 9 protein per meat
	var/digest_product_type = victim.get_digestion_product() // DOES NOT RETURN A DECL, RETURNS A PATH
	var/list/data
	var/meat_name = butchery_data.meat_name
	if(ishuman(victim))
		var/mob/living/human/CH = victim
		meat_name = CH.species?.name ? "[CH.species?.name] meat" : meat_name
	if(ispath(digest_product_type, /decl/material/solid/organic/meat))
		data = list((meat_name) = reagent_amount)
	result.add_to_reagents(digest_product_type, reagent_amount, data)

	if (victim.reagents)
		victim.reagents.trans_to(result, victim.reagents.total_volume)

	result.appearance = victim
	result.size = result.reagents.total_volume // so taking a bite doesn't suddenly make it HUGE

	var/matrix/M = matrix()
	M.Turn(45)
	M.Translate(1,-2)
	result.transform = M

	// all done, now delete the old objects
	victim.forceMove(null)
	QDEL_NULL(victim)
	QDEL_NULL(H)

	return result

/datum/cooking_item
	var/max_cookwork
	var/cookwork
	var/overcook_mult = 5
	var/obj/item/chems/cooking_container/container = null
	var/combine_target = null
	var/burned = FALSE

	var/oil = 0
	var/max_oil = 0//Used for fryers.

/datum/cooking_item/New(var/obj/item/I)
	container = I

//This is called for containers whose contents are ejected without removing the container
/datum/cooking_item/proc/reset()
	max_cookwork = 0
	cookwork = 0
	burned = FALSE
	max_oil = 0
	oil = 0
	combine_target = null
	//Container is not reset

/obj/machinery/appliance/proc/update_cooking_power()
	cooking_power = cooking_coeff

/obj/machinery/appliance/RefreshParts()
	..()
	var/scan_rating = 0
	var/cap_rating = 0

	scan_rating = total_component_rating_of_type(/obj/item/stock_parts/scanning_module) - number_of_components(/obj/item/stock_parts/scanning_module)
	cap_rating = total_component_rating_of_type(/obj/item/stock_parts/capacitor) - number_of_components(/obj/item/stock_parts/capacitor)

	change_power_consumption(initial(active_power_usage) - scan_rating * 25, POWER_USE_ACTIVE)
	heating_power = initial(heating_power) + cap_rating * 50
	cooking_coeff = (1 + (scan_rating + cap_rating) / 20) // 100% eff. becomes 120%, 140%, 160% w/ better parts