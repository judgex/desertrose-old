//Speedloaders
//.357 Magnum, .38 Special
/obj/item/ammo_box/a357
	name = "speed strip (.357)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "357"
	caliber = "357"
	ammo_type = /obj/item/ammo_casing/a357
	max_ammo = 6
	multiple_sprites = 1
	materials = list(MAT_METAL = 4000)

/obj/item/ammo_box/a357/empty
	start_empty = 1

/obj/item/ammo_box/c38
	name = "speed loader (.38)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "38"
	ammo_type = /obj/item/ammo_casing/a357/c38
	max_ammo = 6
	multiple_sprites = 1
	materials = list(MAT_METAL = 2000)

/obj/item/ammo_box/c38/empty
	start_empty = 1

/obj/item/ammo_box/tube/a357
	name = "speed loader tube (.357)"
	desc = "Designed to quickly reload repeaters."
	icon_state = "44tube"
	caliber = "357"
	ammo_type = /obj/item/ammo_casing/a357
	max_ammo = 7
	multiple_sprites = 1
	materials = list(MAT_METAL = 7000)

/obj/item/ammo_box/tube/a357/empty
	start_empty = 1
//10mm
/obj/item/ammo_box/l10mm
	name = "speed loader (10mm)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 6
	multiple_sprites = 1
	materials = list(MAT_METAL = 4000)

/obj/item/ammo_box/l10mm/empty
	start_empty = 1

//.44 Magnum
/obj/item/ammo_box/m44
	name = "speed loader (.44)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 6
	caliber = "44"
	multiple_sprites = 1
	materials = list(MAT_METAL = 4000)
/*
/obj/item/ammo_box/m44/heap
	name = "speed loader (.44) (+Heap!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/heap

/obj/item/ammo_box/m44/armourpiercing
	name = "speed loader (.44) (+AP!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/armourpiercing

/obj/item/ammo_box/m44/toxic
	name = "speed loader (.44) (+TOXIC!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/toxic

/obj/item/ammo_box/m44/fire
	name = "speed loader (.44) (+FIRE!)"
	ammo_type = /obj/item/ammo_casing/F13/m44/fire

*/

/obj/item/ammo_box/m44/empty
	start_empty = 1

/obj/item/ammo_box/tube/m44
	name = "speed loader tube (.44)"
	desc = "Designed to quickly reload repeaters."
	icon_state = "44tube"
	caliber = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 8
	multiple_sprites = 1
	materials = list(MAT_METAL = 6000)

/obj/item/ammo_box/tube/m44/empty
	start_empty = 1

//.45-70 Gov't
/obj/item/ammo_box/c4570
	name = "speed loader (.45-70)"
	desc = "Designed to quickly reload revolvers."
	icon_state = "4570"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 6
	multiple_sprites = 1
	materials = list(MAT_METAL = 8000)

/obj/item/ammo_box/c4570/empty
	start_empty = 1

/obj/item/ammo_box/tube/c4570
	name = "speed loader tube (.45-70)"
	desc = "Designed to quickly reload repeaters."
	icon_state = "44tube"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 8
	multiple_sprites = 1
	materials = list(MAT_METAL = 12000)

/obj/item/ammo_box/tube/c4570/empty
	start_empty = 1

//Boxes
//.357 Magnum, .38 Special
/obj/item/ammo_box/a357box
	name = "ammo box (.357 Magnum FMJ)"
	icon_state = "357box"
	ammo_type = /obj/item/ammo_casing/a357
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a357box/jhp
	name = "ammo box (.357 Magnum JHP)"
	ammo_type = /obj/item/ammo_casing/a357/jhp

/obj/item/ammo_box/a357box/swc
	name = "ammo box (.357 Magnum SWC)"
	ammo_type = /obj/item/ammo_casing/a357/swc

/obj/item/ammo_box/box38
	name = "ammo box (.38 Spl)"
	icon_state = "38box"
	ammo_type = /obj/item/ammo_casing/a357/c38
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

//9mm
/obj/item/ammo_box/c9mm
	name = "ammo box (9mm FMJ)"
	icon_state = "9mmbox"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/c9mm/ap
	name = "ammo box (9mm AP)"
	ammo_type = /obj/item/ammo_casing/c9mm/ap

/obj/item/ammo_box/c9mm/jhp
	name = "ammo box (9mm JHP)"
	ammo_type = /obj/item/ammo_casing/c9mm/jhp

