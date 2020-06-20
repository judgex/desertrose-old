/obj/structure/timeddoor
	name = "mysterious door"
	desc = "A weird clicking can be heard coming from within the door"
	icon = 'icons/fallout/objects/structures/doors.dmi'
	icon_state = "timedoor"
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	// NOTE: Changing this var does nothing! However, it does give us the opportunity to know how much time it started with.
	var/timedeletion = 0

/obj/structure/timeddoor/Initialize()
	. = ..()
	timedeletion = rand(15000, 21000)
	addtimer(CALLBACK(src, .proc/timeddeletedoor), timedeletion) // 15000 = 25 minutes, 21000 = 35 minutes

/obj/structure/timeddoor/proc/timeddeletedoor()
	playsound(loc, 'sound/f13machines/doorhidden_open.ogg', 50, TRUE, -1)
	qdel(src)
	