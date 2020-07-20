
// see code/module/crafting/table.dm

//////////////////////////////////////////////////
/////////////////// BURGER /////////////////////// 
//////////////////////////////////////////////////

/datum/crafting_recipe/food/humanburger
	name = "Human burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/plain/human = 1
	)
	parts = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain/human = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/human
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/burger
	name = "Burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)

	result = /obj/item/reagent_containers/food/snacks/burger/plain
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/corgiburger
	name = "Corgi burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/meat/slab/corgi = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)

	result = /obj/item/reagent_containers/food/snacks/burger/corgi
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/appendixburger
	name = "Appendix burger"
	reqs = list(
		/obj/item/organ/appendix = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/appendix
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/brainburger
	name = "Brain burger"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/brain
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/xenoburger
	name = "Xeno burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/xeno = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/xeno
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/bearger
	name = "Bearger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/bear = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/bearger
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/fishburger
	name = "Fish burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/carpmeat = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/fish
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/tofuburger
	name = "Tofu burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tofu = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/tofu
	subcategory = CAT_BURGER

/*/datum/crafting_recipe/food/ghostburger
	name = "Ghost burger"
	reqs = list(
		/obj/item/ectoplasm = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/ghost
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/clownburger
	name = "Clown burger"
	reqs = list(
		/obj/item/clothing/mask/gas/clown_hat = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/clown
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/mimeburger
	name = "Mime burger"
	reqs = list(
		/obj/item/clothing/mask/gas/mime = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/mime
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/redburger
	name = "Red burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/red = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/red
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/orangeburger
	name = "Orange burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/orange = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/orange
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/yellowburger
	name = "Yellow burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/yellow = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/yellow
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/greenburger
	name = "Green burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/green = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/green
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/blueburger
	name = "Blue burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/blue = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/blue
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/purpleburger
	name = "Purple burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/purple = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/purple
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/blackburger
	name = "Black burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/black = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/black
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/whiteburger
	name = "White burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1,
		/obj/item/toy/crayon/white = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/white
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/spellburger
	name = "Spell burger"
	reqs = list(
		/obj/item/clothing/head/wizard/fake = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/burger/spell
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/spellburger2
	name = "Spell burger"
	reqs = list(
		/obj/item/clothing/head/wizard = 1,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/spell
	subcategory = CAT_BURGER*/

/datum/crafting_recipe/food/bigbiteburger
	name = "Big bite burger"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 3,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/bigbite
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/superbiteburger
	name = "Super bite burger"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/datum/reagent/consumable/blackpepper = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 5,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 4,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 3,
		/obj/item/reagent_containers/food/snacks/boiledegg = 2,
		/obj/item/reagent_containers/food/snacks/bun = 1

	)
	result = /obj/item/reagent_containers/food/snacks/burger/superbite
	subcategory = CAT_BURGER

/*/datum/crafting_recipe/food/slimeburger
	name = "Jelly burger"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/jelly/slime*/
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/jellyburger
	name = "Jelly burger"
	reqs = list(
			/datum/reagent/consumable/cherryjelly = 5,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/jelly/cherry
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/fivealarmburger
	name = "Five alarm burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/grown/ghost_chili = 2,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/fivealarm
	subcategory = CAT_BURGER

/datum/crafting_recipe/food/ratburger
	name = "Rat burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/deadmouse = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/rat
	subcategory = CAT_BURGER

/*/datum/crafting_recipe/food/baseballburger
	name = "Home run baseball burger"
	reqs = list(
			/obj/item/twohanded/baseball = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/baseball
	subcategory = CAT_BURGER*/

/datum/crafting_recipe/food/baconburger
	name = "Bacon Burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/meat/bacon = 3,
			/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)

	result = /obj/item/reagent_containers/food/snacks/burger/baconburger
	subcategory = CAT_BURGER

