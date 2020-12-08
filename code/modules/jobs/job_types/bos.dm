/*
BoS access:
Main doors: ACCESS_CAPTAIN 20
*/

/datum/job/bos //do NOT use this for anything, it's just to store faction datums.
	department_flag = BOS
	selection_color = "#95a5a6"

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	outfit = /datum/outfit/job/bos/

	objectivesList = list("Leadership recommends the following goal for this week: Establish an outpost at the radio tower","Leadership recommends the following goal for this week: Acquire blueprints for research and preservation", "Leadership recommends the following goal for this week: Acquire or confiscate dangerous tech by any means necessary.")

/datum/outfit/job/bos
	name = "bosdatums"
	jobtype = /datum/job/bos
	backpack = 	/obj/item/storage/backpack/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	ears = 		/obj/item/radio/headset/headset_bos
	uniform =	/obj/item/clothing/under/syndicate/brotherhood
	shoes = 	/obj/item/clothing/shoes/combat/swat
	gloves = 	/obj/item/clothing/gloves/combat
	id = 		/obj/item/card/id/dogtag

/datum/outfit/job/bos/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/datum/outfit/job/bos/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_GENERIC)

/*
Elder
*/

/datum/job/bos/f13elder
	title = "Elder"
	flag = F13ELDER
	faction = "BOS"
	head_announce = list("Security")
	supervisors = "the high elders"
	selection_color = "#7f8c8d"
	req_admin_notify = 1

	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/bos/f13elder

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13elder/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_CHEMWHIZ)

/datum/outfit/job/bos/f13elder
	name = "Elder"
	jobtype = /datum/job/bos/f13elder
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/f13/elder
	glasses =       /obj/item/clothing/glasses/night
	accessory = 	/obj/item/clothing/accessory/bos/elder
	suit_store =	/obj/item/gun/energy/laser/laer
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/gun/ballistic/automatic/pistol/n99=1)

/*
Sentinel
*/

/datum/job/bos/f13sentinel
	title = "Sentinel"
	flag = F13SENTINEL
	faction = "BOS"
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the acting field commander until the Brotherhood regains its strength enough to place an Elder for the bunker. You are a veteran of many battles and sorties in pursuit of Brotherhood goals; your only weakness may just be your hubris. Your main goals are defense of the Chapter and surveillance of the surrounding region for technology."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the elder"
	selection_color = "#7f8c8d"

	loadout_options = list(
	/datum/outfit/loadout/sentstand, //Tribeam laser and 10mm pistol
	/datum/outfit/loadout/sentvet, //Pulse rifle and AEP7
	/datum/outfit/loadout/sentheavy //Gatling laser
	)

	outfit = /datum/outfit/job/bos/f13sentinel

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13sentinel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_CHEMWHIZ)

/datum/outfit/job/bos/f13sentinel
	name = "Sentinel"
	jobtype = /datum/job/bos/f13sentinel
	pa_wear = TRUE
	uniform = 		/obj/item/clothing/under/f13/recon
	accessory = 	/obj/item/clothing/accessory/bos/sentinel
	glasses =       /obj/item/clothing/glasses/night
	suit = 			/obj/item/clothing/suit/armor/f13/power_armor/t60
	belt =			/obj/item/storage/belt/military/assault
	head = 			/obj/item/clothing/head/helmet/f13/power_armor/t60
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1)

/datum/job/bos/f13sentinel/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Iron Fist")

/datum/outfit/loadout/sentstand
	name = "Shock Sentinel"
	l_hand = /obj/item/gun/energy/laser/scatter
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc=3,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2)

/datum/outfit/loadout/sentvet
	name = "Veteran Sentinel"
	backpack_contents = list(
		/obj/item/gun/energy/ionrifle=1,
		/obj/item/stock_parts/cell/ammo/mfc=3,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		)

/datum/outfit/loadout/sentheavy
	name = "Heavy Sentinel"
	backpack_contents = list(
		/obj/item/minigunpack=1,
		)


/*
Head Scribe
*/

