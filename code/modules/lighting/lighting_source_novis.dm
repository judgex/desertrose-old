/datum/light_source/novis
	//skip_falloff = TRUE

/datum/light_source/novis/update_corners()
	var/update = FALSE
	var/atom/source_atom = src.source_atom

	if (QDELETED(source_atom))
		qdel(src)
		return

	if (source_atom.light_power != light_power)
		light_power = source_atom.light_power
		update = TRUE

	if (source_atom.light_range != light_range)
		light_range = source_atom.light_range
		update = TRUE

	if (!top_atom)
		top_atom = source_atom
		update = TRUE

	if (!light_range || !light_power)
		qdel(src)
		return

	if (isturf(top_atom))
		if (source_turf != top_atom)
			source_turf = top_atom
			pixel_turf = source_turf
			update = TRUE
	else if (top_atom.loc != source_turf)
		source_turf = top_atom.loc
		pixel_turf = get_turf_pixel(top_atom)
		update = TRUE
	else
		var/P = get_turf_pixel(top_atom)
		if (P != pixel_turf)
			pixel_turf = P
			update = TRUE

	if (!isturf(source_turf))
		if (applied)
			remove_lum()
		return

	if (light_range && light_power && !applied)
		update = TRUE

	if (source_atom.light_color != light_color)
		light_color = source_atom.light_color
		parse_light_color()
		update = TRUE

	else if (applied_lum_r != lum_r || applied_lum_g != lum_g || applied_lum_b != lum_b)
		update = TRUE

	if (update)
		needs_update = LIGHTING_CHECK_UPDATE
		applied = TRUE
	else if (needs_update == LIGHTING_CHECK_UPDATE)
		return //nothing's changed



	var/list/datum/lighting_corner/corners = list()
	var/list/turf/turfs                    = list()
	var/thing
	var/datum/lighting_corner/C
	var/turf/T
	if (source_turf)
		if(checkAdjacent() & isturf(source_atom))
			T = source_atom
			turfs += T
			for (thing in T.get_corners(source_turf))
				C = thing
				corners[C] = 0
		else
			var/oldlum = source_turf.luminosity
			source_turf.luminosity = CEILING(light_range, 1)
			for(T in RANGE_TURFS(CEILING(light_range, 1), source_turf)) // We don't need no damn vis checks!
				if( (lightFlag & GLOBAL_LIGHTING) && (T.flags_2 & GLOBAL_LIGHT_TURF_2 ) && (T != source_atom))
					continue
				if(!(T.type in GLOB.daylight_turfs))
					continue
				for (thing in T.get_corners(source_turf))
					C = thing
					corners[C] = 0
				turfs += T
			source_turf.luminosity = oldlum

	LAZYINITLIST(affecting_turfs)
	var/list/L = turfs - affecting_turfs // New turfs, add us to the affecting lights of them.
	affecting_turfs += L
	for (thing in L)
		T = thing
		LAZYADD(T.affecting_lights, src)

	L = affecting_turfs - turfs // Now-gone turfs, remove us from the affecting lights.
	affecting_turfs -= L
	for (thing in L)
		T = thing
		LAZYREMOVE(T.affecting_lights, src)

	LAZYINITLIST(effect_str)
	if (needs_update == LIGHTING_VIS_UPDATE)
		for (thing in  corners - effect_str) // New corners
			C = thing
			LAZYADD(C.affecting, src)
			if (!C.active)
				effect_str[C] = 0
				continue
			APPLY_CORNER_SIMPLE(C)
	else
		L = corners - effect_str
		for (thing in L) // New corners
			C = thing
			LAZYADD(C.affecting, src)
			if (!C.active)
				effect_str[C] = 0
				continue
			APPLY_CORNER_SIMPLE(C)

		for (thing in corners - L) // Existing corners
			C = thing
			if (!C.active)
				effect_str[C] = 0
				continue
			APPLY_CORNER_SIMPLE(C)

	L = effect_str - corners
	for (thing in L) // Old, now gone, corners.
		C = thing
		REMOVE_CORNER(C)
		LAZYREMOVE(C.affecting, src)
	effect_str -= L

	applied_lum_r = lum_r
	applied_lum_g = lum_g
	applied_lum_b = lum_b

	UNSETEMPTY(effect_str)
	UNSETEMPTY(affecting_turfs)

#undef EFFECT_UPDATE
#undef LUM_FALLOFF
#undef REMOVE_CORNER
#undef APPLY_CORNER
#undef APPLY_CORNER_SIMPLE