//////////////////////////////////////////////////
/////////////////// BREAD /////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/meatbread
	name = "meatloaf"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/plain = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 3
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/meat
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/xenomeatbread
	name = "Mutant meatloaf"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/xeno = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 3
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/xenomeat
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/spidermeatbread
	name = "Spider meatload"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/spider = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 3
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/spidermeat
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/banananutbread
	name = "Banana nut bread"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/boiledegg = 3,
		/obj/item/reagent_containers/food/snacks/grown/banana = 1
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/banana
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/tofubread
	name = "Tofu bread"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 3
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/tofu
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/creamcheesebread
	name = "Cream cheese bread"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/creamcheese
	subcategory = CAT_BREAD

/*
/datum/crafting_recipe/food/mimanabread
	name = "Mimana bread"
	reqs = list(
		/datum/reagent/consumable/soymilk = 5,
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 3,
		/obj/item/reagent_containers/food/snacks/grown/banana/mime = 1
	)
	result = /obj/item/reagent_containers/food/snacks/store/bread/mimana
	subcategory = CAT_BREAD
*/

/datum/crafting_recipe/food/butteredtoast
	name = "Buttered Toast"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1
	)
	result = /obj/item/reagent_containers/food/snacks/butteredtoast
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/butterbiscuit
	name = "Butter Biscuit"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1
	)
	result = /obj/item/reagent_containers/food/snacks/butterbiscuit
	subcategory = CAT_BREAD

/datum/crafting_recipe/food/butterdog
	name = "Butterdog"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/butter = 3,
		)
	result = /obj/item/reagent_containers/food/snacks/butterdog
	subcategory = CAT_BREAD

//////////////////////////////////////////////////
/////////////////// CAKE /////////////////////// 
//////////////////////////////////////////////////

/datum/crafting_recipe/food/carrotcake
	name = "Carrot cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/carrot
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/cheesecake
	name = "Cheese cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/cheese
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/applecake
	name = "Apple cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/apple = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/apple
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/orangecake
	name = "Orange cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/orange = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/orange
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/limecake
	name = "Lime cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lime = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/lime
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/lemoncake
	name = "Lemon cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lemon = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/lemon
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/chocolatecake
	name = "Chocolate cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/chocolatebar = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/chocolate
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/birthdaycake
	name = "Birthday cake"
	reqs = list(
		/obj/item/clothing/head/hardhat/cakehat = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/birthday
	subcategory = CAT_CAKE

/datum/crafting_recipe/food/braincake
	name = "Brain cake"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/brain
	subcategory = CAT_CAKE

/*/datum/crafting_recipe/food/slimecake
	name = "Slime cake"
	reqs = list(
		/obj/item/slime_extract = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/slimecake
	subcategory = CAT_CAKE*/

/datum/crafting_recipe/food/pumpkinspicecake
	name = "Pumpkin spice cake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/store/cake/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/pumpkin = 2
	)
	result = /obj/item/reagent_containers/food/snacks/store/cake/pumpkinspice
	subcategory = CAT_CAKE

/*/datum/crafting_recipe/food/cak
	name = "Living cat/cake hybrid"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/organ/heart = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/birthday = 1,
		/obj/item/reagent_containers/food/snacks/meat/slab = 3,
		/datum/reagent/blood = 30,
		/datum/reagent/consumable/sprinkles = 5,
		/datum/reagent/teslium = 1
	)
	result = /mob/living/simple_animal/pet/cat/cak
	subcategory = CAT_CAKE*/

//////////////////////////////////////////////////
/////////////////// EGG /////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/friedegg
	name = "Fried egg"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/datum/reagent/consumable/blackpepper = 1,
		/obj/item/reagent_containers/food/snacks/egg = 1
	)
	result = /obj/item/reagent_containers/food/snacks/friedegg
	subcategory = CAT_EGG

/datum/crafting_recipe/food/omelette
	name = "Omelette"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/egg = 2,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 2
	)
	result = /obj/item/reagent_containers/food/snacks/omelette
	subcategory = CAT_EGG

/datum/crafting_recipe/food/chocolateegg
	name = "Chocolate egg"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledegg = 1,
		/obj/item/reagent_containers/food/snacks/chocolatebar = 1
	)
	result = /obj/item/reagent_containers/food/snacks/chocolateegg
	subcategory = CAT_EGG

/datum/crafting_recipe/food/eggsbenedict
	name = "Eggs benedict"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/friedegg = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/benedict
	subcategory = CAT_EGG

