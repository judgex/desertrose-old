/datum/component/jousting
	var/current_direction = NONE
	var/max_tile_charge = 10
	var/min_tile_charge = 4				//tiles before this code gets into effect.
	var/movement_reset_tolerance = 3			//deciseconds
	var/unmounted_damage_boost_per_tile = 5 //also a percentage - 5% per tile, up to 10
	var/unmounted_knockdown_chance_per_tile = 5 //up to 50%
	var/unmounted_knockdown_time = 10 //not super strong by default
	var/mounted_damage_boost_per_tile = 20 //this is going to be a percentage now
	var/mounted_knockdown_chance_per_tile = 20 // This is 100% at 5 tiles
	var/mounted_knockdown_time = 50
	var/requires_mob_riding = FALSE			//whether this only works if the attacker is riding a mob, rather than anything they can buckle to.
	//^^ HELLO: CHAIR EXTINGUISHER JOUSTING ANYONE??
	var/requires_mount = FALSE 			//kinda defeats the point of jousting if you're not mounted but whatever.
	//^^ WRONG: charge attacks babyyy
	var/mob/current_holder
	var/current_timerid
	var/current_tile_charge = 0

/datum/component/jousting/Initialize()
	if(!isitem(parent))
		return COMPONENT_INCOMPATIBLE
	RegisterSignal(parent, COMSIG_ITEM_EQUIPPED, .proc/on_equip)
	RegisterSignal(parent, COMSIG_ITEM_DROPPED, .proc/on_drop)
	RegisterSignal(parent, COMSIG_ITEM_ATTACK, .proc/on_attack)

/datum/component/jousting/proc/on_equip(mob/user, slot)
	RegisterSignal(user, COMSIG_MOVABLE_MOVED, .proc/mob_move, TRUE)
	current_holder = user

/datum/component/jousting/proc/on_drop(mob/user)
	UnregisterSignal(user, COMSIG_MOVABLE_MOVED)
	current_holder = null
	current_direction = NONE
	current_tile_charge = 0

//This does a "bonus hit" on people you're striking that can knockdown
//Damage is based on % charged up and uses the force of the weapon
/datum/component/jousting/proc/on_attack(mob/living/target, mob/user)
	if(user != current_holder)
		return
	var/current = current_tile_charge
	var/obj/item/I = parent
	var/target_buckled = target.buckled ? TRUE : FALSE			//we don't need the reference of what they're buckled to, just whether they are.
	if((requires_mount && ((requires_mob_riding && !ismob(user.buckled)) || (!user.buckled))) || !current_direction || (current_tile_charge < min_tile_charge))
		return
	if(user.get_active_held_item() != parent) //We need to be wielding our weapon to get this bonus hit
		return
	var/turf/target_turf = get_step(user, current_direction)
	if(target in range(2, target_turf))
		var/knockdown_chance = (target_buckled? mounted_knockdown_chance_per_tile : unmounted_knockdown_chance_per_tile) * current
		var/knockdown_time = (target_buckled? mounted_knockdown_time : unmounted_knockdown_time)
		var/damage = (target_buckled? mounted_damage_boost_per_tile : unmounted_damage_boost_per_tile) * current
		damage = (damage / 100) * I.force //turn it into a percentage boost of our weapon force
		var/sharp = I.is_sharp()
		var/msg
		var/damtype = STAMINA //Default
		playsound(get_turf(user), 'sound/weapons/punch4.ogg', 50, 1)
		if(damage)
			msg += "[user] [sharp? "impales" : "slams into"] [target] [sharp? "on" : "with"] their [parent]"
			if(istype(parent,/obj)) //All these have damtypes
				var/obj/P = parent //typecast it
				damtype = P.damtype
			target.apply_damage(damage, damtype, user.zone_selected, 0)
			if(current_tile_charge)
				current_tile_charge /= 2

		if(target && prob(knockdown_chance))
			if(!damage)
				msg += "[user] hits"
			msg += " and knocks [target] [target_buckled? "off of [target.buckled]" : "down"]"
			if(target_buckled)
				target.buckled.unbuckle_mob(target)
			target.Knockdown(knockdown_time)
			step_away(target,user)
			if(current >= max_tile_charge && prob(knockdown_chance / 2))
				if(target) //Make sure they're still alive
					target.Unconscious(30)
			if(current_tile_charge)
				current_tile_charge /= 2 //Halve it again if we knockdown, so drops to 25% after we land a hit
		if(length(msg))
			var/span
			if(current < 3)
				span = "'notice'"
			else if(current < 5)
				span = "'caution'"
			else if(current < 7)
				span = "'warning'"
			else if(current < 9)
				span = "'danger'"
			else
				span = "'userdanger'"
			user.visible_message("<span class=[span]>[msg]!</span>")

/datum/component/jousting/proc/mob_move(newloc, dir)
	if(!current_holder || (requires_mount && ((requires_mob_riding && !ismob(current_holder.buckled)) || (!current_holder.buckled))))
		return
	if(dir != current_direction)
		current_tile_charge = 0
		current_direction = dir
	if(current_tile_charge < max_tile_charge && (current_holder.get_active_held_item() == parent)) //Make sure we're wielding our weapon and not just wearing it
		current_tile_charge++
		if(current_tile_charge == min_tile_charge) //Should only trigger once
			to_chat(current_holder,"<span class='notice'>You begin building up momentum!</span>")
	if(current_timerid)
		deltimer(current_timerid)
	current_timerid = addtimer(CALLBACK(src, .proc/reset_charge), movement_reset_tolerance, TIMER_STOPPABLE)

/datum/component/jousting/proc/reset_charge()
	current_tile_charge = 0