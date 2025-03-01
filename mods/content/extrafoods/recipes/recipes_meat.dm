//Bacon
/decl/recipe/fried/bacon
	display_name = "deep-fried bacon"
	container_categories = RECIPE_CATEGORY_FRYER
	items = list(
		/obj/item/food/rawbacon = 1
	)
	result = /obj/item/food/bacon

/decl/recipe/bacon_micro
	container_categories = RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/rawbacon = 1
	)
	result = /obj/item/food/bacon/microwave

/decl/recipe/baked/bacon_oven
	container_categories = RECIPE_CATEGORY_OVEN
	items = list(
		/obj/item/food/rawbacon = 6,
		/obj/item/food/dairy/butter = 1
	)
	result = /obj/item/food/bacon/oven
	result_quantity = 6

/decl/recipe/toasted/bacon_pan
	container_categories = RECIPE_CATEGORY_SKILLET
	items = list(
		/obj/item/food/rawbacon = 6,
		/obj/item/food/dairy/butter = 1
	)
	result = /obj/item/food/bacon/pan
	result_quantity = 6

/decl/recipe/bacon_stick
	container_categories = RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/bacon = 1,
		/obj/item/food/boiledegg = 1
	)
	result = /obj/item/food/bacon_stick

/decl/recipe/hatchling_surprise
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_SAUCEPAN
	items = list(
		/obj/item/food/poachedegg = 1,
		/obj/item/food/bacon = 3

	)
	result = /obj/item/food/hatchling_surprise

/decl/recipe/bacon_and_eggs
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/bacon = 1,
		/obj/item/food/friedegg = 1
	)
	result = /obj/item/food/bacon_and_eggs

/decl/recipe/baked/bacon_flatbread
	fruit = list("tomato" = 2)
	items = list(
		/obj/item/food/sliceable/flatdough = 1,
		/obj/item/food/dairy/cheese/wedge = 1,
		/obj/item/food/bacon = 4
	)
	result = /obj/item/food/bacon_flatbread

/decl/recipe/toasted/baconburger
	items = list(
		/obj/item/food/bun = 1,
		/obj/item/food/butchery/meat = 1,
		/obj/item/food/bacon = 2
	)
	result = /obj/item/food/baconburger

/decl/recipe/toasted/blt
	fruit = list("tomato" = 2, "lettuce" = 1)
	items = list(
		/obj/item/food/slice/bread = 2,
		/obj/item/food/bacon = 2
	)
	result = /obj/item/food/blt

/decl/recipe/toasted/blt/cbt
	fruit = list("tomato" = 1, "cabbage" = 1)
	result = /obj/item/food/blt/cbt

// Chicken
/decl/recipe/fried/nugget
	container_categories = RECIPE_CATEGORY_FRYER
	reagents = list(/decl/material/liquid/nutriment/flour = 5)
	items = list(
		/obj/item/food/butchery/meat/chicken = 1
	)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/food/nugget
	result_quantity = 6

/decl/recipe/fried/generalschicken
	container_categories = RECIPE_CATEGORY_FRYER
	reagents = list(/decl/material/liquid/capsaicin = 2, /decl/material/liquid/nutriment/sugar = 2, /decl/material/liquid/nutriment/batter = 10)
	items = list(
		/obj/item/food/butchery/meat/chicken = 2
	)
	result = /obj/item/food/generalschicken

/decl/recipe/chickenwings
	container_categories = RECIPE_CATEGORY_FRYER
	reagents = list(/decl/material/liquid/capsaicin = 1, /decl/material/liquid/nutriment/batter = 2)
	items = list(
		/obj/item/food/butchery/meat/chicken = 1
	)
	result = /obj/item/food/chickenwing

/decl/recipe/chickenfillet //Also just combinable, like burgers and hot dogs.
	items = list(
		/obj/item/food/chickenkatsu = 1,
		/obj/item/food/bun = 1
	)
	result = /obj/item/food/chickenfillet

// Beef
/decl/recipe/ribplate // Well, steak.
	container_categories = RECIPE_CATEGORY_OVEN
	reagents = list(/decl/material/liquid/nutriment/honey = 5, /decl/material/solid/spacespice = 2, /decl/material/solid/blackpepper = 1)
	items = list(/obj/item/food/butchery/meat = 1)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/food/ribplate