/datum/crafting_recipe/food/eggbowl
	name = "Egg bowl"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/boiledegg = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/corn = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/eggbowl
	subcategory = CAT_EGG

//////////////////////////////////////////////////
/////////////////// MEAT /////////////////////// 
//////////////////////////////////////////////////

/datum/crafting_recipe/food/humankebab
	name = "Human kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/plain/human = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/human
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/kebab
	name = "Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/monkey
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/tofukebab
	name = "Tofu kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/tofu
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/tailkebab
	name = "Lizard tail kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/organ/tail/lizard = 1
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/tail
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cubancarp
	name = "Cuban carp"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cubancarp
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/fishandchips
	name = "Fish and chips"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/fries = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishandchips
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/fishfingers
	name = "Fish fingers"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishfingers
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/sashimi
	name = "Sashimi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sashimi
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/spidereggsham
	name = "Spider eggs ham"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/spider = 2
	)
	result = /obj/item/reagent_containers/food/snacks/spidereggsham
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cornedbeef
	name = "Corned beef"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/cornedbeef
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/enchiladas
	name = "Enchiladas"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 2
	)
	result = /obj/item/reagent_containers/food/snacks/enchiladas
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/stewedsoymeat
	name = "Stewed soymeat"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/soydope = 2,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stewedsoymeat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/sausage
	name = "Sausage"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meatball = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/sausage
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/hotdog
	name = "Hot dog"
	reqs = list(
		/datum/reagent/consumable/ketchup = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/sausage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/hotdog
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/meatbun
	name = "Meat bun"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/meatbun
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/nugget
	name = "Chicken nugget"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/nugget
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/rawkhinkali
	name = "Raw Khinkali"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/doughslice = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 1
	)
	result =  /obj/item/reagent_containers/food/snacks/rawkhinkali
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/pigblanket
	name = "Pig in a Blanket"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pigblanket
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ratkebab
	name = "Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/deadmouse = 1
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/rat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/doubleratkebab
	name = "Double Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/deadmouse = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/rat/double
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricepork
	name = "Rice and pork"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricepork
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/friedbrahminskin
	name = "Fried brahmin skin."
	reqs = list(
		/obj/item/stack/sheet/animalhide/brahmin = 2,
		/obj/item/reagent_containers/food/snacks/tallow = 1
	)
	result = /obj/item/reagent_containers/food/snacks/friedbrahminskin
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/brahminwellington
	name = "Brahmin wellington"
	reqs = list(
		/datum/reagent/consumable/flour = 10,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/reagent_containers/food/snacks/grown/mesquite = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak = 2
	)
	result = /obj/item/reagent_containers/food/snacks/brahminwellington
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/deathclawwellington
	name = "Deathclaw wellington"
	reqs = list(
		/datum/reagent/consumable/flour = 10,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/reagent_containers/food/snacks/grown/mesquite = 1,
		/obj/item/reagent_containers/food/snacks/meat/slab/deathclaw = 2
	)
	result = /obj/item/reagent_containers/food/snacks/deathclawwellington
	subcategory = CAT_MEAT

//////////////////////////////////////////////////
/////////////////// PASTRY /////////////////////// 
//////////////////////////////////////////////////

/*/datum/crafting_recipe/food/chaosdonut
	name = "Chaos donut"
	reqs = list(
		/datum/reagent/consumable/frostoil = 5,
		/datum/reagent/consumable/capsaicin = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donut/chaos
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/donut
	time = 15
	name = "Donut"
	reqs = list(
		/datum/reagent/consumable/sugar = 1,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donut
	subcategory = CAT_PASTRY*/

