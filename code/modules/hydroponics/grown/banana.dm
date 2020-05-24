/obj/item/seeds/banana
	name = "pack of banana seeds"
	desc = "They're seeds that grow into banana trees. When grown, keep away from clown."
	icon_state = "seed-banana"
	species = "banana"
	plantname = "Banana Tree"
	product = /obj/item/reagent_containers/food/snacks/grown/banana
	lifespan = 50
	endurance = 30
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_dead = "banana-dead"
	genes = list(/datum/plant_gene/trait/slip, /datum/plant_gene/trait/repeated_harvest)
	reagents_add = list("banana" = 0.1, "potassium" = 0.1, "vitamin" = 0.04, "nutriment" = 0.02)

/obj/item/reagent_containers/food/snacks/grown/banana
	seed = /obj/item/seeds/banana
	name = "banana"
	desc = "It's an excellent prop for a clown."
	icon_state = "banana"
	item_state = "banana"
	trash = /obj/item/grown/bananapeel
	filling_color = "#FFFF00"
	bitesize = 5
	foodtype = FRUIT
	juice_results = list("banana" = 0)
	distill_reagent = "bananahonk"

//Banana Peel
/obj/item/grown/bananapeel
	seed = /obj/item/seeds/banana
	name = "banana peel"
	desc = "A peel from a banana."
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	icon_state = "banana_peel"
	item_state = "banana_peel"
	w_class = WEIGHT_CLASS_TINY
	throwforce = 0
	throw_speed = 3
	throw_range = 7

/obj/item/grown/bananapeel/suicide_act(mob/user)

/obj/item/grown/bananapeel/specialpeel     //used by /obj/item/clothing/shoes/clown_shoes/banana_shoes
	name = "synthesized banana peel"
	desc = "A synthetic banana peel."

/obj/item/grown/bananapeel/specialpeel/Initialize(AM)
	. = ..()
	AddComponent(/datum/component/slippery, 40)
