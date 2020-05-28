/obj/item/seeds/buffalogourd
	name = "pack of buffalo gourd seeds"
	desc = "These seeds grow into buffalo vines."
	icon_state = "seed-buffalo"
	species = "buffalo gourd"
	plantname = "buffalo vines"
	product = /obj/item/reagent_containers/food/snacks/grown/buffalogourd
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_grow = "gourd-grow"
	icon_dead = "gourd-dead"
	icon_harvest = "gourd-harvest"
	reagents_add = list("water" = 0.2, "vitamin" = 0.04, "nutriment" = 0.2)
	lifespan = 50
	endurance = 40
	yield = 5
	growthstages = 4
	production = 2
	maturation = 1

/obj/item/reagent_containers/food/snacks/grown/buffalogourd
	seed = /obj/item/seeds/buffalogourd
	name = "buffalo gourd"
	desc = "This large spreading perennial vine is a close relative of many cultivated gourd crops. The ripe fruit forms a small gourd, which was reportedly boiled and eaten by various tribes."
	icon_state = "Buffalo Gourd"
	w_class = WEIGHT_CLASS_NORMAL
	filling_color = "#008000"
	bitesize_mod = 3
	foodtype = FRUIT