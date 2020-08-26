GLOBAL_LIST_EMPTY(all_sunlighting_objects) // Global list of lighting overlays.

/atom/movable/sunlighting_object
	name          = ""

	anchored      = TRUE

	icon             = LIGHTING_ICON
	//icon_state       = "transparent"
	color            = LIGHTING_BASE_MATRIX
	plane            = SUNLIGHTING_PLANE
	mouse_opacity    = 0
	layer            = LIGHTING_LAYER
	invisibility     = INVISIBILITY_LIGHTING

	blend_mode       = BLEND_ADD

	var/needs_update = FALSE

#ifdef LIGHTING_ANIMATION
	var/target_color
#endif


/atom/movable/sunlighting_object/New(var/atom/loc, var/no_update = FALSE)
	. = ..()
	verbs.Cut()
	GLOB.all_sunlighting_objects += src

	var/turf/T         = loc // If this runtimes atleast we'll know what's creating overlays in things that aren't turfs.
	T.sunlighting_object = src
	T.luminosity       = 0

	//for(var/turf/space/S in RANGE_TURFS(1, src)) //RANGE_TURFS is in code\__HELPERS\game.dm
	//	S.update_starlight()
	for(var/turf/open/O in RANGE_TURFS(1, src))
		O.update_sunlight()
	if (no_update)
		return

	update_overlay()

#if defined(LIGHTING_ANIMATION)
	animate_color()
#endif

/atom/movable/sunlighting_object/Destroy(var/force)
	if (force)
		GLOB.all_sunlighting_objects        -= src
		GLOB.sunlighting_update_overlays     -= src

		var/turf/T   = loc
		if (istype(T))
			T.sunlighting_object = null
			T.luminosity = 1

		..()
		return QDEL_HINT_QUEUE

	else
		return QDEL_HINT_LETMELIVE

/atom/movable/sunlighting_object/proc/update_overlay()
	var/turf/T = loc
	if (!istype(T)) // Erm...
		if (loc)
			warning("A lighting overlay realised its loc was NOT a turf (actual loc: [loc], [loc.type]) in update_overlay()!")

		else
			warning("A lighting overlay realised it was in nullspace in update_overlay()!")

		qdel(src, TRUE)
		return

	// To the future coder who sees this and thinks
	// "Why didn't he just use a loop?"
	// Well my man, it's because the loop performed like shit.
	// And there's no way to improve it because
	// without a loop you can make the list all at once which is the fastest you're gonna get.
	// Oh it's also shorter line wise.
	// Including with these comments.

	// See LIGHTING_CORNER_DIAGONAL in lighting_corner.dm for why these values are what they are.
	// No I seriously cannot think of a more efficient method, fuck off Comic.
	var/datum/sunlighting_corner/cr
	var/datum/sunlighting_corner/cg
	var/datum/sunlighting_corner/cb
	var/datum/sunlighting_corner/ca

	if(T.is_openspace())
		cr  = sundummy_lighting_corner_full
		cg  = sundummy_lighting_corner_full
		cb  = sundummy_lighting_corner_full
		ca  = sundummy_lighting_corner_full
	else
		cr  = T.suncorners[3] || sundummy_lighting_corner
		cg  = T.suncorners[2] || sundummy_lighting_corner
		cb  = T.suncorners[4] || sundummy_lighting_corner
		ca  = T.suncorners[1] || sundummy_lighting_corner


	var/max = max(cr.cache_mx, cg.cache_mx, cb.cache_mx, ca.cache_mx)
#ifdef LIGHTING_ANIMATION
	target_color = list(
		cr.cache, cr.cache, cr.cache, cr.cache,
		cg.cache, cg.cache, cg.cache, cg.cache,
		cb.cache, cb.cache, cb.cache, cb.cache,
		ca.cache, ca.cache, ca.cache, ca.cache,
		0, 0, 0, 0
	)
#else
	color = list(
		cr.cache, cr.cache, cr.cache, cr.cache,
		cg.cache, cg.cache, cg.cache, cg.cache,
		cb.cache, cb.cache, cb.cache, cb.cache,
		ca.cache, ca.cache, ca.cache, ca.cache,
		0, 0, 0, 0
	)
#endif

	if(max || T.is_openspace())
		luminosity = 1
	else
		luminosity = 0

/atom/movable/sunlighting_object/ex_act(severity)
	return 0

/atom/movable/sunlighting_object/singularity_act()
	return

/atom/movable/sunlighting_object/singularity_pull()
	return

/atom/movable/sunlighting_object/blob_act()
	return
/*
// Nope nope nope!
/atom/movable/sunlighting_object/onShuttleMove(turf/T1, rotation)
	return FALSE
*/
// Override here to prevent things accidentally moving around overlays.
/atom/movable/sunlighting_object/forceMove(atom/destination, var/no_tp=FALSE, var/harderforce = FALSE)
	if(harderforce)
		. = ..()
#if defined(LIGHTING_ANIMATION)
/atom/movable/sunlighting_object/proc/animate_color()
	animate(src, color = target_color, time = LIGHTING_ANIMATE_TIME, flags = ANIMATION_RELATIVE)
#endif