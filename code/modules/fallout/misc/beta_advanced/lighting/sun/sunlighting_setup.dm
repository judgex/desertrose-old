/proc/create_all_sunlighting_objects()
	for (var/zlevel = 1 to world.maxz)
		create_sunlighting_objects_zlevel(zlevel)

/proc/create_sunlighting_objects_zlevel(var/zlevel)
	ASSERT(zlevel)

	for (var/turf/T in block(locate(1, 1, zlevel), locate(world.maxx, world.maxy, zlevel)))
		if (!IS_DYNAMIC_LIGHTING(T))
			continue

		var/area/A = T.loc
		if (!IS_DYNAMIC_LIGHTING(A))
			continue

		T.sun_lighting_build_overlay()
