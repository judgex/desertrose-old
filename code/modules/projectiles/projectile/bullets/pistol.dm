//.22 LR
/obj/item/projectile/bullet/c22
	damage = 15
	armour_penetration = 0

//.45 ACP
/obj/item/projectile/bullet/c45
	damage = 0
	armour_penetration = 0
	stamina = 25 //To simulate stopping power.

/obj/item/projectile/bullet/c45/jhp
	damage = 14
	armour_penetration = -28

//9x19mm
/obj/item/projectile/bullet/c9mm
	damage = 0
	armour_penetration = 0

/obj/item/projectile/bullet/c9mm/ap
	damage = -8
	armour_penetration = 16

/obj/item/projectile/bullet/c9mm/jhp
	damage = 16
	armour_penetration = -32

//10mm
/obj/item/projectile/bullet/c10mm
	damage = 0
	armour_penetration = 0
	stamina = 25 //To simulate stopping power.

/obj/item/projectile/bullet/c10mm/ap
	damage = -10
	armour_penetration = 20

/obj/item/projectile/bullet/c10mm/hp
	damage = 30
	armour_penetration = -15

// Needler
/obj/item/projectile/bullet/needle
	name = "needle"
	icon_state = "cbbolt"
	damage = 30
	armour_penetration = 30

/obj/item/projectile/bullet/needle/ap
	name = "armour piercing needle"
	damage = 45
	armour_penetration = 60

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