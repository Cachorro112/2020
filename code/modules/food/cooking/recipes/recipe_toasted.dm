/decl/recipe/toasted
	container_categories = RECIPE_CATEGORY_SKILLET
	abstract_type = /decl/recipe/toasted
	//cooking_heat_type = COOKING_HEAT_DIRECT
	//cooking_medium_type = null

/decl/recipe/toasted/waffles
	reagents = list(/decl/material/liquid/nutriment/batter/cakebatter = 20)
	reagent_mix = REAGENT_REPLACE // the batter should be cooked
	result = /obj/item/food/waffles
	completion_message = "The waffles firm up and brown as the batter is cooked through."

/decl/recipe/toasted/pancakes/blu
	fruit = list("blueberries" = 2)
	result = /obj/item/food/pancakesblu

/decl/recipe/toasted/pancakes
	display_name = "plain pancakes"
	reagents = list(/decl/material/liquid/nutriment/batter = 20)
	reagent_mix = REAGENT_REPLACE // the batter should be cooked
	result = /obj/item/food/pancakes
	completion_message = "The pancakes firm up and brown as the batter is cooked through."

/decl/recipe/toasted/friedegg
	reagents = list(/decl/material/solid/sodiumchloride = 1, /decl/material/solid/blackpepper = 1)
	items = list(
		/obj/item/food/egg
	)
	reagent_mix = REAGENT_REPLACE // no raw egg
	result = /obj/item/food/friedegg
	completion_message = "The egg spits and sizzles as it cooks through."

/decl/recipe/toasted/omelette
	items = list(
		/obj/item/food/egg = 2,
		/obj/item/food/dairy/cheese/wedge,
	)
	reagent_mix = REAGENT_REPLACE // no raw egg
	result = /obj/item/food/omelette
	completion_message = "The omelette firms up as it cooks through."
