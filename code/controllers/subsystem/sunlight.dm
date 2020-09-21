SUBSYSTEM_DEF(sunlight)
	name = "Sunlight"
	flags = SS_NO_FIRE

	var/list/light_points = list()
	var/sun_target_z = 2
	var/sun_accuracy = 8

	var/list/presets

/datum/controller/subsystem/sunlight/New()
	NEW_SS_GLOBAL(SSsunlight)

/datum/controller/subsystem/sunlight/stat_entry()
	..("A:[sun_accuracy] LP:[light_points.len] Z:[sun_target_z]")

/datum/controller/subsystem/sunlight/Initialize()
	var/thing
	var/turf/T
	for (thing in block(locate(1, 1, sun_target_z), locate(world.maxx, world.maxy, sun_target_z)))
		T = thing
		if (!(T.x % sun_accuracy) && !(T.y % sun_accuracy))
			light_points += new /atom/movable/sunobj(thing)
		CHECK_TICK

	log_game("sunlight: [light_points.len] sun emitters.")
	..()

/datum/controller/subsystem/sunlight/proc/set_overall_light(...)
	. = 0
	for (var/thing in light_points)
		var/atom/movable/AM = thing
		AM.set_light(arglist(args))
		.++
		CHECK_TICK

/atom/movable/sunobj
	name = "sunlight emitter"
	desc = "Weren't you told to never look directly at the sun? (but seriously, you shouldn't see this)"
	light_novis = TRUE
	light_range = 16
	mouse_opacity = FALSE

/atom/movable/sunobj/Destroy(force = FALSE)
	if (!force)
		stack_trace("Something attempted to delete a sunobj!")
		return QDEL_HINT_LETMELIVE

	SSsunlight.light_points -= src
	return ..()

/atom/movable/sunobj/Initialize()
	light_range = CEILING(SSsunlight.sun_accuracy * 1.2, 1)
	return ..()