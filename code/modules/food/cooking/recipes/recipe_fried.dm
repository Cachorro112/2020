/decl/recipe/fried
	abstract_type = /decl/recipe/fried
	appliance = RECIPE_CATEGORY_FRYER
	//cooking_heat_type = COOKING_HEAT_DIRECT
	//cooking_medium_type = /decl/material/liquid/oil

/decl/recipe/fried/cubancarp
	fruit = list("chili" = 1)
	coating = /decl/material/liquid/nutriment/batter
	items = list(
		/obj/item/chems/food/butchery/meat/fish
	)
	result = /obj/item/chems/food/cubancarp

/decl/recipe/fried/fishandchips
	items = list(
		/obj/item/chems/food/fries,
		/obj/item/chems/food/butchery/meat/fish
	)
	reagent_mix = REAGENT_REPLACE // we don't want the fries to show up twice in taste data
	result = /obj/item/chems/food/fishandchips

/decl/recipe/fried/fishfingers
	appliance = RECIPE_CATEGORY_FRYER
	coating = /decl/material/liquid/nutriment/batter
	items = list(
		/obj/item/chems/food/egg,
		/obj/item/chems/food/butchery/meat/fish
	)
	reagent_mix = REAGENT_REPLACE // no raw egg/fish
	result = /obj/item/chems/food/fishfingers

/decl/recipe/fried/onionrings
	fruit = list("onion" = 1)
	coating = /decl/material/liquid/nutriment/batter
	result = /obj/item/chems/food/onionrings

/decl/recipe/fried/fries
	display_name = "potato chips"
	fruit = list("potato sticks" = 1)
	reagent_mix = REAGENT_REPLACE // get the raw potato out of there
	result = /obj/item/chems/food/fries

/decl/recipe/fried/chaosdonut
	reagents = list(/decl/material/liquid/frostoil = 5, /decl/material/liquid/capsaicin = 5, /decl/material/liquid/nutriment/sugar = 5)
	items = list(
		/obj/item/chems/food/dough
	)
	reagent_mix = REAGENT_REPLACE // special case; chaos donut adds random reagents
	result = /obj/item/chems/food/donut/chaos

/decl/recipe/fried/donut
	display_name = "plain donut"
	reagents = list(/decl/material/liquid/nutriment/sugar = 5)
	items = list(
		/obj/item/chems/food/dough
	)
	result = /obj/item/chems/food/donut/unfrosted

/decl/recipe/fried/donut/jelly
	display_name = "berry jelly donut"
	reagents = list(/decl/material/liquid/drink/juice/berry = 5, /decl/material/liquid/nutriment/sugar = 5)
	result = /obj/item/chems/food/donut/jelly

/decl/recipe/fried/donut/jelly/cherry
	display_name = "cherry jelly donut"
	reagents = list(/decl/material/liquid/nutriment/cherryjelly = 5, /decl/material/liquid/nutriment/sugar = 5)
