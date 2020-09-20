/turf/open/water
	gender = PLURAL
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/water
	slowdown = 2
	bullet_sizzle = TRUE
	bullet_bounce_sound = null //needs a splashing sound one day.
	step_sounds = list("human" = "waterfootsteps")

/turf/open/water/Initialize()
	. = ..()
	update_icon()