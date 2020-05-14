
/datum/crafting_recipe
	var/name = "" //in-game display name
	var/reqs[] = list() //type paths of items consumed associated with how many are needed
	var/result //type path of item resulting from this craft
	var/tools[] = list() //type paths of items needed but not consumed
	var/traits[] = list() //type paths of traits needed, hopefully
	var/time = 30 //time in deciseconds
	var/parts[] = list() //type paths of items that will be placed in the result
	var/chem_catalysts[] = list() //like tools but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI
	var/subcategory = CAT_NONE
	var/gunsmith_one_req = FALSE
	var/gunsmith_two_req = FALSE
	var/gunsmith_three_req = FALSE
	var/gunsmith_four_req = FALSE

/*
---Fallout 13 Crafting
*/

/datum/crafting_recipe/workbench
	name = "workbench"
	result = /obj/machinery/workbench
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/lighter = 1,
				/obj/item/reagent_containers/glass/beaker = 1,
				/obj/item/screwdriver = 1,
				/obj/item/crowbar = 1,
				/obj/item/wrench = 1,
				/obj/item/wirecutters = 1,
				/obj/item/stack/crafting/metalparts = 5)
	time = 80
	category = CAT_MISC

/datum/crafting_recipe/pin_removal
	name = "Pin Removal"
	result = /obj/item/gun
	reqs = list(/obj/item/gun = 1)
	parts = list(/obj/item/gun = 1)
	tools = list(TOOL_WORKBENCH)
	time = 50
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/IED
	name = "IED"
	result = /obj/item/grenade/iedcasing
	reqs = list(/datum/reagent/fuel = 50,
				/obj/item/stack/cable_coil = 1,
				/obj/item/assembly/igniter = 1,
				/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	time = 15
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/molotov
	name = "Molotov"
	result = /obj/item/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/reagent_containers/glass/rag = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/bottle = 1)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/bola
	name = "Bola"
	result = /obj/item/restraints/legcuffs/bola
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/stack/sheet/metal = 6)
	time = 20//15 faster than crafting them by hand!
	category= CAT_WEAPONRY
	subcategory = CAT_WEAPON

/*
/datum/crafting_recipe/ed209
	name = "ED209"
	result = /mob/living/simple_animal/bot/ed209
	reqs = list(/obj/item/robot_suit = 1,
				/obj/item/clothing/head/helmet = 1,
				/obj/item/clothing/suit/armor/vest = 1,
				/obj/item/bodypart/l_leg/robot = 1,
				/obj/item/bodypart/r_leg/robot = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/gun/energy/e_gun/advtaser = 1,
				/obj/item/stock_parts/cell = 1,
				/obj/item/assembly/prox_sensor = 1)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	time = 60
	category = CAT_ROBOT

/datum/crafting_recipe/cleanbot
	name = "Cleanbot"
	result = /mob/living/simple_animal/bot/cleanbot
	reqs = list(/obj/item/reagent_containers/glass/bucket = 1,
				/obj/item/assembly/prox_sensor = 1,
				/obj/item/bodypart/r_arm/robot = 1)
	time = 40
	category = CAT_ROBOT

/datum/crafting_recipe/floorbot
	name = "Floorbot"
	result = /mob/living/simple_animal/bot/floorbot
	reqs = list(/obj/item/storage/toolbox/mechanical = 1,
				/obj/item/stack/tile/plasteel = 1,
				/obj/item/assembly/prox_sensor = 1,
				/obj/item/bodypart/r_arm/robot = 1)
	time = 40
	category = CAT_ROBOT

/datum/crafting_recipe/medbot
	name = "Medbot"
	result = /mob/living/simple_animal/bot/medbot
	reqs = list(/obj/item/healthanalyzer = 1,
				/obj/item/storage/firstaid = 1,
				/obj/item/assembly/prox_sensor = 1,
				/obj/item/bodypart/r_arm/robot = 1)
	time = 40
	category = CAT_ROBOT

/datum/crafting_recipe/honkbot
	name = "Honkbot"
	result = /mob/living/simple_animal/bot/honkbot
	reqs = list(/obj/item/storage/box/clown = 1,
				/obj/item/bodypart/r_arm/robot = 1,
				/obj/item/assembly/prox_sensor = 1,
				/obj/item/bikehorn/ = 1)
	time = 40
	category = CAT_ROBOT
*/

