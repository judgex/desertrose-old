/obj/item/projectile/beam
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE
	damage = 34
	light_range = 2
	damage_type = BURN
	hitsound = 'sound/weapons/sear.ogg'
	hitsound_wall = 'sound/weapons/effects/searwall.ogg'
	flag = "laser"
	eyeblur = 0
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_color = LIGHT_COLOR_RED
	ricochets_max = 50	//Honk!
	ricochet_chance = 80
	is_reflectable = TRUE

/obj/item/projectile/beam/laser
	tracer_type = /obj/effect/projectile/tracer/laser
	muzzle_type = /obj/effect/projectile/muzzle/laser
	impact_type = /obj/effect/projectile/impact/laser

/obj/item/projectile/beam/laser/heavylaser
	name = "heavy laser"
	icon_state = "heavylaser"
	damage = 40
	tracer_type = /obj/effect/projectile/tracer/heavy_laser
	muzzle_type = /obj/effect/projectile/muzzle/heavy_laser
	impact_type = /obj/effect/projectile/impact/heavy_laser

/obj/item/projectile/beam/laser/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.IgniteMob()
	else if(isturf(target))
		impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser/wall

/obj/item/projectile/beam/weak
	damage = 15
	armour_penetration = 50

/obj/item/projectile/beam/practice
	name = "practice laser"
	damage = 0
	nodamage = 1

/obj/item/projectile/beam/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 5

/obj/item/projectile/beam/xray
	name = "xray beam"
	icon_state = "xray"
	damage = 15
	irradiate = 30
	range = 15
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE | PASSCLOSEDTURF

	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN
	tracer_type = /obj/effect/projectile/tracer/xray
	muzzle_type = /obj/effect/projectile/muzzle/xray
	impact_type = /obj/effect/projectile/impact/xray

/obj/item/projectile/beam/gamma
	name = "gamma beam"
	icon_state = "xray"
	damage = 5
	damage_type = "clone"
	irradiate = 200
	range = 15
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE | PASSCLOSEDTURF

	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN
	tracer_type = /obj/effect/projectile/tracer/xray
	muzzle_type = /obj/effect/projectile/muzzle/xray
	impact_type = /obj/effect/projectile/impact/xray

/obj/item/projectile/beam/disabler
	name = "disabler beam"
	icon_state = "omnilaser"
	damage = 36
	damage_type = STAMINA
	flag = "energy"
	hitsound = 'sound/weapons/tap.ogg'
	eyeblur = 0
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	tracer_type = /obj/effect/projectile/tracer/disabler
	muzzle_type = /obj/effect/projectile/muzzle/disabler
	impact_type = /obj/effect/projectile/impact/disabler

/obj/item/projectile/beam/pulse
	name = "pulse"
	icon_state = "u_laser"
	damage = 50
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	tracer_type = /obj/effect/projectile/tracer/pulse
	muzzle_type = /obj/effect/projectile/muzzle/pulse
	impact_type = /obj/effect/projectile/impact/pulse

/obj/item/projectile/beam/pulse/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if (!QDELETED(target) && (isturf(target) || istype(target, /obj/structure/)))
		target.ex_act(EXPLODE_HEAVY)

/obj/item/projectile/beam/pulse/shotgun
	damage = 40

/obj/item/projectile/beam/pulse/heavy
	name = "heavy pulse laser"
	icon_state = "pulse1_bl"
	var/life = 20

/obj/item/projectile/beam/pulse/heavy/on_hit(atom/target, blocked = FALSE)
	life -= 10
	if(life > 0)
		. = -1
	..()

/obj/item/projectile/beam/emitter
	name = "radiation beam"
	icon_state = "emitter"
	damage = 15
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN

/obj/item/projectile/beam/emitter/siege
	name = "siege beam"
	icon_state = "emitter"
	damage = 100
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN

/obj/item/projectile/beam/emitter/siege/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if (!QDELETED(target) && (isturf(target) || istype(target, /obj/structure/)))
		target.ex_act(EXPLODE_HEAVY)

/obj/item/projectile/beam/emitter/singularity_pull()
	return //don't want the emitters to miss

/obj/item/projectile/beam/lasertag
	name = "laser tag beam"
	icon_state = "omnilaser"
	hitsound = null
	damage = 0
	damage_type = STAMINA
	flag = "laser"
	var/suit_types = list(/obj/item/clothing/suit/redtag, /obj/item/clothing/suit/bluetag)
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/beam/lasertag/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		if(istype(M.wear_suit))
			if(M.wear_suit.type in suit_types)
				M.adjustStaminaLoss(34)

