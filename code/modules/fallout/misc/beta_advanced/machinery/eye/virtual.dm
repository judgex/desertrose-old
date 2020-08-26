/mob/living/simple_animal/hostile/eyebot/virtual
	var/mob/living/carbon/human/pilot
	speed = 2
	ranged_cooldown_time = 25

/mob/living/simple_animal/hostile/eyebot/virtual/New()
	..()
	eyebots += src
	src.verbs += /mob/living/simple_animal/hostile/eyebot/virtual/proc/leave
	AddSpell(new /obj/effect/proc_holder/spell/targeted/night_vision(null))

/mob/living/simple_animal/hostile/eyebot/virtual/Del()
	..()
	eyebots -= src

/mob/living/simple_animal/hostile/eyebot/virtual/proc/enter(var/mob/user)
	if(ckey)
		to_chat(user, "Робоглаз уже управляется кем-то!")
		return

	pilot = user
	ckey = user.ckey

/mob/living/simple_animal/hostile/eyebot/virtual/proc/leave()
	set name = "Stop Control"
	set category = "EYEBOT"
	pilot.ckey = ckey

/mob/living/simple_animal/hostile/eyebot/virtual/death(gibbed)
	if(ckey)
		leave()

	eyebots -= src

	..(gibbed)