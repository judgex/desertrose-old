/obj/item/grenade/empgrenade
	name = "pulse grenade"
	desc = "A grenade primarily designed to send roboticized units, such as those that use power armor, completely haywire. It will still do damage to anyone in range, however. A label reads: \"Warning: This device can cause serious bodily harm or death. Use with caution.\""
	icon_state = "emp"
	item_state = "emp"
	var/burn_range = 6
	var/burn_damage = 35

/obj/item/grenade/empgrenade/prime()
	update_mob()
	playsound(loc, 'sound/f13weapons/pulsegrenade.ogg', 70, 1)
	empulse(src, 1, 6)
	for(var/turf/T in view(burn_range,loc))
		if(isfloorturf(T))
			for(var/mob/living/carbon/L in T)
				L.adjustFireLoss(burn_damage)
				L.adjust_bodytemperature(250)
	qdel(src)
