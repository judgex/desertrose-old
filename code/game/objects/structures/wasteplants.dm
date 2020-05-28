/obj/structure/flora/wasteplant
	name = "wasteland plant"
	desc = "It's a wasteland plant."
	icon = 'icons/obj/flora/wastelandflora.dmi'
	anchored = 1
	density = 0
	var/has_plod = TRUE
	var/obj/item/reagent_containers/food/snacks/grown/produce = null

/obj/structure/flora/wasteplant/attack_hand(mob/user)
	if(has_plod)
		user.put_in_hands(new produce)
		user << "<span class='notice'>You take [produce] from [src].</span>"
		has_plod = FALSE
		update_icon() //Won't update due to proc otherwise
		regrow()
	update_icon()

/obj/structure/flora/wasteplant/proc/regrow()
	if(!has_plod)
		sleep(5000)
		has_plod = TRUE
		update_icon()

/obj/structure/flora/wasteplant/update_icon()
	if(has_plod)
		icon_state = "[initial(icon_state)]"
	else
		icon_state = "[initial(icon_state)]_no"

/obj/structure/flora/wasteplant/wild_broc
	name = "wild broc flower"
	icon_state = "wild_broc"
	desc = "A tall stalk bearing a vibrant, orange flower famed for its healing properties."
	produce = /obj/item/reagent_containers/food/snacks/grown/broc


/obj/structure/flora/wasteplant/wild_xander
	name = "wild xander roots"
	icon_state = "wild_xander"
	desc = "A hardy, onion-like root with mild healing properties."
	produce = /obj/item/reagent_containers/food/snacks/grown/xander

obj/structure/flora/wasteplant/wild_punga
	name = "wild punga"
	icon_state = "wild_punga"
	desc = "Punga fruit plants flower at a single point at the terminus of their stems, gradually developing into large, fleshy fruits with a yellow/brown, thick skin."
	produce = /obj/item/reagent_containers/food/snacks/grown/pungafruit

/obj/structure/flora/wasteplant/wild_coyote
	name = "wild coyote tobacco shrub"
	icon_state = "wild_coyote"
	desc = "This tobacco like plant is commonly used by tribals for a great variety of medicinal and ceremonial purposes."
	produce = /obj/item/reagent_containers/food/snacks/grown/coyotetobacco

/obj/structure/flora/wasteplant/wild_yucca
	name = "wild banana yucca"
	icon_state = "wild_yucca"
	desc = "The species gets its common name banana yucca from its banana-shaped fruit. The specific epithet baccata means 'with berries'"
	produce = /obj/item/reagent_containers/food/snacks/grown/yucca

/obj/structure/flora/wasteplant/wild_tato
	name = "wild tato"
	icon_state = "wild_tato"
	desc = "The outside looks like a tomato, but the inside is brown. Tastes as absolutely disgusting as it looks, but will keep you from starving."
	produce = /obj/item/reagent_containers/food/snacks/grown/tato

/obj/structure/flora/wasteplant/wild_feracactus
	name = "wild barrel cactus"
	icon_state = "wild_feracactus"
	desc = "A squat, spherical cactus blooming with a toxic fruit."
	produce = /obj/item/reagent_containers/food/snacks/grown/feracactus


/obj/structure/flora/wasteplant/wild_mutfruit
	name = "wild mutfruit sapling"
	icon_state = "wild_mutfruit"
	desc = "This irradiated sapling offers a fruit that is highly nutritious and hydrating."
	produce = /obj/item/reagent_containers/food/snacks/grown/mutfruit


/obj/structure/flora/wasteplant/wild_fungus
	name = "cave fungi"
	icon_state = "wild_fungus"
	desc = "This edible strain of fungus grows in dark places and is said to have anti-toxic properties."
	produce = /obj/item/reagent_containers/food/snacks/grown/fungus


/obj/structure/flora/wasteplant/wild_agave
	name = "wild agave"
	icon_state = "wild_agave"
	desc = "The juice of this fleshy plant soothes burns, but it also removes nutrients from the body."
	produce = /obj/item/reagent_containers/food/snacks/grown/agave