/decl/recipe/lasagna
	container_categories = RECIPE_CATEGORY_OVEN
	fruit = list("tomato" = 2, "eggplant" = 1)
	reagents = list(/decl/material/solid/organic/meat = 6) // in lieu of mincemeat; 2 meatballs or 3 cutlets
	items = list(
		/obj/item/food/sliceable/flatdough = 2
	)
	result = /obj/item/food/lasagna
	reagent_mix = REAGENT_REPLACE

/decl/recipe/donerkebab
	container_categories = RECIPE_CATEGORY_MIX
	fruit = list("tomato" = 1, "cabbage" = 1)
	reagents = list(/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/food/meatsteak = 1,
		/obj/item/food/sliceable/flatdough = 1
	)
	result = /obj/item/food/donerkebab

/decl/recipe/roastbeef
	container_categories = RECIPE_CATEGORY_OVEN
	fruit = list("carrot" = 2, "potato" = 2)
	items = list(
		/obj/item/food/butchery/meat = 1
	)
	result = /obj/item/food/roastbeef

/decl/recipe/father_breakfast
	container_categories = RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/sausage = 1,
		/obj/item/food/omelette = 1,
		/obj/item/food/meatsteak = 1
	)
	result = /obj/item/food/father_breakfast

/decl/recipe/stuffed_meatball
	container_categories = RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/meatball = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	fruit = list("cabbage" = 1)
	result = /obj/item/food/stuffed_meatball

/decl/recipe/meat_pocket
	container_categories = RECIPE_CATEGORY_OVEN
	items = list(
		/obj/item/food/sliceable/flatdough = 1,
		/obj/item/food/meatball = 1,
		/obj/item/food/dairy/cheese/wedge = 1
	)
	result = /obj/item/food/meat_pocket
	result_quantity = 2

// Eggs
/decl/recipe/egg_pancake
	container_categories = RECIPE_CATEGORY_SKILLET
	items = list(
		/obj/item/food/meatball = 3,
		/obj/item/food/omelette = 1
	)
	result = /obj/item/food/egg_pancake

/decl/recipe/riztizkzi_sea
	container_categories = RECIPE_CATEGORY_SAUCEPAN | RECIPE_CATEGORY_POT
	items = list(
		/obj/item/food/egg = 3
	)
	reagents = list(/decl/material/liquid/blood = 15)
	result = /obj/item/food/riztizkzi_sea

// TODO: Reimplement chilied eggs as soup recipe? Somehow? Or just let you add boiled eggs to soup?
/decl/recipe/chilied_eggs
	container_categories = RECIPE_CATEGORY_SAUCEPAN | RECIPE_CATEGORY_POT
	// TODO: Check data to make sure it's hot pepper chili and not ice pepper chili?
	reagents = list(
		/decl/material/liquid/nutriment/soup/chili = 30
	)
	items = list(
		/obj/item/food/boiledegg = 3
	)
	result = /obj/item/food/chilied_eggs

/decl/recipe/poachedegg
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_SAUCEPAN
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/sodiumchloride = 1, /decl/material/solid/blackpepper = 1, /decl/material/liquid/water = 5)
	items = list(
		/obj/item/food/egg = 1
	)
	reagent_mix = REAGENT_REPLACE //Get that water outta here
	result = /obj/item/food/poachedegg

// Sausage
/decl/recipe/red_sun_special
	container_categories = RECIPE_CATEGORY_SKILLET | RECIPE_CATEGORY_SAUCEPAN
	items = list(
		/obj/item/food/sausage = 1,
		/obj/item/food/dairy/cheese/wedge = 1

	)
	result = /obj/item/food/red_sun_special

// "Pork"
/decl/recipe/sweet_and_sour
	container_categories = RECIPE_CATEGORY_FRYER
	items = list(
		/obj/item/food/bacon = 1,
		/obj/item/food/butchery/cutlet = 1
	)
	reagents = list(/decl/material/liquid/nutriment/soysauce = 5, /decl/material/liquid/nutriment/batter = 10)
	result = /obj/item/food/sweet_and_sour

// Seafood
/decl/recipe/crab_legs
	container_categories = RECIPE_CATEGORY_SAUCEPAN | RECIPE_CATEGORY_POT
	reagents = list(/decl/material/liquid/water = 10, /decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/food/crabmeat = 1,
		/obj/item/food/dairy/butter = 1
		)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/food/crab_legs