/datum/crafting_recipe/food/jellydonut
	name = "Jelly donut"
	reqs = list(
		/datum/reagent/consumable/berryjuice = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donut/jelly
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/cherryjellydonut
	name = "Cherry jelly donut"
	reqs = list(
		/datum/reagent/consumable/cherryjelly = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donut/jelly/cherryjelly
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/slimejellydonut
	name = "Slime jelly donut"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donut/jelly/slimejelly
	subcategory = CAT_PASTRY

////////////////////////////////////////////////WAFFLES AND PANCAKES////////////////////////////////////////////////

/datum/crafting_recipe/food/waffles
	time = 15
	name = "Waffles"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 2
	)
	result = /obj/item/reagent_containers/food/snacks/waffles
	subcategory = CAT_PASTRY


/datum/crafting_recipe/food/soylenviridians
	name = "Soylent viridians"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 2,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soylenviridians
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/soylentgreen
	name = "Soylent green"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 2,
		/obj/item/reagent_containers/food/snacks/meat/slab/human = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soylentgreen
	subcategory = CAT_PASTRY


/datum/crafting_recipe/food/rofflewaffles
	name = "Roffle waffles"
	reqs = list(
		/datum/reagent/mushroomhallucinogen = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 2
	)
	result = /obj/item/reagent_containers/food/snacks/rofflewaffles
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/pancakes
	name = "Pancake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pancakes
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/bbpancakes
	name = "Blueberry pancake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/berries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pancakes/blueberry
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/ccpancakes
	name = "Chocolate chip pancake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/chocolatebar = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pancakes/chocolatechip
	subcategory = CAT_PASTRY


////////////////////////////////////////////////DONKPOCCKETS////////////////////////////////////////////////

/datum/crafting_recipe/food/donkpocket
	time = 15
	name = "Donkpocket"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 1
	)
	result = /obj/item/reagent_containers/food/snacks/donkpocket
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/dankpocket
	time = 15
	name = "Dankpocket"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/cannabis = 1
	)
	result = /obj/item/reagent_containers/food/snacks/dankpocket
	subcategory = CAT_PASTRY

////////////////////////////////////////////////MUFFINS////////////////////////////////////////////////

/datum/crafting_recipe/food/muffin
	time = 15
	name = "Muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/muffin
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/berrymuffin
	name = "Berry muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/berries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/muffin/berry
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/booberrymuffin
	name = "Booberry muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/berries = 1,
		/obj/item/ectoplasm = 1
	)
	result = /obj/item/reagent_containers/food/snacks/muffin/booberry
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/chawanmushi
	name = "Chawanmushi"
	reqs = list(
		/datum/reagent/water = 5,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/boiledegg = 2,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/chanterelle = 1
	)
	result = /obj/item/reagent_containers/food/snacks/chawanmushi
	subcategory = CAT_PASTRY

////////////////////////////////////////////OTHER////////////////////////////////////////////

/datum/crafting_recipe/food/khachapuri
	name = "Khachapuri"
	reqs = list(
		/datum/reagent/consumable/eggyolk = 5,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 1
	)
	result = /obj/item/reagent_containers/food/snacks/khachapuri
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/sugarcookie
	time = 15
	name = "Sugar cookie"
	reqs = list(
		/datum/reagent/consumable/sugar = 5,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sugarcookie
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/fortunecookie
	time = 15
	name = "Fortune cookie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/paper = 1
	)
	parts =	list(
		/obj/item/paper = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fortunecookie
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/poppypretzel
	time = 15
	name = "Poppy pretzel"
	reqs = list(
		/obj/item/seeds/poppy = 1,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1
	)
	result = /obj/item/reagent_containers/food/snacks/poppypretzel
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/plumphelmetbiscuit
	time = 15
	name = "Plumphelmet biscuit"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/plumphelmet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/plumphelmetbiscuit
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/chococornet
	name = "Choco cornet"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/chocolatebar = 1
	)
	result = /obj/item/reagent_containers/food/snacks/chococornet
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/oatmealcookie
	name = "Oatmeal cookie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/oat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/oatmealcookie

/datum/crafting_recipe/food/raisincookie
	name = "Raisin cookie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/no_raisin = 1,
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/oat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/raisincookie
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/cherrycupcake
	name = "Cherry cupcake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/cherries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cherrycupcake
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/bluecherrycupcake
	name = "Blue cherry cupcake"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/obj/item/reagent_containers/food/snacks/grown/bluecherries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/bluecherrycupcake
	subcategory = CAT_PASTRY

/datum/crafting_recipe/food/honeybun
	name = "Honey bun"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastrybase = 1,
		/datum/reagent/consumable/honey = 5
	)
	result = /obj/item/reagent_containers/food/snacks/honeybun
	subcategory = CAT_PASTRY