/datum/crafting_recipe/USAeyebot
	name = "Propaganda eyebot"
	result = /mob/living/simple_animal/pet/dog/eyebot
	reqs = list(/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/goodparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 40
	category = CAT_ROBOT


/datum/crafting_recipe/needlerammo
	name = "needler stripper clip (needle darts)"
	result = /obj/item/ammo_box/needle
	reqs = list(/obj/item/stack/crafting/metalparts = 3)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/needlerammoap
	name = "armour-piercing needler stripper clip (needle darts)"
	result = /obj/item/ammo_box/needleap
	reqs = list(/obj/item/stack/crafting/goodparts = 3)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/speedloader38
	name = "empty speed loader (.38)"
	result = /obj/item/ammo_box/c38/empty
	reqs = list(/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/speedloader10mm
	name = "empty speed loader (10mm)"
	result = /obj/item/ammo_box/l10mm/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/speedloader44
	name = "empty speed loader (.44)"
	result = /obj/item/ammo_box/m44/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/speedloader4570
	name = "empty speed loader (.45-70)"
	result = /obj/item/ammo_box/c4570/empty
	reqs = list(/obj/item/stack/sheet/metal = 4)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/tube44
	name = "empty speed loader tube (.44)"
	result = /obj/item/ammo_box/tube/m44/empty
	reqs = list(/obj/item/stack/sheet/metal = 3)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/tube357
	name = "empty speed loader tube (.357)"
	result = /obj/item/ammo_box/tube/a357/empty
	reqs = list(/obj/item/stack/sheet/metal = 3)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/tube4570
	name = "empty speed loader tube (.45-70)"
	result = /obj/item/ammo_box/tube/c4570/empty
	reqs = list(/obj/item/stack/sheet/metal = 6)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m10mm_auto
	name = "empty 10mm submachine gun magazine (10mm)"
	result = /obj/item/ammo_box/magazine/m10mm_auto/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/greasegunmag
	name = "empty .45 submachine gun magazine (9mm)"
	result = /obj/item/ammo_box/magazine/greasegun/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/d12g
	name = "empty shotgun drum magazine (12g)"
	result = /obj/item/ammo_box/magazine/d12g/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/riflesmall556
	name = "empty small rifle magazine (5.56mm)"
	result = /obj/item/ammo_box/magazine/m556/rifle/small/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/rifle556
	name = "empty 20rd rifle magazine (5.56mm)"
	result = /obj/item/ammo_box/magazine/m556/rifle/empty
	reqs = list(/obj/item/stack/sheet/metal = 3)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/rifleassault556
	name = "empty 30rd rifle magazine (5.56mm)"
	result = /obj/item/ammo_box/magazine/m556/rifle/assault/empty
	reqs = list(/obj/item/stack/sheet/metal = 4)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
/* //50 round magazines, let's not hand these out like candy.
/datum/crafting_recipe/rifleextended556
	name = "empty extended rifle magazine (5.56mm)"
	result = /obj/item/ammo_box/magazine/m556/rifle/extended/empty
	reqs = list(/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
*/
/datum/crafting_recipe/m45
	name = "empty handgun magazine (.45)"
	result = /obj/item/ammo_box/magazine/m45/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m50
	name = "empty handgun magazine (.50 AE)"
	result = /obj/item/ammo_box/magazine/a50/empty
	reqs = list(/obj/item/stack/sheet/metal = 3)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m10mm_adv
	name = "empty 10mm pistol magazine (10mm)"
	result = /obj/item/ammo_box/magazine/m10mm_adv/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m9mm
	name = "empty 9mm pistol magazine (9mm)"
	result = /obj/item/ammo_box/magazine/m9mm/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/enbloc
	name = "empty en-bloc clip (7.62x51mm)"
	result = /obj/item/ammo_box/magazine/garand308/empty
	reqs = list(/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER4)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m762
	name = "empty rifle magazine (7.62x51)"
	result = /obj/item/ammo_box/magazine/m762/empty
	reqs = list(/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
/* //way too powerful
/datum/crafting_recipe/m762ext
	name = "empty extended rifle magazine (7.62x51)"
	result = /obj/item/ammo_box/magazine/m762/ext/empty
	reqs = list(/obj/item/stack/sheet/metal = 4)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER4)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
*/
/datum/crafting_recipe/c45
	name = ".45 FMJ ammo box"
	result = /obj/item/ammo_box/c45
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c45jhp
	name = ".45 JHP ammo box"
	result = /obj/item/ammo_box/c45/jhp
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m44
	name = ".44 Magnum FMJ ammo box"
	result = /obj/item/ammo_box/m44box
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/datum/reagent/blackpowder = 35)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m44jhp
	name = ".44 Magnum JHP ammo box"
	result = /obj/item/ammo_box/m44box/jhp
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/datum/reagent/blackpowder = 35)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a357
	name = ".357 Magnum FMJ ammo box"
	result = /obj/item/ammo_box/a357box
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/datum/reagent/blackpowder = 35)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a357jhp
	name = ".357 Magnum JHP ammo box"
	result = /obj/item/ammo_box/a357box
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/datum/reagent/blackpowder = 35)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c38
	name = ".38 special ammo box"
	result = /obj/item/ammo_box/box38
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c4570
	name = ".45-70 FMJ ammo box"
	result = /obj/item/ammo_box/c4570box
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c4570jhp
	name = ".45-70 JHP ammo box"
	result = /obj/item/ammo_box/c4570box/jhp
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a50mg
	name = ".50 MG (rifle) ammo box"
	result = /obj/item/ammo_box/a50MGbox
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/datum/reagent/blackpowder = 50)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a50ae
	name = ".50 AE (pistol) ammo box"
	result = /obj/item/ammo_box/a50AEbox
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/datum/reagent/blackpowder = 50)
	traits = list(TRAIT_GUNSMITH_THREE)
	tools = list(TOOL_AWORKBENCH, TOOL_GUNTIER3)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c10mm
	name = "10mm FMJ ammo box"
	result = /obj/item/ammo_box/c10mm
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c10mmjhp
	name = "10mm JHP ammo box"
	result = /obj/item/ammo_box/c10mm/jhp
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c10mmap
	name = "10mm AP ammo box"
	result = /obj/item/ammo_box/c10mm/ap
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/datum/reagent/blackpowder = 30)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/magnumshot
	name = "magnum buckshot shotgun box"
	result = /obj/item/storage/box/magnumshot
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/datum/reagent/blackpowder = 35)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/lethalshot
	name = "buckshot shotgun box"
	result = /obj/item/storage/box/lethalshot
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/datum/reagent/blackpowder = 25)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/slugshot
	name = "slug shotgun box"
	result = /obj/item/storage/box/slugshot
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/datum/reagent/blackpowder = 25)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/beanbag
	name = "beanbag shotgun box"
	result = /obj/item/storage/box/rubbershot/beanbag
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/datum/reagent/blackpowder = 15)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/rubbershot
	name = "rubbershot shotgun box"
	result = /obj/item/storage/box/rubbershot
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/datum/reagent/blackpowder = 15)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a556
	name = "5.56mm FMJ ammo box"
	result = /obj/item/ammo_box/a556
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a556jhp
	name = "5.56mm JHP ammo box"
	result = /obj/item/ammo_box/a556/jhp
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a556ap
	name = "5.56 AP ammo box"
	result = /obj/item/ammo_box/a556/ap
	reqs = list(/obj/item/stack/sheet/metal = 12,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a556sport
	name = "5.56 match ammo box"
	result = /obj/item/ammo_box/a556/sport
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/datum/reagent/blackpowder = 40)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c9mm
	name = "9mm FMJ ammo box"
	result = /obj/item/ammo_box/c9mm
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c9mmjhp
	name = "9mm JHP ammo box"
	result = /obj/item/ammo_box/c9mm/jhp
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c9mmap
	name = "9mm AP ammo box"
	result = /obj/item/ammo_box/c9mm/ap
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a762
	name = "7.62mm FMJ ammo box"
	result = /obj/item/ammo_box/a762box
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a762jhp
	name = "7.62mm JHP ammo box"
	result = /obj/item/ammo_box/a762box/jhp
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a762ap
	name = "7.62mm AP ammo box"
	result = /obj/item/ammo_box/a762box/ap
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_TWO)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a308
	name = ".308 ammo box"
	result = /obj/item/ammo_box/a308box
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/datum/reagent/blackpowder = 40)
	traits = list(TRAIT_GUNSMITH_ONE)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/spear
	name = "Spear"
	result = /obj/item/twohanded/spear
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/shard = 1,
				/obj/item/stack/rods = 1)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/throwing_spear
	name = "Throwing Spear"
	result = /obj/item/throwing_star/spear
	reqs = list(/obj/item/stack/ore/iron = 1,
				/obj/item/stack/rods = 3,
				/obj/item/stack/sheet/sinew = 1)
	tools = list(TOOL_WORKBENCH)
	time = 50
	category= CAT_WEAPONRY
	subcategory = CAT_WEAPON
