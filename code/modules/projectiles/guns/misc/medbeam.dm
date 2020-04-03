/obj/item/gun/medbeam
	name = "medical beamgun"
	desc = "A rather advanced gun that can be used to heal something it targets, albeit at the expense of causing minor blood toxicity. Not actively holding it will cause a loss of control and deactivate this tool."
	icon = 'icons/obj/chronos.dmi'
	icon_state = "chronogun"
	item_state = "chronogun"
	w_class = WEIGHT_CLASS_NORMAL

	var/mob/living/current_target
	var/last_check = 0
	var/check_delay = 10 //Check los as often as possible, max resolution is SSobj tick though
	var/max_range = 8
	var/active = 0
	var/datum/beam/current_beam = null
	var/mounted = 0 //Denotes if this is a handheld or mounted version

/obj/item/gun/medbeam/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/gun/medbeam/Destroy(mob/user)
	STOP_PROCESSING(SSobj, src)
	LoseTarget()
	return ..()

/obj/item/gun/medbeam/dropped(mob/user)
	..()
	LoseTarget()

/obj/item/gun/medbeam/equipped(mob/user)
	..()
	LoseTarget()

/obj/item/gun/medbeam/proc/LoseTarget()
	if(active)
		qdel(current_beam)
		current_beam = null
		active = 0
		on_beam_release(current_target)
	current_target = null

/obj/item/gun/medbeam/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(isliving(user))
		add_fingerprint(user)
	if(!user.IsAdvancedToolUser())
		to_chat(user, "<span class='warning'>Pah! Useless! You can't kill anyone with this.</span>")
		return
	if(current_target)
		LoseTarget()
	if(!isliving(target))
		return

	current_target = target
	active = TRUE
	current_beam = new(user,current_target,time=6000,beam_icon_state="medbeam",btype=/obj/effect/ebeam/medical)
	INVOKE_ASYNC(current_beam, /datum/beam.proc/Start)

	SSblackbox.record_feedback("tally", "gun_fired", 1, type)

/obj/item/gun/medbeam/process()

	var/source = loc
	if(!mounted && !isliving(source))
		LoseTarget()
		return

	if(!current_target)
		LoseTarget()
		return

	if(world.time <= last_check+check_delay)
		return

	last_check = world.time

	if(istype(source, /mob/living/carbon/human))
		var/mob/living/carbon/human/user = loc
		if(user.get_active_held_item() != src) //Can't use the medbeam if your active select hand doesn't contain it
			LoseTarget()
			to_chat(source, "<span class='warning'>Your grasp on the medbeam loosens when you stop actively focusing on it!</span>")

	if(get_dist(source, current_target)>max_range || !los_check(source, current_target))
		LoseTarget()
		if(isliving(source))
			to_chat(source, "<span class='warning'>You lose control of the beam!</span>")
		return

	if(current_target)
		on_beam_tick(current_target)

/obj/item/gun/medbeam/proc/los_check(atom/movable/user, mob/target)
	var/turf/user_turf = user.loc
	if(mounted)
		user_turf = get_turf(user)
	else if(!istype(user_turf))
		return 0
	var/obj/dummy = new(user_turf)
	dummy.pass_flags |= PASSTABLE|PASSGLASS|PASSGRILLE //Grille/Glass so it can be used through common windows
	for(var/turf/turf in getline(user_turf,target))
		if(mounted && turf == user_turf)
			continue //Mechs are dense and thus fail the check
		if(turf.density)
			qdel(dummy)
			return 0
		for(var/atom/movable/AM in turf)
			if(!AM.CanPass(dummy,turf,1))
				qdel(dummy)
				return 0
	qdel(dummy)
	return 1

/obj/item/gun/medbeam/proc/on_beam_hit(var/mob/living/target)
	return

/obj/item/gun/medbeam/proc/on_beam_tick(var/mob/living/target)
	if(target.getBruteLoss() != 0 || target.getFireLoss() != 0 || target.getOxyLoss() == 0) //Converts damage to toxins at a ratio of 4:1
		new /obj/effect/temp_visual/heal(get_turf(target), "#80F5FF")
	if(target.getBruteLoss() != 0)
		target.adjustBruteLoss(-4)
		target.adjustToxLoss(1)
	if(target.getFireLoss() != 0)
		target.adjustFireLoss(-4)
		target.adjustToxLoss(1)
	if(target.getOxyLoss() != 0)
		target.adjustOxyLoss(-4)
		target.adjustToxLoss(1)
	return

/obj/item/gun/medbeam/proc/on_beam_release(var/mob/living/target)
	return

/obj/effect/ebeam/medical
	name = "medical beam"

//////////////////////////////Mech Version///////////////////////////////
/obj/item/gun/medbeam/mech
	mounted = 1

/obj/item/gun/medbeam/mech/Initialize()
	. = ..()
	STOP_PROCESSING(SSobj, src) //Mech mediguns do not process until installed, and are controlled by the holder obj
