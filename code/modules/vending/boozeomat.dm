/obj/machinery/vending/boozeomat
	name = "\improper Mr Brewsky"
	desc = "A pre-war Mr Handy service unit equipped to serve! Oh god.... so long."
	product_ads = "Hello Sir!;Arent you thirsty Ma'am!;Need a Drink?;Drink!;Drink.;It has been............... 200.... Years since your Last Drink Sir!;Pleasure to Serve!;Chip'Chip'Chiperino!"
	icon_state = "boozeomat"
	products = list(/obj/item/book/manual/alcoholaddiction = 1,
					/obj/item/book/manual/partyboy = 1,
					/obj/item/reagent_containers/food/drinks/drinkingglass = 20,
					/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 20,
					/obj/item/reagent_containers/glass/bowl = 20,
					/obj/item/reagent_containers/food/drinks/flask = 10,
					/obj/item/reagent_containers/food/drinks/ice = 10,
					/obj/item/reagent_containers/food/drinks/bottle/f13nukacola = 5,
					/obj/item/reagent_containers/food/drinks/bottle/wine = 1,
					/obj/item/reagent_containers/food/drinks/bottle/bawls = 3,
					/obj/item/reagent_containers/food/drinks/bottle/kahlua = 1,
					/obj/item/reagent_containers/food/drinks/bottle/lizardwine = 1,
					/obj/item/reagent_containers/food/drinks/bottle/cognac = 1,
					/obj/item/reagent_containers/food/drinks/bottle/grappa = 1,
					/obj/item/reagent_containers/food/drinks/soda_cans/cream = 1,
					/obj/item/reagent_containers/food/drinks/bottle/fernet = 1,
					/obj/item/reagent_containers/food/drinks/bottle/grenadine = 1,
					/obj/item/reagent_containers/food/drinks/bottle/hcider = 1,
					/obj/item/reagent_containers/food/drinks/bottle/vermouth = 1,
					/obj/item/reagent_containers/food/drinks/bottle/rum = 1,
					/obj/item/reagent_containers/food/drinks/bottle/vodka = 1,
					/obj/item/reagent_containers/food/drinks/bottle/sake = 1,
					/obj/item/reagent_containers/food/drinks/bottle/sunset = 3,
					/obj/item/reagent_containers/food/drinks/bottle/gin = 1,
					/obj/item/reagent_containers/food/drinks/bottle/triplesec = 1,
					/obj/item/reagent_containers/food/drinks/bottle/tequila = 1,
		       		/obj/item/reagent_containers/food/drinks/bottle/whiskey = 1,
					/obj/item/reagent_containers/food/drinks/bottle/vim = 3,
					/obj/item/reagent_containers/food/drinks/bottle/absinthe = 1,
					/obj/item/reagent_containers/food/condiment/milk = 1,
					/obj/item/reagent_containers/food/condiment/soymilk = 1,
					/obj/item/reagent_containers/food/drinks/soda_cans/tonic = 1,
					/obj/item/reagent_containers/food/drinks/soda_cans/sodawater = 1,
					/obj/item/reagent_containers/food/drinks/bottle/orangejuice = 1,
					/obj/item/reagent_containers/food/drinks/bottle/lemonjuice = 1,
					/obj/item/reagent_containers/food/drinks/bottle/tomatojuice = 1,
					/obj/item/reagent_containers/food/drinks/bottle/limejuice = 1)
	refill_canister = /obj/item/vending_refill/boozeomat


/obj/machinery/vending/boozeomat/pubby_maint //abandoned bar on Pubbystation
	products = list(/obj/item/reagent_containers/food/drinks/bottle/whiskey = 1,
			/obj/item/reagent_containers/food/drinks/bottle/absinthe = 1,
			/obj/item/reagent_containers/food/drinks/bottle/limejuice = 1,
			/obj/item/reagent_containers/food/drinks/soda_cans/cream = 1,
			/obj/item/reagent_containers/food/drinks/soda_cans/tonic = 1,
			/obj/item/reagent_containers/food/drinks/drinkingglass = 10,
			/obj/item/reagent_containers/food/drinks/ice = 3,
			/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 6,
			/obj/item/reagent_containers/food/drinks/flask = 1)
	req_access = null

/obj/machinery/vending/boozeomat/pubby_captain //Captain's quarters on Pubbystation
	products = list(/obj/item/reagent_containers/food/drinks/bottle/rum = 1,
					/obj/item/reagent_containers/food/drinks/bottle/wine = 1,
					/obj/item/reagent_containers/food/drinks/ale = 1,
					/obj/item/reagent_containers/food/drinks/drinkingglass = 6,
					/obj/item/reagent_containers/food/drinks/ice = 1,
					/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 4);
	req_access = list(ACCESS_CAPTAIN)

/obj/item/vending_refill/boozeomat
	machine_name = "Booze-O-Mat"
	icon_state = "refill_booze"
	charges = list(61, 4, 0)//of 182 standard, 12 contraband
	init_charges = list(61, 4, 0)