/*
/datum/crafting_recipe/kittyears
	name = "Kitty Ears"
	result = /obj/item/clothing/head/kitty/genuine
	time = 10
	reqs = list(/obj/item/organ/tail/cat = 1,
				/obj/item/organ/ears/cat = 1)
	category = CAT_MISC
*/
/*
/datum/crafting_recipe/skateboard
	name = "Skateboard"
	result = /obj/vehicle/ridden/scooter/skateboard
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 10)
	category = CAT_MISC

/datum/crafting_recipe/scooter
	name = "Scooter"
	result = /obj/vehicle/ridden/scooter
	time = 65
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 12)
	category = CAT_MISC
*/
/datum/crafting_recipe/papersack
	name = "Paper Sack"
	result = /obj/item/storage/box/papersack
	time = 10
	reqs = list(/obj/item/paper = 5)
	category = CAT_MISC


/datum/crafting_recipe/flashlight_eyes
	name = "Flashlight Eyes"
	result = /obj/item/organ/eyes/robotic/flashlight
	time = 10
	reqs = list(
		/obj/item/flashlight = 2,
		/obj/item/restraints/handcuffs/cable = 1
	)
	category = CAT_MISC

/datum/crafting_recipe/paperframes
	name = "Paper Frames"
	result = /obj/item/stack/sheet/paperframes/five
	time = 10
	reqs = list(/obj/item/stack/sheet/mineral/wood = 5, /obj/item/paper = 20)
	category = CAT_MISC

/datum/crafting_recipe/naturalpaper
	name = "Hand-Pressed Paper"
	time = 30
	reqs = list(/datum/reagent/water = 50, /obj/item/stack/sheet/mineral/wood = 1)
	tools = list(/obj/item/hatchet)
	result = /obj/item/paper_bin/bundlenatural
	category = CAT_MISC

/datum/crafting_recipe/blackcarpet
	name = "Black Carpet"
	reqs = list(/obj/item/stack/tile/carpet = 50, /obj/item/toy/crayon/black = 1)
	result = /obj/item/stack/tile/carpet/black/fifty
	category = CAT_MISC

/datum/crafting_recipe/showercurtain
	name = "Shower Curtains"
	reqs = 	list(/obj/item/stack/sheet/cloth = 2, /obj/item/stack/sheet/plastic = 2, /obj/item/stack/rods = 1)
	result = /obj/structure/curtain
	category = CAT_MISC

