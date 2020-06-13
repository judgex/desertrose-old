/obj/item/projectile/ion
	name = "ion bolt"
	icon_state = "ion"
	damage = 28
	damage_type = BURN
	flag = "energy"
	armour_penetration = 75
	impact_effect_type = /obj/effect/temp_visual/impact_effect/ion

/obj/item/projectile/ion/on_hit(atom/target, blocked = FALSE)
	..()
	empulse(target, 1, 0)
	return TRUE

/obj/item/projectile/ion/weak
	damage = 25
	armour_penetration = 55

/obj/item/projectile/ion/weak/on_hit(atom/target, blocked = FALSE)
	..()
	empulse(target, 0, 1)
	return TRUE