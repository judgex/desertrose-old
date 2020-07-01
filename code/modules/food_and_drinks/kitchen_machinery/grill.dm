/obj/machinery/grill
	name = "grill"
	desc = "Just like the good old days, bring round the boys and light up some steaks on the grill after a day in this hellish wasteland!"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "grill_open"
	density = TRUE
	layer = BELOW_OBJ_LAYER
	use_power = NO_POWER_USE
	var/grill_fuel = 0
	var/obj/item/reagent_containers/food/grilled_item
	var/grill_time = 10
	var/datum/looping_sound/grill/grill_loop

/obj/machinery/grill/Initialize()
	. = ..()
	grill_loop = new(list(src), FALSE)

/obj/machinery/grill/update_icon()
	if(grilled_item)
		icon_state = "grill"
	else if(grill_fuel)
		icon_state = "grill_on"
	else
		icon_state = "grill_open"

/obj/machinery/grill/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/stack/sheet/mineral/wood) || istype(I, /obj/item/stack/sheet/mineral/wood))
		var/obj/item/stack/S = I
		var/stackamount = S.get_amount()
		to_chat(user, "<span class='notice'>You put [stackamount] [I]s in [src].</span>")
		if(istype(I, /obj/item/stack/sheet/mineral/wood))
			grill_fuel += (500 * stackamount)
		else
			grill_fuel += (50 * stackamount)
		S.use(stackamount)
		update_icon()
		return
	if(I.resistance_flags & INDESTRUCTIBLE)
		to_chat(user, "<span class='warning'>You don't feel it would be wise to grill [I]...</span>")
		return ..()
	if(istype(I, /obj/item/reagent_containers))
		if(istype(I, /obj/item/reagent_containers/food) && !istype(I, /obj/item/reagent_containers/food/drinks))
			if(I.item_flags & (ABSTRACT | DROPDEL))
				return ..()
			else if(!grill_fuel)
				to_chat(user, "<span class='notice'>There is not enough fuel.</span>")
				return
			else if(!grilled_item && user.transferItemToLoc(I, src))
				grilled_item = I
				to_chat(user, "<span class='notice'>You put the [grilled_item] on [src].</span>")
				update_icon()
				grill_loop.start()
				return
	..()

/obj/machinery/grill/process()
	..()
	update_icon()
	if(!grill_fuel)
		return
	else
		grill_fuel -= 1
	if(grilled_item)
		grill_time += 10
		grilled_item.reagents.add_reagent(/datum/reagent/consumable/char, 1)
		grill_fuel -= 10
		grilled_item.microwave_act()
		update_icon()
		grill_loop.stop()

/obj/machinery/grill/Exited(atom/movable/AM)
	if(AM == grilled_item)
		grilled_item = null
	..()

/obj/machinery/grill/Destroy()
	grilled_item = null
	. = ..()

/obj/machinery/grill/handle_atom_del(atom/A)
	if(A == grilled_item)
		grilled_item = null
	. = ..()

/obj/machinery/grill/wrench_act(mob/living/user, obj/item/I)
	. = ..()
	if(default_unfasten_wrench(user, I) != CANT_UNFASTEN)
		return TRUE

/obj/machinery/grill/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		new /obj/item/stack/sheet/metal(loc, 5)
		new /obj/item/stack/rods(loc, 5)
	..()

/obj/machinery/grill/attack_ai(mob/user)
	return

/obj/machinery/grill/unwrenched
	anchored = FALSE