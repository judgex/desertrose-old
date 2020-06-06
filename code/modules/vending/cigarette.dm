/obj/machinery/vending/cigarette
	name = "\improper Big Smokes"
	desc = "Pre-War Filter Cigarettes with Unfiltered Taste!"
	product_slogans = "Big Boss tastes good like a cigarette should.;Smoke a Fresh Cigarette!;Smoke!"
	product_ads = "Fresh Cigarettes!;Tastes good like a cigarette should!;It's good for you!;Buy more!;Smoke!;Nicotine heaven.;Best cigarettes since 1960.;Award-winning cigs."
	icon_state = "cigs"
	products = list(/obj/item/storage/fancy/cigarettes/cigpack_bigboss = 10,
					/obj/item/storage/fancy/cigarettes/cigpack_pyramid = 10,
					/obj/item/storage/fancy/cigarettes/cigpack_greytort = 10,
					/obj/item/storage/box/matches = 10,
					/obj/item/lighter = 5,
					/obj/item/clothing/mask/cigarette/pipe = 3,)
	contraband = list(/obj/item/storage/fancy/rollingpapers = 5,
	                  /obj/item/storage/fancy/cigarettes/cigars = 1)
	refill_canister = /obj/item/vending_refill/cigarette

/obj/item/vending_refill/cigarette
	machine_name = "Big Smokes"
	icon_state = "refill_smoke"
	charges = list(15, 2, 0)
	init_charges = list(15, 2, 0)

/obj/machinery/vending/cigarette/pre_throw(obj/item/I)
	if(istype(I, /obj/item/lighter))
		var/obj/item/lighter/L = I
		L.set_lit(TRUE)
