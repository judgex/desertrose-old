//.22 LR
/obj/item/projectile/bullet/c22
	damage = 15
	armour_penetration = 0

//.45 ACP
/obj/item/projectile/bullet/c45
	damage = 35
	armour_penetration = 0

/obj/item/projectile/bullet/c45/jhp
	damage = 45 //40
	armour_penetration = -22 //20

//5mm minigun
/obj/item/projectile/bullet/c5mm
	damage = 19 //30
	armour_penetration = 30

//9x19mm
/obj/item/projectile/bullet/c9mm
	damage = 29 //30
	armour_penetration = -5

/obj/item/projectile/bullet/c9mm/ap
	damage = 23 //25
	armour_penetration = 27 //20

/obj/item/projectile/bullet/c9mm/jhp
	damage = 40 //35
	armour_penetration = -30 //-20

//10mm
/obj/item/projectile/bullet/c10mm
	damage = 36 //35
	armour_penetration = -5 //0
	penetrating = 29

/obj/item/projectile/bullet/c10mm/ap
	damage = 25 //30
	armour_penetration = 30 //20

/obj/item/projectile/bullet/c10mm/hp
	damage = 47 //40
	armour_penetration = -30 //-20

// Needler
/obj/item/projectile/bullet/needle
    name = "needle"
    icon_state = "cbbolt"
    damage = 40
    armour_penetration = 15

/obj/item/projectile/bullet/needle/ap
    name = "armour piercing needle"
    damage = 30
    armour_penetration = 35

/obj/item/projectile/bullet/needle/ultra
	name = "ultracite needle"
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "ultraneedle"
	damage = 50
	armour_penetration = 25

/obj/item/projectile/bullet/needle/heavy
	name = "heavy ultracite needle"
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "ultraneedle"//todo me fix this firing guns
	damage = 40
	armour_penetration = 40
	embedding = list("pain_mult" = 6, "embed_chance" = 100, "fall_chance" = 0, "embed_chance_turf_mod" = 15)
	irradiate = 200

/*
/obj/item/ammo_casing/c9mmr
	name = "9mm bullet casing"
	desc = "A 9mm bullet casing."
	caliber = "9mm"
	projectile_type = /obj/item/projectile/bullet/c9mmr

/obj/item/projectile/bullet/c9mmr
	damage = 20
	armour_penetration = 20
*/