/datum/job/bos/f13headscribe
	title = "Head Scribe"
	flag = F13HEADSCRIBE
	head_announce = list("Security")
	faction = "BOS"
	total_positions = 1
	spawn_positions = 1
	description = "You are the foremost experienced scribe remaining in this bunker. Your role is to ensure the safekeeping and proper usage of technology within the Brotherhood. You are also the lead medical expert in this Chapter. Delegate your tasks to your Scribes."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the elder"
	selection_color = "#7f8c8d"

	loadout_options = list(
	/datum/outfit/loadout/hsstand, //Pulse pistol, and medbeam
	/datum/outfit/loadout/hspract //Needler and hypospray
	)

	outfit = /datum/outfit/job/bos/f13headscribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13headscribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_MEDICALEXPERT, TRAIT_GENERIC, TRAIT_CHEMWHIZ)

/datum/outfit/job/bos/f13headscribe
	name = "Head Scribe"
	jobtype = /datum/job/bos/f13headscribe
	chemwhiz = TRUE
	uniform = 		/obj/item/clothing/under/syndicate/brotherhood
	accessory = 	/obj/item/clothing/accessory/bos/headscribe
	glasses =       /obj/item/clothing/glasses/night
	suit = 			/obj/item/clothing/suit/armor/f13/headscribe
	belt = 			/obj/item/storage/belt/utility/full/engi
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/shield/energy=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super=2, \
		/obj/item/reagent_containers/dropper/SR/NotVault = 1
		)

/datum/outfit/loadout/hsstand
	name = "Medicinal Expert"
	backpack_contents = list(
		/obj/item/gun/energy/ionrifle/carbine=1,
		/obj/item/stock_parts/cell/ammo/mfc=2,
		/obj/item/gun/medbeam=1
		)

/datum/outfit/loadout/hspract
	name = "Administrative Leader"
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/needler=1,
		/obj/item/ammo_box/needleap=2,
		/obj/item/reagent_containers/hypospray/CMO=1
		)

/*
Knight-Captain
*/

/datum/job/bos/f13knightcap
	title = "Knight-Captain"
	flag = F13KNIGHTCAPTAIN
	head_announce = list("Security")
	faction = "BOS"
	total_positions = 1
	spawn_positions = 1
	description = "You are the Knight-Captain, head of the Knight division in the Chapter. Your knowledge of pre-war materials and engineering is almost unparalleled, and you have basic combat training and experience. You are in charge of the Chapter's engineering Corps, and your Knights. Delegate to them as necessary. As Chief Armorer, you are also in charge of the armory."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Sentinel"
	selection_color = "#7f8c8d"

	loadout_options = list(
	/datum/outfit/loadout/capstand, //AER9 and 10mm pistol
	/datum/outfit/loadout/capsap, //glock86a and 2 blocks of c4
	/datum/outfit/loadout/capalt //Riot shotgun
	)

	outfit = /datum/outfit/job/bos/f13knightcap

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS, ACCESS_ARMORY, ACCESS_BRIG)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS, ACCESS_ARMORY, ACCESS_BRIG)

/datum/job/bos/f13knightcap/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Master Gunsmith")

/datum/outfit/job/bos/f13knightcap/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_CHEMWHIZ)




/datum/outfit/job/bos/f13knightcap
	name = "Knight-Captain"
	jobtype = /datum/job/bos/f13knightcap
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/combat/knightcap
	glasses =       /obj/item/clothing/glasses/night
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	accessory = 	/obj/item/clothing/accessory/bos/knightcaptain
	belt = 			/obj/item/storage/belt/security/full
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	head =			/obj/item/clothing/head/helmet/f13/combat/knightcap
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		)

/datum/job/bos/f13knightcap/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")

/datum/outfit/loadout/capstand
	name = "Knight-Captain"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer14=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/mfc=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2
		)

/datum/outfit/loadout/capsap
	name = "Close Support"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/ar=1,
		/obj/item/ammo_box/magazine/m556=2,
		/obj/item/gun/energy/laser/plasma/glock=1,
		/obj/item/stock_parts/cell/ammo/ec=2
		)

/datum/outfit/loadout/capalt
	name = "Warden-Defender"
	backpack_contents = list(
		/obj/item/gun/ballistic/shotgun/riot=1,
		/obj/item/storage/box/lethalshot=2,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/gun/energy/laser/pistol=1
		)

/*
Senior Paladin
*/

