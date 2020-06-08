/obj/machinery/vending/games
	name = "\improper Ultra-Luxe Poker-Yourself"
	desc = "For that Poker practice you need to win big in Vegas baby! Other games can be done at users discretion, Courtesy of Ultraluxe LTD Nevada."
	product_ads = "Escape to the the city of Las Vegas!;Fuel your gambling!;Win Big!;Fun times forever!"
	icon_state = "games"
	products = list(/obj/item/toy/cards/deck = 10,
		            /obj/item/storage/pill_bottle/dice = 10)
	refill_canister = /obj/item/vending_refill/games

/obj/item/vending_refill/games
	machine_name = "\improper Ultra-Luxe Poker-Yourself"
	icon_state = "refill_games"
	charges = list(7, 3, 0) //of 21 standard, 9 contraband
	init_charges = list(7, 3, 0)