/datum/crafting_recipe/chemical_payload
	name = "Chemical Payload (C4)"
	result = /obj/item/bombcore/chemical
	reqs = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/grenade/plastic/c4 = 1,
		/obj/item/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/stock_parts/matter_bin = 1, /obj/item/grenade/chem_grenade = 2)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/chemical_payload2
	name = "Chemical Payload (Gibtonite)"
	result = /obj/item/bombcore/chemical
	reqs = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/twohanded/required/gibtonite = 1,
		/obj/item/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/stock_parts/matter_bin = 1, /obj/item/grenade/chem_grenade = 2)
	time = 50
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/bonearmor
	name = "Bone Armor"
	result = /obj/item/clothing/suit/armor/bone
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 6)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/chitinarmor
	name = "Insect Chitin Armor"
	result = /obj/item/clothing/suit/armor/f13/chitinarmor
	time = 30
	reqs = list(/obj/item/stack/sheet/animalhide/chitin = 12,
				/obj/item/stack/sheet/sinew = 4,
				/obj/item/stack/sheet/cloth = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonetalisman
	name = "Bone Talisman"
	result = /obj/item/clothing/accessory/talisman
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonecodpiece
	name = "Skull Codpiece"
	result = /obj/item/clothing/accessory/skullcodpiece
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2,
				 /obj/item/stack/sheet/animalhide/deathclaw = 1) //changed from goliath to deathclaw
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bracers
	name = "Bone Bracers"
	result = /obj/item/clothing/gloves/bracer
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/skullhelm
	name = "Skull Helmet"
	result = /obj/item/clothing/head/helmet/skull
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonedagger
	name = "Bone Dagger"
	result = /obj/item/kitchen/knife/combat/bone
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonespear
	name = "Bone Spear"
	result = /obj/item/twohanded/bonespear
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 4,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL
/*
/datum/crafting_recipe/viperspear
	name = "Viper Spear"
	result = /obj/item/twohanded/bonespear/venom
	time = 45
	reqs = list(/obj/item/twohanded/bonespear = 1,
				/obj/item/viper_venom = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/viperrecycle //an empty viper spear can already be used to make new bone spears, but I still like this idea
	name = "Recycled Viper Spear"
	result = /obj/item/twohanded/bonespear
	time = 25
	reqs = list(/obj/item/twohanded/bonespear/venom = 1,
				/obj/item/stack/sheet/bone = 2)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL
*/
/datum/crafting_recipe/boneaxe
	name = "Bone Axe"
	result = /obj/item/twohanded/fireaxe/boneaxe
	time = 50
	reqs = list(/obj/item/stack/sheet/bone = 6,
				 /obj/item/stack/sheet/sinew = 3)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonepestle
	name = "Bone Pestle"
	result = /obj/item/pestle
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/bonemortar
	name = "Bone Mortar"
	result = /obj/item/reagent_containers/glass/mortar
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 3)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/tribal_torch
	name = "Tribal Torch"
	result = /obj/item/candle/tribal_torch
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/wood = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/handheld_torch
	name = "Handheld Torch"
	result = /obj/item/flashlight/flare/torch
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/wood = 3,
				/obj/item/stack/sheet/cloth = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/headpike
	name = "Spike Head (Glass Spear)"
	time = 65
	reqs = list(/obj/item/twohanded/spear = 1,
				/obj/item/bodypart/head = 1)
	parts = list(/obj/item/bodypart/head = 1,
			/obj/item/twohanded/spear = 1)
	result = /obj/structure/headpike
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/headpikebone
	name = "Spike Head (Bone Spear)"
	time = 65
	reqs = list(/obj/item/twohanded/bonespear = 1,
				/obj/item/bodypart/head = 1)
	parts = list(/obj/item/bodypart/head = 1,
			/obj/item/twohanded/bonespear = 1)
	result = /obj/structure/headpike/bone
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/headpikelegion
	name = "Spike Head (Throwing Spear)"
	time = 65
	reqs = list(/obj/item/throwing_star/spear = 1,
				/obj/item/bodypart/head = 1)
	parts = list(/obj/item/bodypart/head = 1,
			/obj/item/throwing_star/spear = 1)
	result = /obj/structure/headpike
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/goliathcloak
	name = "deathclaw cloak"
	result = /obj/item/clothing/suit/hooded/cloak/goliath
	time = 50
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/sinew = 2,
				/obj/item/stack/sheet/animalhide/deathclaw = 4)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/smallcarton
	name = "Small Carton"
	result = /obj/item/reagent_containers/food/drinks/sillycup/smallcarton
	time = 10
	reqs = list(/obj/item/stack/sheet/cardboard = 1)
	category = CAT_MISC

/datum/crafting_recipe/pressureplate
	name = "Pressure Plate"
	result = /obj/item/pressure_plate
	time = 5
	reqs = list(/obj/item/stack/sheet/metal = 1,
				  /obj/item/stack/tile/plasteel = 1,
				  /obj/item/stack/cable_coil = 2,
				  /obj/item/assembly/igniter = 1)
	category = CAT_MISC


/datum/crafting_recipe/rcl
	name = "Makeshift Rapid Cable Layer"
	result = /obj/item/twohanded/rcl/ghetto
	time = 40
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER, TOOL_WRENCH)
	reqs = list(/obj/item/stack/sheet/metal = 15)
	category = CAT_MISC