/datum/job/bos/f13seniorpaladin
	title = "Senior Paladin"
	flag = F13SENIORPALADIN
	faction = "BOS"
	total_positions = 1
	spawn_positions = 1
	description = "As the Chapter's Senior offensive warrior, you have proven your service and dedication to the Brotherhood over your time as a Paladin. As your skills gained, however, you were deigned to be more useful as a commander and trainer. Now you have your trusty powerfist, and were recently given a suit of T-51b power armor. Your job is to coordinate the Paladins and ensure they work as a team, instilling discipline as you go."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Sentinel"
	selection_color = "#95a5a6"

	loadout_options = list(
		/datum/outfit/loadout/spaladina, //M72 Gauss rifle and Glock
		/datum/outfit/loadout/spaladinc, //AER14 and N99. No more gatling. Sorry gamers; will balance it further and make it obtainable through other means.
		)

	outfit = /datum/outfit/job/bos/f13seniorpaladin

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13seniorpaladin
	name = "Senior Paladin"
	jobtype = /datum/job/bos/f13seniorpaladin
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/power_armor/t51b
	head = 			/obj/item/clothing/head/helmet/f13/power_armor/t51b
	accessory = 	/obj/item/clothing/accessory/bos/seniorpaladin
	uniform = 		/obj/item/clothing/under/f13/recon
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	belt = 			/obj/item/storage/belt/military/assault
	backpack_contents = list(
		/obj/item/melee/powerfist=1, \
		)

/datum/outfit/loadout/spaladina
	name = "Long-Range Support Senior-Paladin"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/m72=1,
		/obj/item/ammo_box/magazine/m2mm=3,
		/obj/item/gun/energy/laser/plasma/glock=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		)

/datum/outfit/loadout/spaladinc
	name = "Mainline Senior-Paladin"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer14=1,
		/obj/item/stock_parts/cell/ammo/mfc=2,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2
		)

/datum/job/bos/f13seniorpaladin/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")

/*
Paladin
*/

/datum/job/bos/f13paladin
	title = "Paladin"
	flag = F13PALADIN
	faction = "BOS"
	total_positions = 2
	spawn_positions = 2
	description = "You answer directly to the Sentinel. You are this Chapter's main line of defense and offense; highly trained in combat and weaponry though with little practical field experience, you are eager to prove your worth to the Brotherhood. Your primary duties are defense and surface operations. You may also be assigned a trainee Initiate."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Sentinel, or Senior Paladin"
	selection_color = "#95a5a6"

	loadout_options = list(
	/datum/outfit/loadout/paladina, //Carbine and aep7
	/datum/outfit/loadout/paladinb, //rcw and n99
	/datum/outfit/loadout/paladinc,
	/datum/outfit/loadout/paladind
	)

	outfit = /datum/outfit/job/bos/f13paladin

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13paladin
	name = "Paladin"
	jobtype = /datum/job/bos/f13paladin
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/power_armor/t45d
	head = 			/obj/item/clothing/head/helmet/f13/power_armor/t45d
	uniform = 		/obj/item/clothing/under/f13/recon
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	belt = 			/obj/item/storage/belt/military
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		)

/datum/job/bos/f13paladin/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")

/datum/outfit/loadout/paladina
	name = "Firesupport Junior Paladin"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/assault_carbine=1,
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/ammo_box/magazine/m556/rifle=2,
		/obj/item/clothing/accessory/bos/juniorpaladin=1
		)

/datum/outfit/loadout/paladinb
	name = "Frontline Junior Paladin"
	backpack_contents = list(
		/obj/item/gun/energy/laser/rcw=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/ecp=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/clothing/accessory/bos/juniorpaladin=1
		)

/datum/outfit/loadout/paladinc
	name = "Firesupport Paladin"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/assault_carbine=1,
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/ammo_box/magazine/m556/rifle=2,
		/obj/item/clothing/accessory/bos/paladin=1
		)

/datum/outfit/loadout/paladind
	name = "Frontline Paladin"
	backpack_contents = list(
		/obj/item/gun/energy/laser/rcw=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/ecp=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/clothing/accessory/bos/paladin=1
		)

/*
Senior Scribe
*/

/datum/job/bos/f13seniorscribe
	title = "Senior Scribe"
	flag = F13SENIORSCRIBE
	faction = "BOS"
	total_positions = 2
	spawn_positions = 2
	description = "You are the bunker's seniormost medical and scientific expert in the bunker, sans the Headscribe themselves. You are trained in both medicine and engineering, while also having extensive studies of the old world to assist in pinpointing what technology would be useful to the Brotherhood and its interests."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Head Scribe"
	selection_color = "#95a5a6"

	outfit = /datum/outfit/job/bos/f13seniorscribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13seniorscribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_CHEMWHIZ)

