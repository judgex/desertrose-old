/obj/structure/timeddoor
	name = "mysterious door"
	desc = "A weird clicking can be heard coming from within the door"
	icon = 'icons/fallout/objects/structures/doors.dmi'
	icon_state = "timedoor"
	density = TRUE
	anchored = TRUE
	opacity = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

/obj/structure/timeddoor/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/timeddeletedoor), 15000) // 15000 = 25 minutes, 21000 = 35 minutes

/obj/structure/timeddoor/proc/timeddeletedoor()
	playsound(loc, 'sound/f13machines/doorhidden_open.ogg', 50, TRUE, -1)
	qdel(src)
	