/datum/crafting_recipe/guillotine
	name = "Guillotine"
	result = /obj/structure/guillotine
	time = 150 // Building a functioning guillotine takes time
	reqs = list(/obj/item/stack/sheet/plasteel = 3,
		        /obj/item/stack/sheet/mineral/wood = 20,
		        /obj/item/stack/cable_coil = 10)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)
	category = CAT_MISC

/datum/crafting_recipe/binoculars
	name = "Binoculars"
	result = /obj/item/twohanded/binocs
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/glass = 5)
	tools = list(TOOL_SCREWDRIVER,TOOL_WORKBENCH)
	category = CAT_MISC

/datum/crafting_recipe/spooky_camera
	name = "Camera Obscura"
	result = /obj/item/camera/spooky
	time = 15
	reqs = list(/obj/item/camera = 1,
				/datum/reagent/water/holywater = 10)
	parts = list(/obj/item/camera = 1)
	category = CAT_MISC

//drugs
/datum/crafting_recipe/jet
	name = "Jet"
	result = /obj/item/reagent_containers/pill/patch/jet
	reqs = list(/datum/reagent/consumable/milk = 10, /obj/item/clothing/mask/cigarette = 3, /obj/item/toy/crayon/spraycan)
	time = 20
	tools = list(TOOL_WORKBENCH)
	category = CAT_DRUGS

/datum/crafting_recipe/psycho
	name = "Psycho"
	result = /obj/item/reagent_containers/hypospray/medipen/psycho
	time = 20
	reqs = list(/obj/item/reagent_containers/syringe = 1, /obj/item/reagent_containers/food/snacks/grown/feracactus = 2, /obj/item/reagent_containers/food/snacks/grown/fungus = 2, /datum/reagent/consumable/nuka_cola = 10)
	tools = list(TOOL_WORKBENCH)
	category = CAT_DRUGS

/datum/crafting_recipe/medx
	name = "med-x"
	result = /obj/item/reagent_containers/syringe/medx
	time = 20
	reqs = list(/obj/item/reagent_containers/syringe = 1, /obj/item/reagent_containers/food/snacks/grown/feracactus = 2, /obj/item/reagent_containers/food/snacks/grown/agave = 1, /datum/reagent/consumable/ethanol/whiskey = 10)
	tools = list(TOOL_WORKBENCH)
	category = CAT_DRUGS

/datum/crafting_recipe/rags
	name = "Cut clothing into rags"
	result = /obj/item/stack/sheet/cloth/three
	reqs = list(/obj/item/clothing/under = 1)
	time = 20
	category = CAT_MISC

/datum/crafting_recipe/healpowder
	name = "Healing powder"
	result = /obj/item/reagent_containers/pill/patch/healingpowder
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/broc = 2,
				/obj/item/reagent_containers/food/snacks/grown/xander = 2)
	time = 50
	category = CAT_MEDICAL

/datum/crafting_recipe/healpoultice
	name = "Healing poultice"
	result = /obj/item/reagent_containers/pill/patch/healpoultice
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/broc = 2,
				/obj/item/reagent_containers/food/snacks/grown/xander = 2,
				/obj/item/reagent_containers/food/snacks/grown/feracactus = 2,
				/obj/item/reagent_containers/food/snacks/grown/fungus = 1)
	time = 80
	category = CAT_MEDICAL


/datum/crafting_recipe/stimpak
	name = "Stimpak"
	result = /obj/item/reagent_containers/hypospray/medipen/stimpak
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/broc = 2,
				/obj/item/reagent_containers/food/snacks/grown/xander = 2,
				/obj/item/reagent_containers/syringe = 1)
	tools = list(TOOL_WORKBENCH)
	time = 50
	category = CAT_MEDICAL


/datum/crafting_recipe/superstimpak
	name = "Super Stimpak"
	result = /obj/item/reagent_containers/hypospray/medipen/stimpak/super
	reqs = list(/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
				/obj/item/stack/sheet/leather = 2,
				/obj/item/reagent_containers/food/snacks/grown/mutfruit = 2)
	tools = list(TOOL_WORKBENCH)
	time = 80
	category = CAT_MEDICAL

/datum/crafting_recipe/salvage_stimpak
	name = "Salvage injector"
	result = /obj/item/reagent_containers/syringe
	reqs = list(/obj/item/reagent_containers/hypospray/medipen/stimpak = 1)
	time = 20
	tools = list(TOOL_WORKBENCH)
	category = CAT_MEDICAL

/datum/crafting_recipe/slavecollar
	name = "Slave Collar"
	result = /obj/item/assembly/signaler/electropack/shockcollar
	reqs = list(/obj/item/clothing/neck/petcollar = 1,
				/obj/item/assembly/signaler = 1,
				/obj/item/assembly/igniter =1)
	time = 40
	category = CAT_MISC

/datum/crafting_recipe/mop
	name = "Mop"
	result = /obj/item/mop
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/reagent_containers/glass/rag = 1)
	time = 30
	category = CAT_MISC

/datum/crafting_recipe/reversebeartrap
	name = "Reverse Bear Trap"
	result = /obj/item/reverse_bear_trap
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/obj/item/crafting/timer = 1)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH)
	time = 60
	category = CAT_ASSEM

/datum/crafting_recipe/whip
	name = "Leather whip"
	result = /obj/item/melee/curator_whip
	reqs = list(/obj/item/stack/sheet/leather = 3)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//F13
