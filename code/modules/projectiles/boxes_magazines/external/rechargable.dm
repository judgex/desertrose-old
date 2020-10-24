/obj/item/ammo_box/magazine/recharge
 	name = "microfusion cell"
 	desc = "A rechargeable, detachable battery that serves as a magazine for laser rifles."
 	icon_state = "oldrifle-20"
 	ammo_type = /obj/item/ammo_casing/caseless/laser
 	caliber = "laser"
 	max_ammo = 20

/obj/item/ammo_box/magazine/recharge/update_icon()
	desc = "[initial(desc)] It has [stored_ammo.len] shot\s left."
	icon_state = "oldrifle-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/recharge/attack_self() //No popping out the "bullets"
 	return

/obj/item/ammo_box/magazine/ultrarecharge
 	name = "ultracite cell"
 	desc = "A shard of ultracite acting as a potent energy source. This small chunk alone could keep the lights on for a year.."
 	icon_state = "oldrifle-20"
 	ammo_type = /obj/item/ammo_casing/caseless/ultralaser
 	caliber = "ultralaser"
 	max_ammo = 30