//////////////////////////////////////////////////
/////////////////// PIE /////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/bananacreampie
	name = "Banana cream pie"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		 /obj/item/reagent_containers/food/snacks/grown/banana = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/cream
	subcategory = CAT_PIE

/datum/crafting_recipe/food/meatpie
	name = "Meat pie"
	reqs = list(
		/datum/reagent/consumable/blackpepper = 1,
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/plain = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/meatpie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/tofupie
	name = "Tofu pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/tofupie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/xenopie
	name = "Xeno pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/xeno = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/xemeatpie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/cherrypie
	name = "Cherry pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		 /obj/item/reagent_containers/food/snacks/grown/cherries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/cherrypie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/berryclafoutis
	name = "Berry clafoutis"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/berries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/berryclafoutis
	subcategory = CAT_PIE

/datum/crafting_recipe/food/bearypie
	name = "Beary Pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/berries = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/bear = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/bearypie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/amanitapie
	name = "Amanita pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/amanita = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/amanita_pie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/plumppie
	name = "Plump pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/plumphelmet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/plump_pie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/applepie
	name = "Apple pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/apple = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/applepie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/pumpkinpie
	name = "Pumpkin pie"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/pumpkin = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/pumpkinpie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/goldenappletart
	name = "Golden apple tart"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/apple/gold = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/appletart
	subcategory = CAT_PIE

/datum/crafting_recipe/food/grapetart
	name = "Grape tart"
	reqs = list(
            /datum/reagent/consumable/milk = 5,
            /datum/reagent/consumable/sugar = 5,
            /obj/item/reagent_containers/food/snacks/pie/plain = 1,
	        /obj/item/reagent_containers/food/snacks/grown/grapes = 3
	        )
	result = /obj/item/reagent_containers/food/snacks/pie/grapetart
	subcategory = CAT_PIE

/datum/crafting_recipe/food/blumpkinpie
	name = "Blumpkin pie"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/blumpkin = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/blumpkinpie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/dulcedebatata
	name = "Dulce de batata"
	reqs = list(
		/datum/reagent/consumable/vanilla = 5,
		/datum/reagent/water = 5,
		/obj/item/reagent_containers/food/snacks/grown/potato/sweet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/pie/dulcedebatata
	subcategory = CAT_PIE

/datum/crafting_recipe/food/frostypie
	name = "Frosty pie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/grown/bluecherries = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/frostypie
	subcategory = CAT_PIE

/datum/crafting_recipe/food/brahminpotpie
	name = "Brahmin potpie"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/rawbrahmintongue = 2,
		/obj/item/reagent_containers/food/snacks/grown/xander = 1,
		/obj/item/reagent_containers/food/snacks/pie/plain = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pie/brahminpotpie
	subcategory = CAT_PIE

//////////////////////////////////////////////////
/////////////////// PIZZA /////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/margheritapizza
	name = "Margherita pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 4,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/margherita
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/meatpizza
	name = "Meat pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 4,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/meat
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/mushroompizza
	name = "Mushroom pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom = 5
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/mushroom
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/vegetablepizza
	name = "Vegetable pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/grown/eggplant = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/corn = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/vegetable
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/donpocketpizza
	name = "Donkpocket pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/donkpocket/warm = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/donkpocket
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/dankpizza
	name = "Dank pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/dank
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/sassysagepizza
	name = "Sassysage pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/sassysage
	subcategory = CAT_PIZZA

/datum/crafting_recipe/food/pineapplepizza
	name = "Hawaiian pizza"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pizzabread = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/pineappleslice = 3,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pizza/pineapple
	subcategory = CAT_PIZZA

//////////////////////////////////////////////////
/////////////////// SALAD /////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/herbsalad
	name = "Herb salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/reagent_containers/food/snacks/grown/apple = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/herbsalad
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/aesirsalad
	name = "Aesir salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/deus = 3,
		/obj/item/reagent_containers/food/snacks/grown/apple/gold = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/aesirsalad
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/validsalad
	name = "Valid salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/validsalad
	subcategory = CAT_SALAD

/*/datum/crafting_recipe/food/monkeysdelight
	name = "Monkeys delight"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/datum/reagent/consumable/sodiumchloride = 1,
		/datum/reagent/consumable/blackpepper = 1,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/monkeycube = 1,
		/obj/item/reagent_containers/food/snacks/grown/banana = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/monkeysdelight
	subcategory = CAT_SALAD*/

/datum/crafting_recipe/food/oatmeal
	name = "Oatmeal"
	reqs = list(
		/datum/reagent/consumable/milk = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/oat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/oatmeal
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/fruitsalad
	name = "Fruit salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/orange = 1,
		/obj/item/reagent_containers/food/snacks/grown/apple = 1,
		/obj/item/reagent_containers/food/snacks/grown/grapes = 1,
		/obj/item/reagent_containers/food/snacks/watermelonslice = 2

	)
	result = /obj/item/reagent_containers/food/snacks/salad/fruit
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/junglesalad
	name = "Jungle salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/apple = 1,
		/obj/item/reagent_containers/food/snacks/grown/grapes = 1,
		/obj/item/reagent_containers/food/snacks/grown/banana = 2,
		/obj/item/reagent_containers/food/snacks/watermelonslice = 2

	)
	result = /obj/item/reagent_containers/food/snacks/salad/jungle
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/citrusdelight
	name = "Citrus delight"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lime = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lemon = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/orange = 1

	)
	result = /obj/item/reagent_containers/food/snacks/salad/citrusdelight
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/tatosalad
	name = "Tato salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/xander = 1,
		/obj/item/reagent_containers/food/snacks/grown/tato = 2,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/grown/wheat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/tatosalad
	subcategory = CAT_SALAD