/datum/outfit/job/bos/f13seniorscribe
	name = "Senior Scribe"
	jobtype = /datum/job/bos/f13seniorscribe
	chemwhiz = TRUE
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	shoes = 		/obj/item/clothing/shoes/combat
	belt = 			/obj/item/storage/belt/utility/full/engi
	accessory = 	/obj/item/clothing/accessory/bos/seniorscribe
	suit = 			/obj/item/clothing/suit/f13/seniorscribe
	id = 			/obj/item/card/id/dogtag
	glasses =		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/reagent_containers/hypospray/CMO=1)

/*
Scribe
*/

/datum/job/bos/f13scribe
	title = "Scribe"
	flag = F13SCRIBE
	faction = "BOS"
	total_positions = 3
	spawn_positions = 3
	description = "You answer directly to the Head Scribe, tasked with researching and reverse-engineering recovered technologies from the old world, while maintaining the brotherhoods scientific archives. You may also be given a trainee to assign duties to."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Head Scribe"
	selection_color = "#95a5a6"

	loadout_options = list(
	/datum/outfit/loadout/scribea,
	/datum/outfit/loadout/scribeb,
	)

	outfit = /datum/outfit/job/bos/f13scribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13scribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_CHEMWHIZ)

/datum/outfit/job/bos/f13scribe
	name = "Scribe"
	jobtype = /datum/job/bos/f13scribe
	chemwhiz = TRUE
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	shoes = 		/obj/item/clothing/shoes/combat
	belt = 			/obj/item/storage/belt/utility/full/engi
	suit = 			/obj/item/clothing/suit/f13/scribe
	id = 			/obj/item/card/id/dogtag
	glasses =		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2)

/datum/outfit/loadout/scribea
	name = "Junior Scribe"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorscribe=1,
		)

/datum/outfit/loadout/scribeb
	name = "Scribe"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/scribe=1,
		)

/*
Senior Knight
*/

datum/job/bos/f13seniorknight
	title = "Senior Knight"
	flag = F13SENIORKNIGHT
	faction = "BOS"
	total_positions = 2
	spawn_positions = 2
	description = "You report directly to the Knight-Captain. You are the Brotherhood Senior Knight. Having served the Knight Caste for some time now, you are versatile and experienced in both basic combat and repairs, and also a primary maintainer of the Bunker's facilities. As your seniormost Knight, you may be assigned initiates or Junior Knights to mentor."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Knight-Captain"
	selection_color = "#95a5a6"

	loadout_options = list(
	/datum/outfit/loadout/sknighta, //AER9
	/datum/outfit/loadout/sknightb, //lever shotgun and teleshield
	)

	outfit = /datum/outfit/job/bos/f13seniorknight

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/job/bos/f13seniorknight/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Master Gunsmith")

/datum/outfit/job/bos/f13seniorknight
	name = "Senior Knight"
	jobtype = /datum/job/bos/f13seniorknight
	suit = 			/obj/item/clothing/suit/armor/f13/combat/brotherhood/senior
	accessory = 	/obj/item/clothing/accessory/bos/seniorknight
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	glasses =       /obj/item/clothing/glasses/night
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	belt = 			/obj/item/storage/belt/military
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	id = 			/obj/item/card/id/dogtag
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	backpack_contents = list(
		/obj/item/gun/energy/laser/plasma/glock=1, \
		/obj/item/stock_parts/cell/ammo/ec=2)

/datum/outfit/loadout/sknighta
	name = "Footknight"
	backpack_contents = list(
		/obj/item/gun/energy/laser/rcw=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/ecp=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		)

/datum/outfit/loadout/sknightb
	name = "Knight-Defender"
	backpack_contents = list(
		/obj/item/gun/ballistic/shotgun/riot=1,
		/obj/item/storage/box/lethalshot=2,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/gun/energy/laser/pistol=1
		)

/*
Knight
*/

