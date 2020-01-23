/turf/open/water
	gender = PLURAL
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/indestructible/ground/outside/desert
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE
	slowdown = 25
	bullet_sizzle = TRUE
	bullet_bounce_sound = null //needs a splashing sound one day.
	light_range = 3
	light_power = 0.75

/turf/open/water/Initialize()
	. = ..()
	MakeSlippery(TURF_WET_WATER, INFINITY, 0, INFINITY, TRUE)

