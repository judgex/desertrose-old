/obj/item/clothing/suit/hooded/wintercoat_a
	name = "armoured parka"
	desc = "An incredibly heavy jacket made from animal furs with aditional metal plating."
	icon_state = "coatarmour"
	item_state = "armouredparka"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 30, "bullet" = 25, "laser" = 15,"energy" = 15, "bomb" = 25, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed = list(/obj/item/flashlight, /obj/item/guns, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype=/obj/item/clothing/head/hooded/winterhood

/obj/item/clothing/head/hooded/winterhood_a
	name = "winter hood"
	desc = "A heavy hood attached to an incredibly heavy winter jacket, adorned with metal plating."
	icon_state = "winterhood_a"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 0, "bullet" = 25, "laser" = 16,"energy" = 20, "bomb" = 20, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/suit/hooded/armourmedical
	name = "armoured parka"
	desc = "An incredibly heavy jacket made from animal furs with aditional metal plating."
	icon_state = "armourmedical"
	item_state = "medicalcoatarmour"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 30, "bullet" = 25, "laser" = 15,"energy" = 15, "bomb" = 25, "bio" = 20, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed = list(/obj/item/flashlight, /obj/item/guns, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter)
	hoodtype=/obj/item/clothing/head/hooded/winterhood

/obj/item/clothing/head/hooded/winterhood_medical_a
	name = "winter hood"
	desc = "A heavy hood attached to an incredibly heavy winter jacket, adorned with metal plating."
	icon_state = "winterhood_medical_a"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 0, "bullet" = 15, "laser" = 16,"energy" = 10, "bomb" = 20, "bio" = 10, "rad" = 0, "fire" = 10, "acid" = 10)
	flags_inv = HIDEHAIR|HIDEEARS