/datum/crafting_recipe/food/desertsalad
	name = "Desert salad"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/feracactus = 1,
		/obj/item/reagent_containers/food/snacks/grown/pricklypear = 1,
		/obj/item/reagent_containers/food/snacks/friedbrahminskin = 1,
		/obj/item/reagent_containers/food/snacks/grown/pinyon = 1
	)
	result = /obj/item/reagent_containers/food/snacks/salad/desertsalad
	subcategory = CAT_SALAD

//////////////////////////////////////////////////
///////////////// SANDWICH  //////////////////////
//////////////////////////////////////////////////


/datum/crafting_recipe/food/sandwich
	name = "Sandwich"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 2,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sandwich
	subcategory = CAT_SANDWICH

/datum/crafting_recipe/food/grilledcheesesandwich
	name = "Grilled cheese sandwich"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 2,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 2
	)
	result = /obj/item/reagent_containers/food/snacks/grilledcheese
	subcategory = CAT_SANDWICH

/*/datum/crafting_recipe/food/slimesandwich
	name = "Jelly sandwich"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 2,
	)
	result = /obj/item/reagent_containers/food/snacks/jellysandwich/slime
	subcategory = CAT_SANDWICH*/

/datum/crafting_recipe/food/cherrysandwich
	name = "Jelly sandwich"
	reqs = list(
		/datum/reagent/consumable/cherryjelly = 5,
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 2,
	)
	result = /obj/item/reagent_containers/food/snacks/jellysandwich/cherry
	subcategory = CAT_SANDWICH

/datum/crafting_recipe/food/icecreamsandwich
	name = "Icecream sandwich"
	reqs = list(
		/datum/reagent/consumable/cream = 5,
		/datum/reagent/consumable/ice = 5,
		/obj/item/reagent_containers/food/snacks/icecream = 1
	)
	result = /obj/item/reagent_containers/food/snacks/icecreamsandwich
	subcategory = CAT_SANDWICH

/*/datum/crafting_recipe/food/notasandwich
	name = "Not a sandwich"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/breadslice/plain = 2,
		/obj/item/clothing/mask/fakemoustache = 1
	)
	result = /obj/item/reagent_containers/food/snacks/notasandwich
	subcategory = CAT_SANDWICH*/

//////////////////////////////////////////////////
/////////////////// SPHAG/NOOD ///////////////////
//////////////////////////////////////////////////


/datum/crafting_recipe/food/tomatopasta
	name = "Tomato pasta"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 2
	)
	result = /obj/item/reagent_containers/food/snacks/pastatomato
	subcategory = CAT_SPAGHETTI

