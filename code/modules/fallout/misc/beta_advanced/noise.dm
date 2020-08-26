/obj/screen/fullscreen/noisescreen
	icon = 'icons/fullscreen.dmi'
	screen_loc = "WEST,SOUTH to EAST,NORTH"
	icon_state = "noise"
	show_when_dead = TRUE
	layer = 24
	plane = 24
	alpha = 23

/mob/dead/new_player/Initialize()
	. = ..()
	overlay_fullscreen("noise", /obj/screen/fullscreen/noisescreen)