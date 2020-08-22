// .50 (Sniper)

/obj/item/projectile/bullet/p50
	name =".50 bullet"
	speed = 0.4
	damage = 55
	knockdown = 100
	dismemberment = 30
	armour_penetration = 25
	var/breakthings = TRUE
	penetrating = 75

/obj/item/projectile/bullet/p50/on_hit(atom/target, blocked = 0)
	if(isobj(target) && (blocked != 100) && breakthings)
		var/obj/O = target
		O.take_damage(80, BRUTE, "bullet", FALSE)
	return ..()

/obj/item/projectile/bullet/p50/soporific
	name =".50 soporific bullet"
	armour_penetration = 0
	damage = 0
	dismemberment = 0
	knockdown = 0
	breakthings = FALSE

/obj/item/projectile/bullet/p50/soporific/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(400)
	return ..()

/obj/item/projectile/bullet/p50/penetrator
	name =".50 penetrator bullet"
	icon_state = "gauss"
	name = "penetrator round"
	damage = 60
	forcedodge = TRUE
	dismemberment = 0 //It goes through you cleanly.
	knockdown = 0
	breakthings = FALSE

/obj/item/projectile/bullet/a50MG
	damage = 60
	armour_penetration = 60

/obj/item/projectile/bullet/a50MG/incendiary
	damage = 40
	armour_penetration = 20
	var/fire_stacks = 4

/obj/item/projectile/bullet/a50MG/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()

/*
	/obj/item/projectile/bullet/a50MG/AP
	damage = 35
	armour_penetration = 65 will punch through anything short of Enclave power armor*/

/obj/item/projectile/bullet/a50MG/explosive
	damage = 30
	armour_penetration = 0

/obj/item/projectile/bullet/a50MG/explosive/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, 0, 1, 1, 1)