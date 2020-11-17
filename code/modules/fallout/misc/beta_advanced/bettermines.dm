/obj/item/grenade/bettermine
	name = "dummy mine"
	desc = "Better stay away from that thing."
	density = FALSE
	anchored = FALSE
	icon = 'icons/obj/betaadvanced.dmi'
	icon_state = "landmine"
	var/triggered = 0
	var/press_bolted = 1
	var/hidden = 0
	var/wire_cut = 0
	det_time = 0

/obj/item/grenade/bettermine/attack_self(mob/user)
	if(!active)
		to_chat(user, "<span class='warning'>You planted [name]!</span>")
		visible_message("<span class='danger'>[user] planted [src]!</span>")
		playsound(user.loc, 'sound/weapons/armbomb.ogg', 60, 1)
		active = 1
		icon_state = initial(icon_state) + "_active"
		add_fingerprint(user)

		var/turf/bombturf = get_turf(src)
		var/area/A = get_area(bombturf)
		var/message = "[ADMIN_LOOKUPFLW(user)]) has primed a [name] at [ADMIN_COORDJMP(bombturf)]"
		GLOB.bombers += message
		message_admins(message)
		log_game("[key_name(usr)] has primed a [name] for detonation at [A.name] [COORD(bombturf)].")

		if(user)
			user.dropItemToGround(src)
			anchored = 1

			var/image/I = image(icon = 'icons/obj/betaadvanced.dmi', icon_state = "landmine_active", loc = src)
			I.override = TRUE
			I.transform *= 1.5
			add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/landmines, "landmine_large", I)

/obj/item/grenade/bettermine/proc/triggermine(mob/victim)
	if(triggered)
		return
	visible_message("<span class='danger'>[victim] sets off [icon2html(src, viewers(src))] [src]!</span>")
	var/datum/effect_system/spark_spread/s = new /datum/effect_system/spark_spread
	s.set_up(3, 1, src)
	s.start()
	mineEffect(victim)
	triggered = 1
	qdel(src)

/obj/item/grenade/bettermine/proc/mineEffect(mob/victim)
	to_chat(victim, "<span class='danger'>*click*</span>")

/obj/item/grenade/bettermine/Crossed(AM as mob|obj)
	if(active)
		if(isturf(loc))
			if(ismob(AM))
				var/mob/MM = AM
				if(!(MM.movement_type & FLYING))
					triggermine(AM)
			else
				triggermine(AM)

/obj/item/grenade/bettermine/explosive
	name = "explosive mine"
	var/range_devastation = 0
	var/range_heavy = 1
	var/range_light = 1
	var/range_flash = 2

/obj/item/grenade/bettermine/explosive/planted
	active = 1
	anchored = 1
	icon_state = "landmine_active"

/obj/item/grenade/bettermine/explosive/planted/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/shovel))
		if(hidden == 0)
			if(do_after(user, 20, target = loc))
				to_chat(user, "You covered landmine with some sand.")
				icon_state = "landmine_hidden"
				hidden = 1
				return
		else
			if(do_after(user, 20, target = loc))
				to_chat(user, "You uncovered landmine.")
				icon_state = "landmine_active"
				return
	if(istype(I, /obj/item/screwdriver) && active)
		to_chat(user, "You started carefully removing bolts from detonating plate.")
		I.play_tool_sound(src, 75)
		if(do_after(user, 15, target = loc))
			to_chat(user, "You carefully remove bolts from detonating plate.")
			press_bolted = 0
			return
	if(istype(I, /obj/item/wirecutters) && press_bolted == 0)
		if(do_after(user, 15, target = loc))
			I.play_tool_sound(src, 75)
			to_chat(user, "You carefully cut wires inside of this mine, now it can be safely deconstructed...")
			wire_cut = 1
			active = 0
			return
	if(istype(I, /obj/item/wrench) && wire_cut == 1)
		to_chat(user, "You started dissassemble mine components.")
		I.play_tool_sound(src, 75)
		if(do_after(user, 25, target = loc))
			switch(rand(1,10))
				if(5)
					to_chat(user, "You successfuly disassembled mine and got all components!")
					new/obj/item/crafting/sensor/(get_turf(src), 1)
					new/obj/item/stack/sheet/metal/(get_turf(src), 1)
					new/obj/item/stack/cable_coil/(get_turf(src), 2)
					qdel(src)
				else
					to_chat(user, "Sadly, you didn't take anything useful from this mine...")
					qdel(src)

/obj/item/grenade/bettermine/explosive/mineEffect(mob/victim)
	explosion(loc, range_devastation, range_heavy, range_light, range_flash)