/*/obj/item/seeds/buffalogourd
	name = "pack of buffalo gourd seeds"
	desc = "These seeds grow into buffalo vines."
	icon_state = "seed-buffalo"
	species = "buffalo gourd"
	plantname = "buffalo bines"
	product = /obj/item/reagent_containers/food/snacks/grown/buffalogoue
	lifespan = 50
	endurance = 40
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_dead = "buffalo-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list("water" = 0.2, "vitamin" = 0.04, "nutriment" = 0.2)

/obj/item/reagent_containers/food/snacks/grown/buffalogourd
	seed = /obj/item/seeds/watermelon
	name = "watermelon"
	desc = "It's full of watery goodness."
	icon_state = "buffalogourd"
	w_class = WEIGHT_CLASS_NORMAL
	filling_color = "#008000"
	bitesize_mod = 3
	foodtype = FRUIT
	juice_results = list("watermelonjuice" = 0)
	wine_power = 40*/