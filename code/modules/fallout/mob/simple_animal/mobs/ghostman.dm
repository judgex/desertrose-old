#define REGENERATION_DELAY 60

/mob/living/simple_animal/hostile/ghostman
	name = "ghost man"
	desc = "You see his breathing, but he doesn't looks... alive...."
	icon_state = "ghost_man"
	icon_living = "ghost_man"
	icon_dead = "ghost_man_dead"
	icon_gib = "ghost_man"
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 250
	health = 250
	harm_intent_damage = 8
	melee_damage_lower = 20
	melee_damage_upper = 30
	attacktext = "attacks"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("hostile")
	check_friendly_fire = 1
	status_flags = CANPUSH
	speak_emote = list("mumbles")
	emote_hear = list("mumbles.")
	speak_chance = 2
	aggrosound = list('sound/creatures/ghostman/ghost.ogg',)
	idlesound = list('sound/creatures/ghostman/ghost.ogg',)
	death_sound = 'sound/creatures/ghostman/ghoul_alert.ogg'
	var/regen_cooldown = 0

/mob/living/simple_animal/hostile/ghostman/death()
	. = ..()
	var/mob/living/L
	spawn(50)
		heal_overall_damage(100)
		L.revive(full_heal = 1, admin_revive = 1)

/mob/living/simple_animal/hostile/ghostman/Life()
	. = ..()
	if(regen_cooldown < world.time)
		heal_overall_damage(4)

/mob/living/simple_animal/hostile/ghostman/adjustHealth(amount, updating_health = TRUE, forced = FALSE)
	. = ..()
	if(.)
		regen_cooldown = world.time + REGENERATION_DELAY

/mob/living/simple_animal/hostile/ghostman/Aggro()
	. = ..()
	summon_backup(15)

/mob/living/simple_animal/hostile/ghostman/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent("cloud_tox", 4)

/mob/living/simple_animal/hostile/ghostman/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(50))
		return ..()
	else
		visible_message("<span class='danger'>[src] dodges [Proj]!</span>")
		return 0

#undef REGENERATION_DELAY