//10mm
/obj/item/ammo_box/c10mm
	name = "ammo box (10mm FMJ)"
	icon_state = "10mmbox"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 30
	materials = list(MAT_METAL = 10000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/c10mm/jhp
	name = "ammo box (10mm JHP)"
	ammo_type = /obj/item/ammo_casing/c10mm/hp

/obj/item/ammo_box/c10mm/ap
	name = "ammo box (10mm AP)"
	ammo_type = /obj/item/ammo_casing/c10mm/ap

//5.56x45
/obj/item/ammo_box/a556
	name = "ammo box (5.56 FMJ)"
	icon_state = "556box"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 40
	materials = list(MAT_METAL = 20000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a556/jhp
	name = "ammo box (5.56 JHP)"
	ammo_type = /obj/item/ammo_casing/a556/jhp

/obj/item/ammo_box/a556/ap
	name = "ammo box (5.56 AP)"
	ammo_type = /obj/item/ammo_casing/a556/ap

/obj/item/ammo_box/a556/sport
	name = "ammo box (5.56 match)"
	ammo_type = /obj/item/ammo_casing/a556/sport

//.45 ACP
/obj/item/ammo_box/c45
	name = "ammo box (.45 FMJ)"
	icon_state = "45box"
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 30
	materials = list(MAT_METAL = 10000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/c45/jhp
	name = "ammo box (.45 JHP)"
	ammo_type = /obj/item/ammo_casing/c45/jhp

// bb gun
/obj/item/ammo_box/bbs
	name = "ammo box (BBs)"
	icon_state = "BBbox"
	ammo_type = /obj/item/ammo_casing/caseless/bb
	max_ammo = 100
	materials = list(MAT_METAL = 5000)
	w_class = WEIGHT_CLASS_NORMAL

//lasmusket
/obj/item/ammo_box/lasmusket
	name = "Battery Box (Musket)"
	icon_state = "Batbox"
	ammo_type = /obj/item/ammo_casing/caseless/lasermusket
	max_ammo = 18
	materials = list(MAT_METAL = 1000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/plasmacaster //TODO
	name = "Battery Box (Plasma)"
	icon_state = "Batbox"
	ammo_type = /obj/item/ammo_casing/caseless/plasmacaster
	max_ammo = 5
	materials = list(MAT_METAL = 1000)
	w_class = WEIGHT_CLASS_NORMAL

//.44 Magnum
/obj/item/ammo_box/m44box
	name = "ammo box (.44 Magnum FMJ)"
	icon_state = "44box"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/m44box/jhp
	name = "ammo box (.44 Magnum JHP)"
	ammo_type = /obj/item/ammo_casing/m44/jhp

/obj/item/ammo_box/m44box/swc
	name = "ammo box (.44 Magnum SWC)"
	ammo_type = /obj/item/ammo_casing/m44/swc

//7.62x51, .308 Winchester
/obj/item/ammo_box/a308box
	name = "ammo box (.308)"
	icon_state = "308box"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a762box
	name = "ammo box (7.62x51 FMJ)"
	icon_state = "762box"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a762box/jhp
	name = "ammo box (7.62x51 JHP)"
	ammo_type = /obj/item/ammo_casing/a762/jhp

/obj/item/ammo_box/a762box/ap
	name = "ammo box (7.62x51 AP)"
	ammo_type = /obj/item/ammo_casing/a762/ap

//.45-70 Gov't
/obj/item/ammo_box/c4570box
	name = "ammo box (.45-70 FMJ)"
	icon_state = "4570box"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/c4570box/jhp
	name = "ammo box (.45-70 JHP)"
	ammo_type = /obj/item/ammo_casing/c4570/jhp

/obj/item/ammo_box/c4570box/swc
	name = "ammo box (.45-70 SWC)"
	ammo_type = /obj/item/ammo_casing/c4570/swc

//.50 MG and .50 AE
/obj/item/ammo_box/a50MGbox
	name = "ammo box (.50 MG)"
	icon_state = "50box"
	ammo_type = /obj/item/ammo_casing/a50MG
	max_ammo = 25
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a50AEbox
	name = "ammo box (.50 AE)"
	icon_state = "50aebox"
	ammo_type = /obj/item/ammo_casing/a50AE
	max_ammo = 30
	materials = list(MAT_METAL = 15000)
	w_class = WEIGHT_CLASS_NORMAL

//40mm grenades
/obj/item/ammo_box/a40mm
	name = "ammo box (40mm grenades)"
	icon_state = "40mm"
	ammo_type = /obj/item/ammo_casing/a40mm
	max_ammo = 4
	multiple_sprites = 1
	materials = list(MAT_METAL = 20000)

//Needler
/obj/item/ammo_box/needle
	name = "needler stripper clip (needle darts)"
	icon_state = "needler"
	ammo_type = /obj/item/ammo_casing/caseless/needle
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 5000)

/obj/item/ammo_box/needleap
	name = "armour-piercing needler stripper clip (needle darts)"
	icon_state = "apneedler"
	ammo_type = /obj/item/ammo_casing/caseless/needle/ap
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 5000)

/obj/item/ammo_box/needleultra
	name = "ultracite needler stripper clip (needle darts)"
	icon_state = "ultraneedler"
	ammo_type = /obj/item/ammo_casing/caseless/needle/ultra
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 5000)

//Stripper clips

//7.62x51, .308 Winchester
/obj/item/ammo_box/a762
	name = "stripper clip (7.62)"
	desc = "A stripper clip."
	icon_state = "762"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 5000)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/musketbag/
	name = "Bag of Musket Cartridges"
	icon_state = "musketbag"
	ammo_type = /obj/item/ammo_casing/caseless/musketball
	max_ammo = 15
	materials = list(MAT_METAL = 1000)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/a308
	name = "stripper clip (.308)"
	desc = "A stripper clip."
	icon_state = "308"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 7000)
	w_class = WEIGHT_CLASS_SMALL