/obj/item/projectile/beam/lasertag/redtag
	icon_state = "laser"
	suit_types = list(/obj/item/clothing/suit/bluetag)
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_color = LIGHT_COLOR_RED
	tracer_type = /obj/effect/projectile/tracer/laser
	muzzle_type = /obj/effect/projectile/muzzle/laser
	impact_type = /obj/effect/projectile/impact/laser

/obj/item/projectile/beam/lasertag/redtag/hitscan
	hitscan = TRUE

/obj/item/projectile/beam/lasertag/bluetag
	icon_state = "bluelaser"
	suit_types = list(/obj/item/clothing/suit/redtag)
	tracer_type = /obj/effect/projectile/tracer/laser/blue
	muzzle_type = /obj/effect/projectile/muzzle/laser/blue
	impact_type = /obj/effect/projectile/impact/laser/blue

/obj/item/projectile/beam/lasertag/bluetag/hitscan
	hitscan = TRUE

/obj/item/projectile/beam/instakill
	name = "instagib laser"
	icon_state = "purple_laser"
	damage = 200
	damage_type = BURN
	impact_effect_type = /obj/effect/temp_visual/impact_effect/purple_laser
	light_color = LIGHT_COLOR_PURPLE

/obj/item/projectile/beam/instakill/blue
	icon_state = "blue_laser"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/beam/instakill/red
	icon_state = "red_laser"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_color = LIGHT_COLOR_RED

/obj/item/projectile/beam/instakill/on_hit(atom/target)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.visible_message("<span class='danger'>[M] explodes into a shower of gibs!</span>")
		M.gib()


//musket
/obj/item/projectile/beam/laser/musket //musket
	name = "laser beam"
	damage = 40
	armour_penetration = 25

//plasma caster
/obj/item/projectile/plasmacaster
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 50
	armour_penetration = 30
	flag = "laser"
	eyeblur = 0
	is_reflectable = TRUE

/obj/item/projectile/beam/laser/lasgun //AER9
	name = "laser beam"
	damage = 33
	armour_penetration = 20

/obj/item/projectile/beam/laser/pistol //AEP7
	name = "laser beam"
	damage = 28
	armour_penetration = 15

/obj/item/projectile/beam/laser/ultra_pistol
	name = "laser beam"
	damage = 40
	armour_penetration = 15
	irradiate = 200

/obj/item/projectile/beam/laser/ultra_rifle
	name = "laser beam"
	damage = 45
	armour_penetration = 20
	irradiate = 200

/obj/item/projectile/beam/laser/gatling //Gatling Laser Projectile
	name = "rapid-fire laser beam"
	damage = 12
	armour_penetration = 40

/obj/item/projectile/beam/laser/pistol/wattz //Wattz pistol
	damage = 24

/obj/item/projectile/beam/laser/pistol/wattz/magneto //upgraded Wattz
	name = "penetrating laser beam"
	damage = 25
	armour_penetration = 15

/obj/item/projectile/beam/laser/solar //Solar Scorcher
	name = "solar scorcher beam"
	damage = 28
	armour_penetration = 20

/obj/item/projectile/beam/laser/tribeam //Tribeam laser, fires 3 shots, will melt you
	name = "tribeam laser"
	damage = 21
	armour_penetration = 10

/obj/item/projectile/plasma //Plasma rifle
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 42
	armour_penetration = 12
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = TRUE

/obj/item/projectile/plasmacarbine //Plasma carbine
	name = "plasma bolt"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 45
	armour_penetration = 15
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = TRUE

/obj/item/projectile/plasma/repeater //Plasma repeater
	name = "plasma stream"
	icon_state = "plasma_clot"
	damage_type = BURN
	damage = 20
	armour_penetration = 10
	flag = "laser" //checks vs. energy protection
	eyeblur = 0
	is_reflectable = FALSE

/obj/item/projectile/plasma/pistol //Plasma pistol
	damage = 45
	armour_penetration = 3

/obj/item/projectile/plasma/pistol/glock //Glock (streamlined plasma pistol)
	damage = 30
	armour_penetration = 15

/obj/item/projectile/plasma/scatter //Multiplas, fires 3 shots, will melt you
	damage = 31
	armour_penetration = 10

/obj/item/projectile/beam/laser/rcw //RCW
	name = "rapidfire beam"
	icon_state = "xray"
	damage = 24
	armour_penetration = 15
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN

/obj/item/projectile/plasma/alien
	name = "alien projectile"
	icon_state = "ion"
	damage = 90 //horrifyingly powerful, but very limited ammo
	armour_penetration = 50

/obj/item/projectile/beam/laser/laer //Elder's/Unique LAER
	name = "advanced laser beam"
	icon_state = "u_laser"
	damage = 45
	armour_penetration = 50
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/beam/laser/aer14 //AER14
	name = "laser beam"
	damage = 33
	armour_penetration = 34
	icon_state = "omnilaser"
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
