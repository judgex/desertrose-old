//Fallout 13 super mutants directory

/mob/living/simple_animal/hostile/supermutant
	name = "super mutant"
	desc = "A huge and ugly mutant humanoid."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_113_s"
	icon_living = "hulk_113_s"
	icon_dead = "hulk_113_s"
	speak_chance = 10
	speak = list("GRRRRRR!", "ARGH!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	speak_emote = list("shouts", "yells")
	move_to_delay = 5
	stat_attack = UNCONSCIOUS
	robust_searching = 1
	environment_smash = ENVIRONMENT_SMASH_WALLS
	emote_taunt_sound = list('sound/f13npc/supermutant/attack1.ogg', 'sound/f13npc/supermutant/attack2.ogg', 'sound/f13npc/supermutant/attack3.ogg')
	emote_taunt = list("yells")
	taunt_chance = 30
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "pushes"
	response_harm = "hits"
	maxHealth = 300
	health = 300
	force_threshold = 15
	faction = list("hostile", "supermutant")
	melee_damage_lower = 45
	melee_damage_upper = 65
	mob_size = MOB_SIZE_LARGE
	anchored = TRUE //unpullable
	attacktext = "smashes"
	attack_sound = "punch"
	idlesound = list('sound/f13npc/supermutant/idle1.ogg', 'sound/f13npc/supermutant/idle2.ogg', 'sound/f13npc/supermutant/idle3.ogg', 'sound/f13npc/supermutant/idle4.ogg' )
	death_sound = list('sound/f13npc/supermutant/death1.ogg', 'sound/f13npc/supermutant/death2.ogg')
	aggrosound = list('sound/f13npc/supermutant/alert1.ogg', 'sound/f13npc/supermutant/alert2.ogg', 'sound/f13npc/supermutant/alert3.ogg', 'sound/f13npc/supermutant/alert4.ogg')

/mob/living/simple_animal/hostile/supermutant/Aggro()
	..()
	summon_backup(15)

/mob/living/simple_animal/hostile/supermutant/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(85) || Proj.damage > 26)
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] is deflected harmlessly by \the [src]'s thick skin!</span>")
		return FALSE

/mob/living/simple_animal/hostile/supermutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()

/mob/living/simple_animal/pet/dog/mutant    //This is a supermutant, totally not a dog, and he is friendly
	name = "Brah-Min"
	desc = "A large, docile supermutant. Adopted by Kebab-town as a sort of watch dog for their brahmin herd."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_brahmin_s"
	icon_dead = "hulk_brahmin_s"
	maxHealth = 300
	health = 300
	speak_chance = 7 //30 //Oh my god he never shuts up.
	anchored = TRUE
	mob_size = MOB_SIZE_LARGE
	speak = list("Hey! These my brahmins!", "And I say, HEY-YEY-AAEYAAA-EYAEYAA! HEY-YEY-AAEYAAA-EYAEYAA! I SAID HEY, what's going on?", "What do you want from my brahmins?!", "Me gonna clean brahmin poop again now!", "I love brahmins, brahmins are good, just poop much!", "Do not speak to my brahmins ever again, you hear?!", "Bad raiders come to steal my brahmins - I crush with shovel!", "Do not come to my brahmins! Do not touch my brahmins! Do not look at my brahmins!", "I'm watching you, and my brahmins watch too!", "Brahmins say moo, and I'm saying - hey, get your ugly face out of my way!", "I... I remember, before the fire... THERE WERE NO BRAHMINS!", "No! No wind brahmin here! Wind brahmin lie!")
	speak_emote = list("shouts", "yells")
	emote_hear = list("yawns", "mumbles","sighs")
	emote_see = list("raises his shovel", "shovels some dirt away", "waves his shovel above his head angrily")
	response_help  = "touches"
	response_disarm = "pushes"
	response_harm   = "punches"
//	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/bearsteak = 3)

/mob/living/simple_animal/pet/dog/mutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	if(!gibbed)
		visible_message("<span class='danger'>\the [src] shouts something incoherent about brahmins for the last time and stops moving...</span>")
	..()

/mob/living/simple_animal/hostile/supermutant/rangedmutant
	desc = "A huge and ugly mutant humanoid.  This one is armed with a poorly maintained hunting rifle."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_ranged_s"
	icon_living = "hulk_ranged_s"
	icon_dead = "hulk_ranged_s"
	ranged = 1
	maxHealth = 400
	health = 400
	retreat_distance = 4
	minimum_distance = 6
	projectiletype = /obj/item/projectile/bullet/F13/c308mmBullet
	projectilesound = 'sound/f13weapons/hunting_rifle.ogg'
	loot = list(/obj/item/ammo_box/a308)

/mob/living/simple_animal/hostile/supermutant/legendary
	name = "legendary super mutant"
	desc = "A huge and ugly mutant humanoid.He has a faint yellow glow to him, scars adorn his body. This super mutant is a grizzled vetern of combat. Look out!"
	color = "#FFFF00"
	icon_state = "hulk_113_s"
	icon_living = "hulk_113_s"
	icon_dead = "hulk_113_s"
	melee_damage_lower = 55
	melee_damage_upper = 70
	maxHealth = 950
	health = 950
	mob_size = 5

/mob/living/simple_animal/hostile/supermutant/legendary/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()

/mob/living/simple_animal/hostile/supermutant/rangedmutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()