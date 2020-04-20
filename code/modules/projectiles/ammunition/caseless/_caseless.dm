/obj/item/ammo_casing/caseless
	desc = "A caseless bullet casing. You get a headache from looking at this."
	firing_effect_type = null
	heavy_metal = FALSE

/obj/item/ammo_casing/caseless/fire_casing(atom/target, mob/living/user, params, distro, quiet, zone_override, spread, damage_mod, penetration_mod)
	if (..()) //successfully firing
		moveToNullspace()
		return 1
	else
		return 0

/obj/item/ammo_casing/caseless/update_icon()
	..()
	icon_state = "[initial(icon_state)]"

/obj/item/ammo_casing/caseless/needle
	name = "A needler round."
	desc = "A dart for use in needler pistols."
	caliber = "needle"
	projectile_type = /obj/item/projectile/bullet/needle

/obj/item/ammo_casing/caseless/needle/ap
	name = "A needler round."
	desc = "A dart for use in needler pistols."
	caliber = "needle"
	projectile_type = /obj/item/projectile/bullet/needle/ap

/obj/item/ammo_casing/caseless/arrow
	name = "metal arrow"
	desc = "A simple arrow with a metal head."
	caliber = "arrow"
	projectile_type = /obj/item/projectile/bullet/reusable/arrow
	icon_state = "arrow"
	w_class = 3