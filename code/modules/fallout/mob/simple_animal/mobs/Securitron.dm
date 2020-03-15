//Fallout 13 securitron directory

/mob/living/simple_animal/hostile/securitron
	name = "securitron"
	desc = "A pre-War type of securitron.<br>Extremely dangerous machine."
	icon = 'icons/fallout/mobs/robots.dmi'
	icon_state = "Securitron"
	icon_living = "Securitron"
	icon_dead = "Securitron_d"
	icon_gib = "Securitron_d"
	speak_chance = 1
	turns_per_move = 5
	environment_smash = 0
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	move_to_delay = 5
	stat_attack = 1
	robust_searching = 1
	maxHealth = 300
	health = 300
	healable = 0
	faction = list("neutral", "city", "ncr")
	emote_hear = list("подмигнул.")
	speak = list("Уот так уот!","Представьте! Целых 510 лет! Мы столько не живем.", "Руки вверх, вы арестованы! Ха-ха, шутка.")
	death_sound = 'sound/f13npc/robot_death.ogg'
	harm_intent_damage = 5
	melee_damage_lower = 5
	melee_damage_upper = 10
	minimum_distance = 4
	retreat_distance = 7
	attacktext = "punches"
	attack_sound = "punch"
	a_intent = "harm"
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	status_flags = CANPUSH
	vision_range = 12
	aggro_vision_range = 15
	ranged = 1
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'