///ASSEMBLY ITEMS
/datum/crafting_recipe/mousetrap
	name = "Mousetrap"
	result = /obj/item/assembly/mousetrap
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/igniter
	name = "Igniter"
	result = /obj/item/assembly/igniter
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1,
				/obj/item/stack/cable_coil = 1)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/health_sensor
	name = "Health sensor"
	result = /obj/item/assembly/health
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/timer
	name = "Timer"
	result = /obj/item/assembly/timer
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/signaler
	name = "Remote signaling device"
	result = /obj/item/assembly/signaler
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1,
				/obj/item/stack/cable_coil = 2)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/infrared
	name = "Infrared emitter"
	result = /obj/item/assembly/infra
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM

/datum/crafting_recipe/proximity
	name = "Proximity sensor"
	result = /obj/item/assembly/prox_sensor
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/rods = 1)
	time = 10
	category = CAT_ASSEM
///Medical
/datum/crafting_recipe/healthanalyzer
	name = "Health analyzer"
	result = /obj/item/healthanalyzer
	reqs = list(/obj/item/stack/sheet/glass = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/assembly/infra = 1,
				/obj/item/assembly/health = 1)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/beaker
	name = "Beaker"
	result = /obj/item/reagent_containers/glass/beaker
	reqs = list(/obj/item/stack/sheet/glass = 2)
	tools = list(TOOL_WELDER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/beaker_large
	name = "Large beaker"
	result = /obj/item/reagent_containers/glass/beaker/large
	reqs = list(/obj/item/stack/sheet/glass = 6)
	tools = list(TOOL_WELDER)
	time = 40
	category = CAT_MEDICAL

/datum/crafting_recipe/syringe
	name = "Syringe"
	result = /obj/item/reagent_containers/syringe
	reqs = list(/obj/item/stack/rods = 1,
				/obj/item/stack/sheet/glass = 1)
	tools = list(TOOL_WIRECUTTER)
	time = 10
	category = CAT_MEDICAL

/datum/crafting_recipe/solids
	name = "Solid beaker"
	result = /obj/item/reagent_containers/glass/beaker/solids
	reqs = list(/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WELDER)
	time = 30
	category = CAT_MEDICAL

/datum/crafting_recipe/spray
	name = "Abraxo Cleaner"
	result = /obj/item/reagent_containers/spray/cleaner
	reqs = list(/obj/item/stack/sheet/plastic = 2,
				/obj/item/crafting/abraxo = 1,
				/datum/reagent/water = 50)
	tools = list(TOOL_WELDER)
	time = 10
	category = CAT_MISC

/datum/crafting_recipe/headset
	name = "radio headset"
	result = /obj/item/radio/headset
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/crafting/electronicparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_MISC

/datum/crafting_recipe/handheldradio
	name = "handheld radio"
	result = /obj/item/radio/off
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/crafting/electronicparts = 1)
	time = 10
	category = CAT_MISC

