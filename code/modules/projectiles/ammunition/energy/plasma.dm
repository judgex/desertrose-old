/obj/item/ammo_casing/energy/plasma/adv
	projectile_type = /obj/item/projectile/plasma/weak/adv
	delay = 10
	e_cost = 10

/obj/item/ammo_casing/energy/plasma/weak
	projectile_type = /obj/item/projectile/plasma/weak
	select_name = "plasma burst"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	delay = 15
	e_cost = 25

/*
---Fallout 13---
*/

/obj/item/ammo_casing/energy/plasma
	projectile_type = /obj/item/projectile/plasma
	select_name = "plasma burst"
	icon_state = "neurotoxin"
	fire_sound = 'sound/f13weapons/plasma_rifle.ogg'
	delay = 5
	e_cost = 75

/obj/item/ammo_casing/energy/plasma/scatter
	projectile_type = /obj/item/projectile/plasma/scatter
	pellets = 3
	variance = 14
	select_name = "scatter"
	e_cost = 150

/obj/item/ammo_casing/energy/plasma/pistol
	projectile_type = /obj/item/projectile/plasma/pistol
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	e_cost = 75

/obj/item/ammo_casing/energy/plasma/pistol/glock
	projectile_type = /obj/item/projectile/plasma/pistol/glock
	e_cost = 18.75

/obj/item/ammo_casing/energy/plasma/pistol/glock/extended
	e_cost = 9.375

/obj/item/ammo_casing/energy/plasma/alien
	projectile_type = /obj/item/projectile/plasma/alien
	select_name = "alien projectile"
	icon_state = "ion"
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	e_cost = 1000 //four shots and you're out. use them wisely.