/datum/job/bos/f13knight
	title = "Knight"
	flag = F13KNIGHT
	faction = "BOS"
	total_positions = 3
	spawn_positions = 3
	description = " You are the Brotherhood Knight, the veritable lifeblood of your organization. You are a versatile and adaptably trained person: from your primary duties of weapon & armor repair to basic combat, survival and stealth skills, the only thing you lack is proper experience. You are also in charge of Initiates."
	forbids = "TheBrotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Knight-Captain, or Senior Knight"
	selection_color = "#95a5a6"

	loadout_options = list(
	/datum/outfit/loadout/knighta, //AER9
	/datum/outfit/loadout/knightb, //lever shotgun and teleshield
	/datum/outfit/loadout/knightc,
	/datum/outfit/loadout/knightd
	)

	outfit = /datum/outfit/job/bos/f13knight

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13knight
	name = "Knight"
	jobtype = /datum/job/bos/f13knight
	suit = 			/obj/item/clothing/suit/armor/f13/combat/brotherhood
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	belt = 			/obj/item/storage/belt/military
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood
	id = 			/obj/item/card/id/dogtag
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/stock_parts/cell/ammo/ec=2)

/datum/outfit/loadout/knighta
	name = "Junior Footknight"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorknight=1,
		/obj/item/gun/energy/laser/aer9=1,
		/obj/item/stock_parts/cell/ammo/mfc=2
		)

/datum/outfit/loadout/knightb
	name = "Junior Knight-Defender"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorknight=1,
		/obj/item/gun/ballistic/shotgun/trench=1,
		/obj/item/storage/box/lethalshot=2
		)

/datum/outfit/loadout/knightc
	name = "Footknight"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/knight=1,
		/obj/item/gun/energy/laser/aer9=1,
		/obj/item/stock_parts/cell/ammo/mfc=2
		)

/datum/outfit/loadout/knightd
	name = "Knight-Defender"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/knight=1,
		/obj/item/gun/ballistic/shotgun/trench=1,
		/obj/item/storage/box/lethalshot=2,
		/obj/item/shield/riot/tele=1
		)
/*
Initiate
*/

/datum/job/bos/f13initiate
	title = "Initiate"
	flag = F13INITIATE
	faction = "BOS"
	total_positions = 3
	spawn_positions = 3
	description = "Either recently inducted or born into the Brotherhood, you have since proven yourself worthy of assignment to the Chapter. You are to assist your superiors and receive training how they deem fit. You are NEVER allowed to leave the bunker without the direct supervision of a superior; doing so may result in exile or transferrence back the Valley."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the scribes, knights, or Paladins"
	selection_color = "#95a5a6"
	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	loadout_options = list(
	/datum/outfit/loadout/initiatek, //AEP7 and Engibelt with combat armor, no helmet
	/datum/outfit/loadout/initiates, //Medical belt and chem knowledge
	)

	outfit = /datum/outfit/job/bos/f13initiate

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13initiate
	name = "Initiate"
	jobtype = /datum/job/bos/f13initiate
	backpack = /obj/item/storage/backpack/explorer
	ears = 			/obj/item/radio/headset/headset_bos
	uniform =		/obj/item/clothing/under/syndicate/brotherhood
	shoes = 		/obj/item/clothing/shoes/combat/swat
	gloves = 		/obj/item/clothing/gloves/combat

/datum/outfit/loadout/initiatek
	name = "Knight-Aspirant"
	belt = 			/obj/item/storage/belt/utility/full/engi
	suit = 			/obj/item/clothing/suit/armor/f13/combat/brotherhood
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/book/granter/trait/gunsmith_one=1,
		/obj/item/book/granter/trait/gunsmith_two=1,
		/obj/item/clothing/accessory/bos/initiateK=1
		)

/datum/outfit/loadout/initiates
	name = "Scribe-Aspirant"
	belt =			/obj/item/storage/belt/medical
	suit =			/obj/item/clothing/suit/toggle/labcoat
	glasses =		/obj/item/clothing/glasses/science
	gloves =		/obj/item/clothing/gloves/color/latex
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/clothing/accessory/bos/initiateS=1
		)

/*
Off-Duty
*/

