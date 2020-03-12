/mob/living/simple_animal/hostile/ghoul
	name = "feral ghoul"
	desc = "A ghoul that has lost it's mind and become aggressive."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "feralghoul"
	icon_living = "feralghoul"
	icon_dead = "feralghoul_dead"
	mob_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	robust_searching = 1
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("screeches")
	a_intent = INTENT_HARM
	maxHealth = 40
	health = 40
	speed = 2
	harm_intent_damage = 15
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = "claws"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	robust_searching = 0
	gold_core_spawnable = HOSTILE_SPAWN
	faction = list("ghoul")
	decompose = TRUE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul = 2,
							/obj/item/stack/sheet/animalhide/human = 1,
							/obj/item/stack/sheet/bone = 1)
//	loot = list(/obj/effect/gibspawner/human, /obj/item/stack/f13Cash/random/bottle_cap/low)   // not quite ready for cap drops on ghouls

/mob/living/simple_animal/hostile/ghoul/reaver
	name = "feral ghoul reaver"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "ghoulreaver"
	icon_living = "ghoulreaver"
	icon_dead = "ghoulreaver_dead"
	speed = 2
	a_intent = INTENT_HARM
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/ghoul/coldferal
	name = "cold ghoul feral"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "cold_feral"
	icon_living = "cold_feral"
	icon_dead = "cold_feral_dead"
	speed = 1.5
	a_intent = INTENT_HARM
	maxHealth = 200
	health = 200
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/ghoul/frozenreaver
	name = "frozen ghoul reaver"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "frozen_reaver"
	icon_living = "frozen_reaver"
	icon_dead = "frozen_reaver_dead"
	speed = 1.5
	a_intent = INTENT_HARM
	maxHealth = 200
	health = 200
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/ghoul/glowing
	name = "glowing feral ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of radiation, causing them to glow in the dark and radiate constantly.."
	icon_state = "glowinghoul"
	icon_living = "glowinghoul"
	icon_dead = "glowinghoul_dead"
	maxHealth = 80
	health = 80
	speed = 2
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/glowing/Initialize()
	. = ..()
	set_light(2)

/mob/living/simple_animal/hostile/ghoul/glowing/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/glowing/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)

/mob/living/simple_animal/hostile/ghoul/frozen
	name = "frozen feral ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of cold and Radiates Cold Air.."
	icon_state = "frozen_feral"
	icon_living = "frozen feral"
	icon_dead = "frozen_feral_dead"
	maxHealth = 80
	health = 80
	speed = 2
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/frozen/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/ghoul/frozen/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/frozen/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)


/mob/living/simple_animal/hostile/ghoul/hot
	name = "hot glowing ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of cold and Radiates Cold Air.."
	icon_state = "hot_glowing_one"
	icon_living = "hot_glowing_one"
	icon_dead = "hot_glowing_one"
	maxHealth = 80
	health = 80
	speed = 2
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/hot/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/ghoul/hot/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/hot/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)