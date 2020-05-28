/*/obj/item/seeds/horsenettle
	name = "pack of horsenettle seeds"
	desc = "These seeds grow into white horsenettles."
	icon_state = "seed-horsenettle"
	species = "horsenettle"
	plantname = "White Horsenettles"
	product = /obj/item/reagent_containers/food/snacks/grown/horsenettle
	lifespan = 30
	endurance = 40
	yield = 4
	growthstages = 5
	genes = list(/datum/plant_gene/trait/repeated_harvest, /datum/plant_gene/trait/plant_type/weed_hardy)
	reagents_add = list("vitamin" = 0.04, "nutriment" = 0.1)
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_grow = "horsenettle-grow"
	icon_dead = "horsenettle-dead"
	icon_harvest = "horsenettle-harvest"

/obj/item/reagent_containers/food/snacks/grown/horsenettle
	seed = /obj/item/seeds/horsenettle
	name = "horsenettle berries"
	desc = "The tribes use these berries as a vegetable rennet."
	icon_state = "Horsenettle"
	filling_color = "#FF00FF"
	bitesize_mod = 2
	foodtype = FRUIT
	juice_results = list("enzyme" = 1)
	tastes = list("searing pain" = 1)
	distill_reagent = "enzyme"*/