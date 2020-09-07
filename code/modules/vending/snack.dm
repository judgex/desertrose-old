/obj/machinery/vending/snack
	name = "\improper Pure Patriot Treats"
	desc = "A snack machine holding remnants of pre-war snacks."
	product_slogans = "Try our new Mechamash!;Twice the calories for half the price!"
	product_ads = "The healthiest!;Award-winning bubblegum!;Mmm! So good!;Oh my god it's tasty!;Have a bite.;Snacks are good for you!;Best quality snacks!;We love dandy apples!;Try our new nuclear cram!"
	icon_state = "snack"
	products = list(/obj/item/reagent_containers/food/snacks/f13/crisps = 3,
		            /obj/item/reagent_containers/food/snacks/f13/bubblegum = 3,
		            /obj/item/reagent_containers/food/snacks/f13/cram = 3,
		            /obj/item/reagent_containers/food/snacks/f13/yumyum = 3,
		            /obj/item/reagent_containers/food/snacks/f13/fancylads = 3,
		            /obj/item/reagent_containers/food/snacks/f13/sugarbombs = 3,
					/obj/item/reagent_containers/food/snacks/cheesiehonkers = 3,
					/obj/item/reagent_containers/food/snacks/f13/steak = 3,
					/obj/item/reagent_containers/food/snacks/f13/specialapples = 1,
					/obj/item/reagent_containers/food/snacks/f13/dandyapples = 3,
					/obj/item/reagent_containers/food/snacks/f13/blamco = 3,
					/obj/item/reagent_containers/food/snacks/f13/mechanic = 1,
					/obj/item/reagent_containers/food/snacks/f13/instamash = 3,
					/obj/item/reagent_containers/food/snacks/f13/porknbeans = 3)
	contraband = list(/obj/item/reagent_containers/food/snacks/f13/borscht = 6)
	refill_canister = /obj/item/vending_refill/snack

/obj/item/vending_refill/snack
	machine_name = "Pure Patriot Treats"
	charges = list(12, 2, 0)//of 36 standard, 6 contraband
	init_charges = list(12, 2, 0)

/obj/machinery/vending/snack/Destroy()
	for(var/obj/item/reagent_containers/food/snacks/S in contents)
		S.forceMove(get_turf(src))
	return ..()

/obj/machinery/vending/snack/random
	name = "\improper Random Snackies"
	icon_state = "random_snack"
	desc = "Uh oh!"

/obj/machinery/vending/snack/random/Initialize()
	..()
	var/T = pick(subtypesof(/obj/machinery/vending/snack) - /obj/machinery/vending/snack/random)
	new T(loc)
	return INITIALIZE_HINT_QDEL

/obj/machinery/vending/snack/blue
	icon_state = "snack"

/obj/machinery/vending/snack/orange
	icon_state = "snack"

/obj/machinery/vending/snack/green
	icon_state = "snack"

/obj/machinery/vending/snack/teal
	icon_state = "snack"