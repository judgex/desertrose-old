

/atom/movable
	var/can_buckle = 0
	var/buckle_lying = -1 //bed-like behaviour, forces mob.lying = buckle_lying if != -1
	var/buckle_requires_restraints = 0 //require people to be handcuffed before being able to buckle. eg: pipes
	var/list/mob/living/buckled_mobs = null //list()
	var/max_buckled_mobs = 1
	var/buckle_prevents_pull = TRUE

/mob/living/Moved(atom/OldLoc, Dir, Forced = FALSE)
	. = ..()
	if(istype(buckled) && buckled.loc != loc) //We're not in the same turf anymore
		buckled.unbuckle_mob(src)

//Interaction
/atom/movable/attack_hand(mob/living/user)
	. = ..()
	if(.)
		return
	if(can_buckle && has_buckled_mobs())
		if(LAZYLEN(buckled_mobs) > 1)
			var/unbuckled = input(user, "Who do you wish to unbuckle?","Unbuckle Who?") as null|mob in buckled_mobs
			if(user_unbuckle_mob(unbuckled,user))
				return 1
		else
			if(user_unbuckle_mob(buckled_mobs[1],user))
				return 1

/atom/movable/MouseDrop_T(mob/living/M, mob/living/user) //This actually doesn't work because of the interaction menu. Use verbs on humans
	. = ..()
	if(can_buckle && istype(M) && istype(user))
		if(user_buckle_mob(M, user))
			return 1

/atom/movable/proc/has_buckled_mobs()
	if(LAZYLEN(buckled_mobs))
		return TRUE

//procs that handle the actual buckling and unbuckling
/atom/movable/proc/buckle_mob(mob/living/M, force = FALSE, check_loc = TRUE)
	if(!buckled_mobs)
		buckled_mobs = list()

	if(!istype(M))
		return FALSE

	if(check_loc && M.loc != loc)
		return FALSE

	if((!can_buckle && !force) || M.buckled || (LAZYLEN(buckled_mobs) >= max_buckled_mobs) || (buckle_requires_restraints && !M.restrained()) || M == src)
		return FALSE
	M.buckling = src
	if(!M.can_buckle() && !force)
		if(M == usr)
			to_chat(M, "<span class='warning'>You are unable to buckle yourself to [src]!</span>")
		else
			to_chat(usr, "<span class='warning'>You are unable to buckle [M] to [src]!</span>")
		M.buckling = null
		return FALSE

	if(M.pulledby && buckle_prevents_pull)
		M.pulledby.stop_pulling()

	if(!check_loc && M.loc != loc)
		M.forceMove(loc)

	M.buckling = null
	M.buckled = src
	M.setDir(dir)
	LAZYADD(buckled_mobs,M)
	M.update_canmove()
	M.throw_alert("buckled", /obj/screen/alert/restrained/buckled)
	post_buckle_mob(M)
	SEND_SIGNAL(src, COMSIG_MOVABLE_BUCKLE, M, force)
	return TRUE

/obj/buckle_mob(mob/living/M, force = FALSE, check_loc = TRUE)
	. = ..()
	if(.)
		if(resistance_flags & ON_FIRE) //Sets the mob on fire if you buckle them to a burning atom/movableect
			M.adjust_fire_stacks(1)
			M.IgniteMob()

//Can C try to piggyback at all.
/mob/living/carbon/human/proc/can_piggyback(mob/living/carbon/rider)
	if(!istype(rider))
		return FALSE

	if(buckled_mobs && ((rider in buckled_mobs) || (LAZYLEN(buckled_mobs) >= max_buckled_mobs)) || buckled || stat != CONSCIOUS)
		return FALSE

	return TRUE

/mob/living/carbon/human/buckle_mob(mob/living/M, force = FALSE, check_loc = FALSE)
	if(!force)//humans are only meant to be ridden through piggybacking and special cases
		return 0
	if(!is_type_in_typecache(M, can_ride_typecache))
		M.visible_message("<span class='warning'>[M] really can't seem to mount [src]...</span>")
		return
	var/datum/component/riding/human/riding_datum = LoadComponent(/datum/component/riding/human)
	if(can_piggyback(M))
		visible_message("<span class='notice'>[M] starts to climb onto [src]...</span>")
		if(do_after(M, riding_datum.climb_on_ticks, target = src))
			if(can_piggyback(M)) //Can we *still* climb on??
				if(M.lying || lying)
					M.visible_message("<span class='warning'>[M] can't hang onto [src]!</span>")
					return 0
				if(!riding_datum.equip_buckle_inhands(M))
					M.visible_message("<span class='warning'>[M] can't climb onto [src]!</span>")
					return 0

				return ..(M, force, check_loc)

	visible_message("<span class='warning'>[M] fails to climb onto [src]!</span>")
	stop_pulling()

/atom/movable/proc/unbuckle_mob(mob/living/buckled_mob, force=FALSE)
	if(istype(buckled_mob) && buckled_mob.buckled == src && (buckled_mob.can_unbuckle() || force))
		. = buckled_mob
		buckled_mob.buckled = null
		buckled_mob.anchored = initial(buckled_mob.anchored)
		buckled_mob.clear_alert("buckled")
		LAZYREMOVE(buckled_mobs,buckled_mob)
		//buckled_mob.drop_all_held_items()
		post_unbuckle_mob(.)
		SEND_SIGNAL(src, COMSIG_MOVABLE_UNBUCKLE, buckled_mob, force)
		buckled_mob.update_canmove()

/atom/movable/proc/unbuckle_all_mobs(force=FALSE)
	if(!has_buckled_mobs())
		return
	for(var/m in buckled_mobs)
		unbuckle_mob(m, force)

//Handle any extras after buckling
//Called on buckle_mob()
/atom/movable/proc/post_buckle_mob(mob/living/M)

//same but for unbuckle
/atom/movable/proc/post_unbuckle_mob(mob/living/M)

//Wrapper procs that handle sanity and user feedback
/atom/movable/proc/user_buckle_mob(mob/living/M, mob/user, check_loc = TRUE)
	if(!in_range(user, src) || !isturf(user.loc) || user.incapacitated() || M.anchored)
		return FALSE

	add_fingerprint(user)
	. = buckle_mob(M, check_loc = check_loc)
	if(.)
		if(M == user)
			M.visible_message(\
				"<span class='notice'>[M] buckles [M.p_them()]self to [src].</span>",\
				"<span class='notice'>You buckle yourself to [src].</span>",\
				"<span class='italics'>You hear metal clanking.</span>")
		else
			M.visible_message(\
				"<span class='warning'>[user] buckles [M] to [src]!</span>",\
				"<span class='warning'>[user] buckles you to [src]!</span>",\
				"<span class='italics'>You hear metal clanking.</span>")

/atom/movable/proc/user_unbuckle_mob(mob/living/buckled_mob, mob/user)
	var/mob/living/M = unbuckle_mob(buckled_mob)
	if(M)
		if(M != user)
			M.visible_message(\
				"<span class='notice'>[user] unbuckles [M] from [src].</span>",\
				"<span class='notice'>[user] unbuckles you from [src].</span>",\
				"<span class='italics'>You hear metal clanking.</span>")
		else
			M.visible_message(\
				"<span class='notice'>[M] unbuckles [M.p_them()]self from [src].</span>",\
				"<span class='notice'>You unbuckle yourself from [src].</span>",\
				"<span class='italics'>You hear metal clanking.</span>")
		add_fingerprint(user)
	return M
