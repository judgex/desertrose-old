//base nest and the procs
/obj/structure/nest
	name = "monster nest"
	desc = "A horrible nest full of monsters."
	icon = 'icons/mob/nest_new.dmi'
	icon_state = "hole"
	var/list/spawned_mobs = list()
	var/max_mobs = 5
	var/mob_types = list(/mob/living/simple_animal/hostile/carp)
	var/spawn_delay = 0
	//make spawn_time's multiples of 10. The SS runs on 10 seconds.
	var/spawn_time = 30 SECONDS
	var/coverable = TRUE
	var/covered = FALSE
	var/obj/covertype
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	var/spawn_text = "emerges from"
	anchored = TRUE
	layer = BELOW_OBJ_LAYER

/obj/structure/nest/Initialize()
	. = ..()
	GLOB.mob_nests += src

/obj/structure/nest/Destroy()
	GLOB.mob_nests -= src
	. = ..()

/obj/structure/nest/proc/spawn_mob()
	if(covered)
		return FALSE
	if(world.time < spawn_delay)
		return 0
	spawn_delay = world.time + spawn_time
	if(spawned_mobs.len >= max_mobs)
		return FALSE
	var/chosen_mob_type = pickweight(mob_types)
	var/mob/living/simple_animal/L = new chosen_mob_type(src.loc)
	L.flags_1 |= (flags_1 & ADMIN_SPAWNED_1)	//If we were admin spawned, lets have our children count as that as well.
	spawned_mobs += L
	L.nest = src
	visible_message("<span class='danger'>[L] [spawn_text] [src].</span>")

/obj/structure/nest/attackby(obj/item/I, mob/living/user, params)
	if(user.a_intent == INTENT_HARM)	
		to_chat(user, "<span class='warning'>You feel it is impossible to hit a hole!</span>")
		return

	if(istype(I, /obj/item/stack/rods))
		if(!coverable)
			to_chat(user, "<span class='warning'>The hole is unable to be covered!</span>")
			return
		if(covered)
			to_chat(user, "<span class='warning'>The hole is already covered!</span>")
			return
		var/obj/item/stack/rods/R = I
		if(R.amount < 4)
			to_chat(user, "<span class='warning'>You need four rods in order to cover the hole!</span>")
			return
		if(!do_after(user, 5 SECONDS, FALSE, src))
			to_chat(user, "<span class='warning'>You must stand still to build the cover!</span>")
			return
		R.use(4)
		covered = TRUE
		covertype = /obj/item/stack/rods
		var/image/rod_image = image(icon, icon_state = "rods")
		add_overlay(rod_image)
		return

	if(istype(I, /obj/item/stack/sheet/mineral/wood))
		if(!coverable)
			to_chat(user, "<span class='warning'>The hole is unable to be covered!</span>")
			return
		if(covered)
			to_chat(user, "<span class='warning'>The hole is already covered!</span>")
			return
		var/obj/item/stack/sheet/mineral/wood/W = I
		if(W.amount < 4)
			to_chat(user, "<span class='warning'>You need four planks of wood in order to cover the hole!</span>")
			return
		if(!do_after(user, 5 SECONDS, FALSE, src))
			to_chat(user, "<span class='warning'>You must stand still to build the cover!</span>")
			return
		W.use(4)
		covered = TRUE
		covertype = /obj/item/stack/sheet/mineral/wood
		var/image/plank_image = image(icon, icon_state = "planks")
		add_overlay(plank_image)
		return

	if(istype(I, /obj/item/crowbar))
		var/turf/T = get_turf(src)
		if(!covered)
			to_chat(user, "<span class='warning'>The hole is not covered!</span>")
			return
		if(!do_after(user, 10 SECONDS, FALSE, src))
			to_chat(user, "<span class='warning'>You must stand still to remove the cover!</span>")
			return
		for(var/i in 1 to 4)
			new covertype(T)
		to_chat(user, "<span class='notice'>You cover the hole!</span>")
		covertype = null
		covered = FALSE
		cut_overlays()

//the nests themselves
/obj/structure/nest/syndicate
	name = "syndicate nest"
	mob_types = list(/mob/living/simple_animal/hostile/syndicate/ranged = 1)

/obj/structure/nest/skeleton
	name = "skeleton nest"
	mob_types = list(/mob/living/simple_animal/hostile/skeleton = 1)

/obj/structure/nest/ghoul
	name = "ghoul nest"
	mob_types = list(/mob/living/simple_animal/hostile/ghoul = 5, 
					/mob/living/simple_animal/hostile/ghoul/reaver = 3, 
					/mob/living/simple_animal/hostile/ghoul/glowing = 1)

/obj/structure/nest/deathclaw
	name = "deathclaw nest"
	mob_types = list(/mob/living/simple_animal/hostile/deathclaw = 5, 
					/mob/living/simple_animal/hostile/deathclaw/mother = 1)

/obj/structure/nest/scorpion
	name = "scorpion nest"
	mob_types = list(/mob/living/simple_animal/hostile/radscorpion = 1)

/obj/structure/nest/radroach
	name = "radroach nest"
	mob_types = list(/mob/living/simple_animal/hostile/radroach = 1)
