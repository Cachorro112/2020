/decl/recipe/toasted/tortilla
	container_categories = RECIPE_CATEGORY_SKILLET
	reagents = list(/decl/material/liquid/nutriment/flour = 5,/decl/material/liquid/water = 5)
	result = /obj/item/food/tortilla
	reagent_mix = REAGENT_REPLACE //no gross flour or water

/decl/recipe/chips
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_FRYER
	reagents = list(/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/food/tortilla = 1
	)
	result = /obj/item/food/chipplate

/decl/recipe/toasted/nachos
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_MICROWAVE // melt the cheese!
	items = list(
		/obj/item/food/chipplate = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/chipplate/nachos

/decl/recipe/cheesyfries
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/fries = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/cheesyfries

/decl/recipe/cheesyfries_cold // You monster.
	container_categories = RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/fries = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/cheesyfries/uncooked

/decl/recipe/salsa
	container_categories = RECIPE_CATEGORY_MIX
	fruit = list("chili" = 1, "tomato" = 1, "lime" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	result = /obj/item/food/dip/salsa
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/guac
	container_categories = RECIPE_CATEGORY_MIX
	fruit = list("chili" = 1, "lime" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/food/tofu = 1
	)
	result = /obj/item/food/dip/guac
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/simmered/cheesesauce
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_SAUCEPAN | RECIPE_CATEGORY_POT | RECIPE_CATEGORY_MICROWAVE // melt the cheese
	fruit = list("chili" = 1, "tomato" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/dip
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/baked/enchiladas // this is an override of the core recipe, since we have tortillas
	fruit = list("chili" = 2)
	items = list(/obj/item/food/butchery/cutlet = 1, /obj/item/food/tortilla = 1)
	result = /obj/item/food/enchiladas

/decl/recipe/burrito
	display_name = "plain meat burrito"
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/tortilla = 1,
		/obj/item/food/meatball = 2
	)
	reagents = list(/decl/material/solid/spacespice = 1)
	result = /obj/item/food/burrito

/decl/recipe/burrito_vegan
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/tortilla = 1,
		/obj/item/food/tofu = 1
	)
	result = /obj/item/food/burrito_vegan

/decl/recipe/burrito_spicy
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	fruit = list("chili" = 2)
	items = list(
		/obj/item/food/burrito = 1
	)
	result = /obj/item/food/burrito_spicy

/decl/recipe/burrito_cheese
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/burrito = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/burrito_cheese

/decl/recipe/burrito_cheese_spicy
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	fruit = list("chili" = 2)
	items = list(
		/obj/item/food/burrito = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/burrito_cheese_spicy

/decl/recipe/burrito_hell
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	fruit = list("chili" = 10)
	items = list(
		/obj/item/food/burrito_spicy = 1
	)
	result = /obj/item/food/burrito_hell
	reagent_mix = REAGENT_REPLACE //Already hot sauce

/decl/recipe/burrito_mystery
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/burrito = 1,
		/obj/item/chems/glass/bowl/mystery = 1
	)
	result = /obj/item/food/burrito_mystery

/decl/recipe/burrito_mystery/check_items(obj/container)
	. = ..()
	if(!.)
		return FALSE
	var/obj/item/chems/glass/bowl/mystery/mysterysoup = locate() in container?.get_contained_external_atoms()
	if(!mysterysoup) // how??
		return FALSE
	return !mysterysoup.drained