/datum/crafting_recipe/throwingknife
	name = "Throwing Knife"
	result = /obj/item/throwing_star/throwingknife
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WELDER)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/salvagedpaconversion
	name = "Salvaged NCR Power Armor"
	result = /obj/item/clothing/suit/armor/f13/brokenpa/ncr
	reqs = list(/obj/item/clothing/suit/armor/f13/brokenpa/t45b = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/salvagedpaconversion2
	name = "Salvaged Power Armor"
	result = /obj/item/clothing/suit/armor/f13/brokenpa/t45b
	reqs = list(/obj/item/clothing/suit/armor/f13/brokenpa/ncr = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/suppressor
	name = "Suppressor"
	result = /obj/item/suppressor
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/plastic = 2,
				/obj/item/crafting/duct_tape = 1)
	tools = list(TOOL_WELDER)
	time = 30
	category  = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/zipgun
	name = "zip gun"
	result = /obj/item/gun/ballistic/revolver/zipgun
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
	/datum/reagent/blackpowder = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/n99
	name = "10mm pistol"
	result = /obj/item/gun/ballistic/automatic/pistol/n99
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/datum/reagent/blackpowder = 10,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/colt6250
	name = "colt 6250"
	result = /obj/item/gun/ballistic/revolver/colt6250
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 5,
				/datum/reagent/blackpowder = 10,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	traits = list(TRAIT_GUNSMITH_ONE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/ninemil
	name = "9mm pistol"
	result = /obj/item/gun/ballistic/automatic/pistol/ninemil
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/datum/reagent/blackpowder = 10,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	traits = list(TRAIT_GUNSMITH_ONE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/m1911
	name = "M1911"
	result = /obj/item/gun/ballistic/automatic/pistol/m1911
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/datum/reagent/blackpowder = 10,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
/* CRAFT rework: removed for balance
/datum/crafting_recipe/deagle
	name = "desert eagle"
	result = /obj/item/gun/ballistic/automatic/pistol/deagle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/datum/reagent/blackpowder = 15,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/thatgun
	name = ".223 pistol"
	result = /obj/item/gun/ballistic/revolver/thatgun
	reqs = list(/obj/item/gun/ballistic/shotgun/remington = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/mineral/titanium = 1,
				/datum/reagent/blackpowder = 15,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH, /obj/item/blueprint/weapon/thatgun, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/needler
	name = "needler pistol"
	result = /obj/item/gun/ballistic/revolver/needler
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/mineral/titanium = 3,
				/datum/reagent/blackpowder = 5,
				/obj/item/stack/sheet/metal = 4)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/weapon/needler, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*/
/datum/crafting_recipe/piperifle
	name = "pipe rifle"
	result = /obj/item/gun/ballistic/revolver/pipe_rifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
	/datum/reagent/blackpowder = 1,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/huntingrifle
	name = "hunting rifle"
	result = /obj/item/gun/ballistic/shotgun/remington
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/datum/reagent/blackpowder = 20,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/huntingrifle_scoped
	name = "scoped hunting rifle"
	result = /obj/item/gun/ballistic/shotgun/remington/scoped
	reqs = list(/obj/item/gun/ballistic/shotgun/remington = 1,
				/obj/item/stack/sheet/glass = 2,
				/datum/reagent/blackpowder = 20,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
/* CRAFT rework: removed for balance
/datum/crafting_recipe/m1garand
	name = "M1 Garand"
	result = /obj/item/gun/ballistic/automatic/m1garand
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/goodparts = 2,
				/datum/reagent/blackpowder = 25,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, /obj/item/blueprint/weapon/m1garand, TOOL_GUNTIER4)
	traits = list(TRAIT_GUNSMITH_FOUR)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*/
/datum/crafting_recipe/varmintrifle
	name = "varmint rifle"
	result = /obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/datum/reagent/blackpowder = 20,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
/* CRAFT rework: removed for balance
/datum/crafting_recipe/rangemaster
	name = "colt rangemaster"
	result = /obj/item/gun/ballistic/automatic/rangemaster
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/stack/sheet/metal = 3,
				/datum/reagent/blackpowder = 20)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/rangemasterscoped
	name = "scoped colt rangemaster"
	result = /obj/item/gun/ballistic/automatic/rangemaster/scoped
	reqs = list(/obj/item/gun/ballistic/automatic/rangemaster = 1,
				/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/datum/reagent/blackpowder = 20)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/r91
	name = "r91 assault rifle"
	result = /obj/item/gun/ballistic/automatic/assault_rifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/mineral/titanium = 2,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH, /obj/item/blueprint/weapon/r91, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/r91
	name = "infiltrator"
	result = /obj/item/gun/ballistic/automatic/assault_rifle/infiltrator
	reqs = list(/obj/item/gun/ballistic/automatic/assault_rifle = 1,
				/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/suppressor = 1,
				/obj/item/stack/sheet/plastic = 1,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/weapon/infiltrator, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*/
/datum/crafting_recipe/servicerifle
	name = "service rifle"
	result = /obj/item/gun/ballistic/automatic/marksman/servicerifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/metal = 6,
				/datum/reagent/blackpowder = 20)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
/* CRAFT rework: removed for balance
/datum/crafting_recipe/marksmanrifle
	name = "marksman rifle"
	result = /obj/item/gun/ballistic/automatic/marksman
	reqs = list(/obj/item/stack/sheet/plastic = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/mineral/titanium = 3,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/weapon/marksmanrifle, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/fnfal
	name = "fn fal"
	result = /obj/item/gun/ballistic/automatic/fnfal
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/mineral/titanium = 2,
				/datum/reagent/blackpowder = 30)
	tools = list(TOOL_WORKBENCH, /obj/item/blueprint/weapon/fnfal, TOOL_GUNTIER4)
	traits = list(TRAIT_GUNSMITH_FOUR)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*/
/datum/crafting_recipe/widowmaker
	name = "winchester widowmaker double barrel"
	result = /obj/item/gun/ballistic/revolver/widowmaker
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 5,
				/datum/reagent/blackpowder = 5)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER1)
	traits = list(TRAIT_GUNSMITH_ONE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/huntingshotgun
	name = "hunting shotgun"
	result = /obj/item/gun/ballistic/shotgun/hunting
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 3,
				/datum/reagent/blackpowder = 15)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
/* CRAFT rework: removed for balance
/datum/crafting_recipe/citykiller
	name = "combat shotgun"
	result = /obj/item/gun/ballistic/shotgun/automatic/combat
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 1,
				/datum/reagent/blackpowder = 35)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER4)
	traits = list(TRAIT_GUNSMITH_FOUR)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/caws
	name = "h&k caws"
	result = /obj/item/gun/ballistic/automatic/shotgun/caws
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/sheet/mineral/titanium = 2,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/goodparts = 3,
				/datum/reagent/blackpowder = 35)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/weapon/caws, TOOL_GUNTIER4)
	traits = list(TRAIT_GUNSMITH_FOUR)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//*CRAFT rework: removed for balance
/datum/crafting_recipe/greasegun
	name = "M3A1 Grease Gun"
	result = /obj/item/gun/ballistic/automatic/greasegun
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 6,
				/datum/reagent/blackpowder = 25)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*//* CRAFT rework: removed for balance
/datum/crafting_recipe/smg10mm
	name = "10mm submachine gun"
	result = /obj/item/gun/ballistic/automatic/smg10mm
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/goodparts = 1,
				/datum/reagent/blackpowder = 25,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
*/
/datum/crafting_recipe/magnetowattz
	name = "(Upgrade) Wattz 1000 magneto-laser pistol"
	result = /obj/item/gun/energy/laser/wattz/magneto
	reqs = list(/obj/item/gun/energy/laser/wattz = 1,
				/obj/item/stack/crafting/electronicparts = 2)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER2)
	traits = list(TRAIT_GUNSMITH_TWO)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/glock86a
	name = "(Upgrade) Glock 86a"
	result = /obj/item/gun/energy/laser/plasma/glock/extended
	reqs = list(/obj/item/gun/energy/laser/plasma/glock = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/crafting/electronicparts = 3)
	tools = list(TOOL_WORKBENCH, TOOL_GUNTIER3)
	traits = list(TRAIT_GUNSMITH_THREE)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/cosmicknife
	name = "cosmic knife"
	result = /obj/item/kitchen/knife/cosmic
	reqs = list(/obj/item/kitchen/knife/cosmicdirty = 1,
				/obj/item/crafting/abraxo = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	time = 30

/datum/crafting_recipe/cosmicknifeheated
	name = "superheated cosmic knife"
	result = /obj/item/kitchen/knife/cosmicheated
	reqs = list(/obj/item/kitchen/knife/cosmic = 1,
				/datum/reagent/fuel = 25)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	time = 40

/datum/crafting_recipe/machete
	name = "Machete"
	result = /obj/item/claymore/machete
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/reinforcemachete
	name = "Reinforce machete"
	result = /obj/item/claymore/machete/reinforced
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/obj/item/claymore/machete = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/forgeglaive
	name = "Improvised Metal Glaive"
	result = /obj/item/twohanded/spear
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/mineral/wood = 4)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/forgethrowingspear
	name = "Throwing Spear"
	result = /obj/item/throwing_star/spear
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/mineral/wood = 3)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/bonedie
	name = "Carve Bone Die"
	result = /obj/item/dice/d6
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/strawdummy
	name = "Weave Target Dummy"
	result = /obj/structure/punching_bag/dummy
	time = 30
	reqs = list(/obj/item/stack/sheet/hay = 15)
	category = CAT_MISC

