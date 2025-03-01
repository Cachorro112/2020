// TODO: make all of these into handcrafted items
/decl/recipe/jellyburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	reagents = list(/decl/material/liquid/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/food/bun
	)
	result = /obj/item/food/jellyburger/cherry

/decl/recipe/threebread
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/twobread,
		/obj/item/food/slice/bread,
	)
	result = /obj/item/food/threebread

/decl/recipe/cherrysandwich
	container_categories = RECIPE_CATEGORY_MIX
	reagents = list(/decl/material/liquid/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/food/slice/bread = 2,
	)
	result = /obj/item/food/jellysandwich/cherry

/decl/recipe/classichotdog
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/holder/corgi
	)
	result = /obj/item/food/classichotdog

/decl/recipe/meatburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/food/butchery/cutlet
	)
	result = /obj/item/food/hamburger

/decl/recipe/brainburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/organ/internal/brain
	)
	result = /obj/item/food/brainburger

/decl/recipe/roburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/robot_parts/head
	)
	result = /obj/item/food/roburger

/decl/recipe/xenoburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/food/butchery/meat/xeno
	)
	result = /obj/item/food/xenoburger

/decl/recipe/fishburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/food/butchery/meat/fish
	)
	result = /obj/item/food/fishburger

/decl/recipe/tofuburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/food/tofu
	)
	result = /obj/item/food/tofuburger

/decl/recipe/ghostburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/ectoplasm //where do you even find this stuff
	)
	result = /obj/item/food/ghostburger

/decl/recipe/clownburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/clothing/mask/gas/clown_hat
	)
	result = /obj/item/food/clownburger

/decl/recipe/mimeburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/clothing/head/beret
	)
	result = /obj/item/food/mimeburger

/decl/recipe/bunbun
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun = 2
	)
	result = /obj/item/food/bunbun

/decl/recipe/hotdog
	display_name = "plain hotdog"
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/bun,
		/obj/item/food/sausage
	)
	result = /obj/item/food/hotdog

/decl/recipe/spellburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/burger,
		/obj/item/clothing/head/wizard,
	)
	result = /obj/item/food/spellburger

/decl/recipe/bigbiteburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/burger,
		/obj/item/food/butchery/meat = 2,
		/obj/item/food/egg,
	)
	reagent_mix = REAGENT_REPLACE // no raw egg
	result = /obj/item/food/bigbiteburger

/decl/recipe/sandwich
	display_name = "meat and cheese sandwich"
	container_categories = RECIPE_CATEGORY_MICROWAVE|RECIPE_CATEGORY_MIX
	items = list(
		/obj/item/food/meatsteak,
		/obj/item/food/slice/bread = 2,
		/obj/item/food/dairy/cheese/wedge,
	)
	result = /obj/item/food/sandwich

/decl/recipe/taco
	display_name = "plain taco"
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/doughslice,
		/obj/item/food/butchery/cutlet,
		/obj/item/food/dairy/cheese/wedge
	)
	result = /obj/item/food/taco

/decl/recipe/bigbiteburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/burger,
		/obj/item/food/butchery/meat = 2,
		/obj/item/food/egg,
	)
	reagent_mix = REAGENT_REPLACE // no raw egg
	result = /obj/item/food/bigbiteburger

/decl/recipe/superbiteburger
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	fruit = list("tomato" = 1)
	reagents = list(/decl/material/solid/sodiumchloride = 5, /decl/material/solid/blackpepper = 5)
	items = list(
		/obj/item/food/bigbiteburger,
		/obj/item/food/dough,
		/obj/item/food/butchery/meat,
		/obj/item/food/dairy/cheese/wedge,
		/obj/item/food/boiledegg,
	)
	result = /obj/item/food/superbiteburger

/decl/recipe/twobread
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE // it's tradition, see
	reagents = list(/decl/material/liquid/alcohol/wine = 5)
	items = list(
		/obj/item/food/slice/bread = 2,
	)
	result = /obj/item/food/twobread

/decl/recipe/taco
	container_categories = RECIPE_CATEGORY_MIX|RECIPE_CATEGORY_MICROWAVE
	items = list(
		/obj/item/food/unleaveneddoughslice,
		/obj/item/food/butchery/cutlet,
		/obj/item/food/dairy/cheese/wedge
	)
	result = /obj/item/food/taco