/*/datum/crafting_recipe/food/copypasta
	name = "Copypasta"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/pastatomato = 2
	)
	result = /obj/item/reagent_containers/food/snacks/copypasta
	subcategory = CAT_SPAGHETTI

/datum/crafting_recipe/food/meatballspaghetti
	name = "Spaghetti meatball"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 2
		)
	result = /obj/item/reagent_containers/food/snacks/meatballspaghetti
	subcategory = CAT_SPAGHETTI*/

/datum/crafting_recipe/food/spesslaw
	name = "Spesslaw"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 4
	)
	result = /obj/item/reagent_containers/food/snacks/spesslaw
	subcategory = CAT_SPAGHETTI

/datum/crafting_recipe/food/beefnoodle
	name = "Beef noodle"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/beefnoodle
	subcategory = CAT_SPAGHETTI

/datum/crafting_recipe/food/chowmein
	name = "Chowmein"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1
	)
	result = /obj/item/reagent_containers/food/snacks/chowmein
	subcategory = CAT_SPAGHETTI

/datum/crafting_recipe/food/butternoodles
	name = "Butter Noodles"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/boiledspaghetti = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1
	)
	result = /obj/item/reagent_containers/food/snacks/butternoodles
	subcategory = CAT_SPAGHETTI

//////////////////////////////////////////////////
/////////////////// SOUP ///////////////////////// 
//////////////////////////////////////////////////


