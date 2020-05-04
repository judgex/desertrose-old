/obj/item/projectile/bullet/reusable
	name = "reusable bullet"
	desc = "How do you even reuse a bullet?"
	var/ammo_type = /obj/item/ammo_casing/caseless
	var/dropped = FALSE
	impact_effect_type = null

/obj/item/projectile/bullet/reusable/on_hit(atom/target, blocked = FALSE)
	. = ..()
	handle_drop()

/obj/item/projectile/bullet/reusable/on_range()
	handle_drop()
	..()

/obj/item/projectile/bullet/reusable/proc/handle_drop()
	if(!dropped)
		var/turf/T = get_turf(src)
		new ammo_type(T)
		dropped = TRUE

/obj/item/projectile/bullet/reusable/arrow
    name = "metal arrow"
    desc = "a simple arrow with a metal head."
    damage = 40
    armour_penetration = 5
    icon_state = "arrow"
    ammo_type = /obj/item/ammo_casing/caseless/arrow
/obj/item/projectile/bullet/reusable/arrow/ap
    name = "sturdy arrow"
    desc = "A reinforced arrow with a metal shaft and heavy duty head."
    damage = 45
    armour_penetration = 35
    icon_state = "arrow"
    ammo_type = /obj/item/ammo_casing/caseless/arrow/ap

/obj/item/projectile/bullet/reusable/arrow/poison
    name = "poison arrow"
    desc = "A simple arrow, tipped in a poisonous paste."
    damage = 35
    armour_penetration = 5
    damage_type = TOX
    icon_state = "arrow"
    ammo_type = /obj/item/ammo_casing/caseless/arrow/poison

/obj/item/projectile/bullet/reusable/arrow/burning
    name = "burn arrow"
    desc = "A sumple arrow slathered in a paste that burns skin on contact."
    damage = 35
    armour_penetration = 5
    damage_type = BURN
    icon_state = "arrow"
    ammo_type = /obj/item/ammo_casing/caseless/arrow/burning