/datum/crafting_recipe/Tallow
	name = "Render Fat From Scraps"
	result = /obj/item/reagent_containers/food/snacks/tallow
	time = 30
	reqs = list(/obj/item/reagent_containers/food/snacks/meat/cutlet = 3)
	category = CAT_MISC

/datum/crafting_recipe/TallowCandle
	name = "Mold Tallow Candle"
	result = /obj/item/candle
	time = 30
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/stack/sheet/durathread = 3
	)
	category = CAT_MISC

	/datum/crafting_recipe/SalvageCandle
	name = "Salvage Wax"
	result = /obj/item/candle
	time = 80
	reqs = list(
		/obj/item/trash/candle = 5,
		/obj/item/stack/sheet/durathread = 3
	)
	category = CAT_MISC

/datum/crafting_recipe/warclub
	name = "Carve Wooden Warclub"
	result = /obj/item/claymore/machete/warclub
	time = 80
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/tribe_bow
	name = "String Wooden Bow"
	result = /obj/item/gun/ballistic/automatic/tribalbow
	time = 50
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/stack/sheet/sinew = 3)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/arrow
	name = "Fletch Arrows"
	result = /obj/item/ammo_casing/caseless/arrow
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/tribe_quiver
	name = "Craft Quiver and Arrows"
	result = /obj/item/storage/belt/tribe_quiver
	time = 80
	reqs = list(/obj/item/stack/sheet/mineral/wood = 8,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/tribe_armor
	name = "Tribe Armor"
	result = /obj/item/clothing/suit/armor/f13/tribe_armor
	time = 80
	reqs = list(/obj/item/stack/sheet/leather = 6)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/warmace
	name = "Carve Wooden Warmace"
	result = /obj/item/twohanded/sledgehammer/warmace
	time = 100
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/spearquiver
	name = "Spear Quiver"
	result = /obj/item/storage/backpack/spearquiver
	time = 60
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/metal = 1)
	category = CAT_PRIMAL
	subcategory = CAT_TRIBAL

/datum/crafting_recipe/arrowap
	name = "Sturdy Arrow"
	result = /obj/item/ammo_casing/caseless/arrow/ap
	time = 40
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/arrowpoison
	name = "Poison Arrow"
	result = /obj/item/ammo_casing/caseless/arrow/poison
	time = 30
	reqs = list(/obj/item/ammo_casing/caseless/arrow = 1,
				/obj/item/grown/nettle/basic = 5)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/arrowburn
	name = "Burn Posion Arrow"
	result = /obj/item/ammo_casing/caseless/arrow/burning
	time = 30
	reqs = list(/obj/item/ammo_casing/caseless/arrow = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1,
				/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul = 4)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/voodoo
    name = "voodoo"
    result = /obj/item/reagent_containers/pill/patch/voodoo
    time = 20
    reqs = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul = 2,
                /obj/item/reagent_containers/food/snacks/grown/feracactus = 2,
                /obj/item/reagent_containers/food/snacks/tallow = 1,
                /datum/reagent/consumable/nuka_cola = 10)
    tools = list(TOOL_WORKBENCH)
    category = CAT_TRIBAL

/datum/crafting_recipe/coyotechew
	name = "coyote tobacco chew"
	result = /obj/item/reagent_containers/pill/patch/coyotechew
	time = 30
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/feracactus = 1, /obj/item/reagent_containers/food/snacks/grown/tobacco/space = 2, /datum/reagent/consumable/coffee = 10)
	tools = list(TOOL_WORKBENCH)
	category = CAT_DRUGS