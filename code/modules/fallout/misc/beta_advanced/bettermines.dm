/obj/item/grenade/bettermine
	name = "dummy mine"
	desc = "Better stay away from that thing."
	density = FALSE
	anchored = FALSE
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "landmine"
	var/triggered = 0
	det_time = 0

/obj/item/grenade/bettermine/attack_self(mob/user)
	if(!active)
		to_chat(user, "<span class='warning'>Вы устанавливаете [name]!</span>")
		visible_message("<span class='danger'>[user] устанавливает [src]!</span>")
		playsound(user.loc, 'sound/weapons/armbomb.ogg', 60, 1)
		active = 1
		icon_state = initial(icon_state) + "_active"
		add_fingerprint(user)

		var/turf/bombturf = get_turf(src)
		var/area/A = get_area(bombturf)
		var/message = "[ADMIN_LOOKUPFLW(user)]) активирует детонацию [name] в [ADMIN_COORDJMP(bombturf)]"
		GLOB.bombers += message
		message_admins(message)
		log_game("[key_name(usr)] has primed a [name] for detonation at [A.name] [COORD(bombturf)].")

		if(user)
			user.dropItemToGround(src)
			anchored = 1

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
	var/range_light = 2
	var/range_flash = 3

/obj/item/grenade/bettermine/explosive/planted
	active = 1
	anchored = 1
	icon_state = "landmine_active"

/obj/item/grenade/bettermine/explosive/mineEffect(mob/victim)
	explosion(loc, range_devastation, range_heavy, range_light, range_flash)