/datum/job/bos/f13offdutybos
	title = "Off-Duty"
	flag = F13OFFDUTYBOS
	faction = "BOS"
	total_positions = 8
	spawn_positions = 8
	description = "Whether operating in disguise or simply enjoying time from the off-shift, you are still a member of the Brotherhood and must abide by the Codex and follow the orders of your superiors. That being said, while off-duty your orders do not take precedence and you should resist issuing them when another of your rank is currently on duty, and if one does not exist, commit to going on-duty. You have a duty to safeguard what equipment you are given, especially your holotags. Ideally, you should be paired with one or more fellow off-duty members; and you would know where the bunker in the region is."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "your superior rank."
	selection_color = "#95a5a6"

	/*
	loadout_options = list(
	/datum/outfit/loadout/offa, //Junior Knight
	/datum/outfit/loadout/offb, //Knight
	/datum/outfit/loadout/offc, //Senior Knight
	/datum/outfit/loadout/offd, //Knight-Captain
	/datum/outfit/loadout/offe, //Junior Scribe
	/datum/outfit/loadout/offf, //Scribe
	/datum/outfit/loadout/offg, //Senior Scribe
	/datum/outfit/loadout/offh, //Head Scribe
	/datum/outfit/loadout/offi, //Junior Paladin
	/datum/outfit/loadout/offj, //Paladin
	/datum/outfit/loadout/offk, //Senior Paladin
	/datum/outfit/loadout/offl, //Sentinel
	)
	*/

	outfit = /datum/outfit/job/bos/f13offdutybos

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13offdutybos
	name = "Off-Duty"
	jobtype = /datum/job/bos/f13offdutybos
	backpack = /obj/item/storage/backpack
	ears = 			/obj/item/radio/headset
	uniform =		/obj/item/clothing/under/syndicate
	belt = 			/obj/item/storage/belt/military/army
	shoes = 		/obj/item/clothing/shoes/combat
	gloves = 		/obj/item/clothing/gloves/combat
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/encryptionkey/headset_bos=1,
		)

/*
/datum/outfit/loadout/offa
	name = "Junior Knight"
	head = /obj/item/clothing/head/helmet/f13/combat
	suit = /obj/item/clothing/suit/armor/f13/combat
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/clothing/accessory/bos/juniorknight=1
		)

/datum/outfit/loadout/offb
	name = "Knight"
	head = /obj/item/clothing/head/helmet/f13/combat
	suit = /obj/item/clothing/suit/armor/f13/combat
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/clothing/accessory/bos/knight=1
		)

/datum/outfit/loadout/offc
	name = "Senior Knight"
	head = /obj/item/clothing/head/helmet/f13/combat
	suit = /obj/item/clothing/suit/armor/f13/combat
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/clothing/accessory/bos/seniorknight=1
		)

/datum/outfit/loadout/offd
	name = "Knight-Captain"
	head = /obj/item/clothing/head/helmet/f13/combat/mk2
	suit = /obj/item/clothing/suit/armor/f13/combat/mk2
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/deagle/camo=1,
		/obj/item/ammo_box/magazine/a50=2,
		/obj/item/clothing/accessory/bos/knightcaptain=1
		)

/datum/outfit/loadout/offe
	name = "Junior Scribe"
	suit = /obj/item/clothing/suit/armor/f13/battlecoat
	backpack_contents = list(
		/obj/item/gun/energy/laser/wattz/magneto=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/juniorscribe=1
		)

/datum/outfit/loadout/offf
	name = "Scribe"
	suit = /obj/item/clothing/suit/armor/f13/battlecoat
	backpack_contents = list(
		/obj/item/gun/energy/laser/wattz/magneto=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/scribe=1
		)

/datum/outfit/loadout/offg
	name = "Senior Scribe"
	suit = /obj/item/clothing/suit/armor/f13/battlecoat
	backpack_contents = list(
		/obj/item/gun/energy/laser/wattz/magneto=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/seniorscribe=1
		)

/datum/outfit/loadout/offh
	name = "Head Scribe"
	suit = /obj/item/clothing/suit/armor/f13/battlecoat
	backpack_contents = list(
		/obj/item/gun/energy/ionrifle/carbine=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/headscribe=1
		)

/datum/outfit/loadout/offi
	name = "Junior Paladin"
	suit = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat
	head = /obj/item/clothing/head/helmet/knight/fluff/metal
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/juniorpaladin=1
		)

/datum/outfit/loadout/offj
	name = "Paladin"
	suit = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat
	head = /obj/item/clothing/head/helmet/knight/fluff/metal
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/paladin=1
		)

/datum/outfit/loadout/offk
	name = "Senior Paladin"
	suit = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat
	head = /obj/item/clothing/head/helmet/knight/fluff/metal
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/seniorpaladin=1
		)

/datum/outfit/loadout/offl
	name = "Sentinel"
	suit = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/riotpolice
	head = /obj/item/clothing/head/helmet/knight/fluff/metal/reinforced
	backpack_contents = list(
		/obj/item/gun/energy/laser/plasma/glock=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/clothing/accessory/bos/sentinel=1
		)
*/