/datum/crafting_recipe/food/meatballsoup
	name = "Meatball soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/meatball = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/meatball
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/vegetablesoup
	name = "Vegetable soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/corn = 1,
		/obj/item/reagent_containers/food/snacks/grown/eggplant = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/vegetable
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/nettlesoup
	name = "Nettle soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/grown/nettle = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/boiledegg = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/nettle
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/wingfangchu
	name = "Wingfangchu"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/xeno = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/wingfangchu
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/wishsoup
	name = "Wish soup"
	reqs = list(
		/datum/reagent/water = 20,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result= /obj/item/reagent_containers/food/snacks/soup/wish
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/hotchili
	name = "Hot chili"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/hotchili
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/coldchili
	name = "Cold chili"
	reqs = list(
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/icepepper = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/coldchili
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/tomatosoup
	name = "Tomato soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/tomato
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/eyeballsoup
	name = "Eyeball soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 2,
		/obj/item/organ/eyes = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/tomato/eyeball
	subcategory = CAT_SOUP


/datum/crafting_recipe/food/milosoup
	name = "Milo soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/soydope = 2,
		/obj/item/reagent_containers/food/snacks/tofu = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/milo
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/bloodsoup
	name = "Blood soup"
	reqs = list(
		/datum/reagent/blood = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato/blood = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/blood
	subcategory = CAT_SOUP

/*/datum/crafting_recipe/food/slimesoup
	name = "Slime soup"
	reqs = list(
			/datum/reagent/water = 10,
			/datum/reagent/toxin/slimejelly = 5,
			/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/slime
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/clownstears
	name = "Clowns tears"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/banana = 1,
		/obj/item/stack/ore/bananium = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/clownstears
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/mysterysoup
	name = "Mystery soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/badrecipe = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 1,
		/obj/item/reagent_containers/food/snacks/boiledegg = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/soup/mystery
	subcategory = CAT_SOUP*/

/datum/crafting_recipe/food/mushroomsoup
	name = "Mushroom soup"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/water = 5,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/chanterelle = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/mushroom
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/beetsoup
	name = "Beet soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/whitebeet = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/soup/beet
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/stew
	name = "Stew"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 3,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/eggplant = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/stew
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/spacylibertyduff
	name = "Spacy liberty duff"
	reqs = list(
		/datum/reagent/consumable/ethanol/vodka = 5,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/libertycap = 3
	)
	result = /obj/item/reagent_containers/food/snacks/soup/spacylibertyduff
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/amanitajelly
	name = "Amanita jelly"
	reqs = list(
		/datum/reagent/consumable/ethanol/vodka = 5,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/mushroom/amanita = 3
	)
	result = /obj/item/reagent_containers/food/snacks/soup/amanitajelly
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/sweetpotatosoup
	name = "Sweet potato soup"
	reqs = list(
		/datum/reagent/water = 10,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato/sweet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/sweetpotato
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/redbeetsoup
	name = "Red beet soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/redbeet = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/soup/beet/red
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/macaco
	name = "Macaco soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/meat/slab/monkey = 2
	)
	result = /obj/item/reagent_containers/food/snacks/soup/macaco
	subcategory = CAT_SOUP

/datum/crafting_recipe/food/buffalogourd
	name = "Buffalo gourd soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/reagent_containers/glass/bowl = 1,
		/obj/item/reagent_containers/food/snacks/grown/buffalogourd = 2
	)
	result = /obj/item/reagent_containers/food/snacks/grown/buffalogourd

//////////////////////////////////////////////////
/////////////////// OTHER   //////////////////////
//////////////////////////////////////////////////

/datum/crafting_recipe/food/moleratwondermeat
	name = "Molerat Wondermeat"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/molerat = 1,
		/obj/item/crafting/wonderglue = 1
	)
	tools = list(TOOL_LUNCHBOX)
	result = /obj/item/reagent_containers/food/snacks/f13/molejerky
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/caravanlunch
	name = "Caravan Lunch"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/f13/instamash = 1,
		/obj/item/reagent_containers/food/snacks/f13/cram = 1,
		/obj/item/reagent_containers/food/snacks/f13/porknbeans = 1,
		/obj/item/crafting/lunchbox = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/caravanlunch
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/wastelandwellington
	name = "Wasteland Wellington"
	reqs = list(
		/datum/reagent/consumable/flour = 10,
		/obj/item/reagent_containers/food/snacks/f13/blamco = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak = 2
	)
	result = /obj/item/reagent_containers/food/snacks/f13/wastelandwellington
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/deathclawomelette
	name = "Deathclaw Omelette"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/f13/deathclawegg = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/deathclaw = 1,
		/obj/item/reagent_containers/food/snacks/butter =2,
		/obj/item/reagent_containers/food/snacks/grown/mutfruit = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/deathclawomelette
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/moleratstew
	name = "Molerat Stew"
	reqs = list(
		/obj/item/reagent_containers/food/drinks/beer = 1,
		/obj/item/reagent_containers/food/snacks/meat/slab/molerat = 1,
		/obj/item/reagent_containers/food/snacks/grown/corn = 1,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/moleratstew
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/crispysquirrel
	name = "Crispy Squirrel Bits"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/squirrel = 1,
		/obj/item/stack/rods = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/crispysquirrel
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/squirrelstick
	name = "Squirrel on a Stick"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/steak/squirrel = 2,
		/obj/item/stack/rods = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/squirrelstick
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/squirrelstew
	name = "Squirrel Stew"
	reqs = list(
    	/obj/item/reagent_containers/food/snacks/meat/steak/squirrel = 1,
    	/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
    	/obj/item/reagent_containers/food/snacks/grown/potato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/f13/squirrelstew
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD
	
/datum/crafting_recipe/food/pemmican
	name = "pemmican"
	reqs = list(
    	/obj/item/reagent_containers/food/snacks/grown/corn = 1,
    	/obj/item/reagent_containers/food/snacks/sosjerky/healthy = 2,
    	/obj/item/reagent_containers/food/snacks/tallow = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pemmican
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/crunchymutfruit	
	name = "crunchy mutfruit"
	reqs = list(
    	/obj/item/reagent_containers/food/snacks/grown/mutfruit = 1,
    	/obj/item/reagent_containers/food/snacks/butter = 1,
    	/datum/reagent/consumable/sugar = 5
	)
	result = /obj/item/reagent_containers/food/snacks/crunchymutfruit	
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD

/datum/crafting_recipe/food/tatofries
	name = "tato fries"
	reqs = list(
    	/obj/item/reagent_containers/food/snacks/grown/tato = 2,
    	/obj/item/reagent_containers/food/snacks/butter = 1
	)
	result = /obj/item/reagent_containers/food/snacks/tatofries	
	category = CAT_FOOD
	subcategory = CAT_WASTEFOOD
