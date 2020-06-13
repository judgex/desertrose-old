/obj/item/grenade/empgrenade
	name = "pulse grenade"
	desc = "A grenade primarily designed to send roboticized units, such as those that use power armor."
	icon_state = "emp"
	item_state = "emp"
	var/burn_range = 5
	var/burn_damage = 30

/obj/item/grenade/empgrenade/prime()
	update_mob()
	playsound(loc, 'sound/f13weapons/pulsegrenade.ogg', 60, 1)
	empulse(src, 2, 5)
	for(var/turf/T in view(burn_range,loc))
		if(isfloorturf(T))
			for(var/mob/living/carbon/L in T)
				L.adjustFireLoss(burn_damage)
				L.adjust_bodytemperature(230)
	qdel(src)
