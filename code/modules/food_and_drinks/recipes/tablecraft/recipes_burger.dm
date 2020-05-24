
// see code/module/crafting/table.dm

////////////////////////////////////////////////BURGERS////////////////////////////////////////////////

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
	name = "Mutant burger"
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

/datum/crafting_recipe/food/slimeburger
	name = "Jelly burger"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1
	)
	result = /obj/item/reagent_containers/food/snacks/burger/jelly/slime
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

/datum/crafting_recipe/food/baconburger
	name = "Bacon Burger"
	reqs = list(
			/obj/item/reagent_containers/food/snacks/meat/bacon = 3,
			/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
			/obj/item/reagent_containers/food/snacks/bun = 1
	)

	result = /obj/item/reagent_containers/food/snacks/burger/baconburger
	subcategory = CAT_BURGER