/*
/obj/item/ammo_box/magazine/m308/heap
	name = "rifle magazine (.308) (+Heap!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/heap

/obj/item/ammo_box/magazine/m308/armourpiercing
	name = "rifle magazine (.308) (+AP!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/armourpiercing

/obj/item/ammo_box/magazine/m308/toxic
	name = "rifle magazine (.308) (+TOXIC!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/toxic

/obj/item/ammo_box/magazine/m308/fire
	name = "rifle magazine (.308) (+FIRE!)"
	ammo_type = /obj/item/ammo_casing/F13/m308/fire
*/

/obj/item/ammo_box/a762/doublestacked
	name = "double stack stripper clip (.308)"
	desc = "A stripper clip."
	icon_state = "762a"
	ammo_type = /obj/item/ammo_casing/a762/sport
	max_ammo = 10
	multiple_sprites = 1
	materials = list(MAT_METAL = 10000)
	w_class = WEIGHT_CLASS_SMALL

//5.56x45mm
/obj/item/ammo_box/a556/stripper
	name = "stripper clip (5.56x45mm)"
	desc = "A stripper clip."
	icon_state = "762"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 2500)
	w_class = WEIGHT_CLASS_SMALL

//.50 BMG
/obj/item/ammo_box/a50MG
	name = "anti-materiel ammo rack (.50MG)"
	desc = "A rack of .50 MG ammo, for when you really need something dead."
	icon_state = "50mg"
	ammo_type = /obj/item/ammo_casing/a50MG
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 14000)

/obj/item/ammo_box/a50MG/incendiary
	name = "anti-materiel incendiary ammo rack (.50MG)"
	desc = "A rack of .50 MG ammo, for when you really need something dead... and also on fire."
	icon_state = "50in"
	ammo_type = /obj/item/ammo_casing/a50MG/incendiary
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 20000)

/*/obj/item/ammo_box/a50MG/AP
	name = "anti-materiel armor piercing ammo rack (.50MG)"
	desc = "A .rack of .50 MG ammo, for when you really need (a very big) something dead."
	icon_state = "50ap"
	ammo_type = /obj/item/ammo_casing/a50MG/AP
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 18000)*/

/obj/item/ammo_box/a50MG/explosive
	name = "anti-materiel explosive ammo rack (.50MG)"
	desc = "5 rounds of explosive .50 MG. More then enough to kill anything that moves."
	icon_state = "50ex"
	ammo_type = /obj/item/ammo_casing/a50MG/explosive
	max_ammo = 5
	multiple_sprites = 1
	materials = list(MAT_METAL = 20000)

//Toy
/obj/item/ammo_box/foambox
	name = "ammo box (Foam Darts)"
	icon = 'icons/obj/guns/toy.dmi'
	icon_state = "foambox"
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart
	max_ammo = 40
	materials = list(MAT_METAL = 500)

/obj/item/ammo_box/foambox/riot
	icon_state = "foambox_riot"
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart/riot
	materials = list(MAT_METAL = 20000)
