/obj/structure/statue_fal
	name = "Ranger statue"
	desc = "A big ranger statue."
	icon = 'icons/fallout/objects/structures/statue.dmi'
	icon_state = "statue1"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/statue_fal/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()