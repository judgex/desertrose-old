/obj/item/ammo_casing/caseless/magspear
	name = "magnetic spear"
	desc = "A reusable spear that is typically loaded into kinetic spearguns."
	projectile_type = /obj/item/projectile/bullet/reusable/magspear
	caliber = "speargun"
	icon_state = "magspear"
	throwforce = 15 //still deadly when thrown
	throw_speed = 3

/obj/item/ammo_casing/caseless/laser
 	name = "laser casing"
 	desc = "You shouldn't be seeing this."
 	caliber = "laser"
 	icon_state = "s-casing-live"
 	projectile_type = /obj/item/projectile/beam
 	fire_sound = 'sound/weapons/laser.ogg'
 	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy

/obj/item/ammo_casing/caseless/laser/gatling
	projectile_type = /obj/item/projectile/beam/laser/gatling
	variance = 0.8
	click_cooldown_override = 1

/obj/item/ammo_casing/caseless/bb
	desc = "A bb"
	caliber = "bb"
	projectile_type = /obj/item/projectile/bullet/F13/bbBullet
	randomspread = 1
	variance = 1

/obj/item/ammo_casing/caseless/musketball
	desc = "A musket ball"
	caliber = "musketball"
	projectile_type = /obj/item/projectile/bullet/F13/musketball

/obj/item/ammo_casing/caseless/lasermusket
 	name = "Battery"
 	desc = "A single use battery for the lasmusket"
 	caliber = "lasmusket"
 	icon_state = "lasmusketbat"
 	projectile_type = /obj/item/projectile/beam/laser/musket
 	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy

/obj/item/ammo_casing/caseless/plasmacaster
 	name = "Battery"
 	desc = "A single use battery for the plasma caster"
 	caliber = "plasmacaster"
 	icon_state = "lasmusketbat"
 	projectile_type = /obj/item/projectile/plasmacaster
 	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy