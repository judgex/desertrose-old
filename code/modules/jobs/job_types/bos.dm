/*
BoS access:
Main doors: ACCESS_CAPTAIN 20
*/

/datum/job/bos //do NOT use this for anything, it's just to store faction datums.
	department_flag = BOS
	selection_color = "#95a5a6"
	exp_type = EXP_TYPE_BROTHERHOOD
	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	outfit = /datum/outfit/job/bos/

/datum/outfit/job/bos
	name = "bosdatums"
	jobtype = /datum/job/bos
	backpack = /obj/item/storage/backpack/explorer
	ears = /obj/item/radio/headset/headset_bos
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/storage/belt/military/army
	glasses = /obj/item/clothing/glasses/night
	id = /obj/item/card/id/dogtag

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
	exp_requirements = 2700
	total_positions = 0
	spawn_positions = 0
	outfit = /datum/outfit/job/bos/f13elder

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13elder
	name = "Elder"
	jobtype = /datum/job/bos/f13elder
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/f13/elder
	suit_store =	/obj/item/gun/energy/laser/plasma
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
	exp_requirements = 1800

	outfit = /datum/outfit/job/bos/f13sentinel

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

	loadout_options = list(
	/datum/outfit/loadout/sentstand, //Tribeam laser and 10mm pistol
	/datum/outfit/loadout/sentvet, //Gauss rifle and AEP7
	/datum/outfit/loadout/sentshot //Riot shotgun, magnum shot, and antique laser
	)


/datum/outfit/job/bos/f13sentinel
	name = "Sentinel"
	jobtype = /datum/job/bos/f13sentinel
	pa_wear = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/power_armor/t51b
	head = 			/obj/item/clothing/head/helmet/power_armor/t51b
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
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
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/gun/ballistic/automatic/m72=1,
		/obj/item/ammo_box/magazine/m2mm=1,
		/obj/item/gun/energy/laser/pistol=1)

/datum/outfit/loadout/sentshot
	name = "Figurehead Sentinel"
	backpack_contents = list(
		/obj/item/gun/energy/laser/captain=1)


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
	exp_requirements = 600
	exp_type = EXP_TYPE_SCRIBE

	loadout_options = list(
	/datum/outfit/loadout/hsstand, //Needler, pen, and medbeam
	/datum/outfit/loadout/hspract //AEP7 and hypospray
	)

	outfit = /datum/outfit/job/bos/f13headscribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13headscribe
	name = "Head Scribe"
	jobtype = /datum/job/bos/f13headscribe
	chemwhiz = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/headscribe
	belt = 			/obj/item/storage/belt/utility/full/engi
	backpack_contents = list(
		/obj/item/shield/energy=1, \
		/obj/item/kitchen/knife/combat=1 \
		)


/datum/outfit/loadout/hsstand
	name = "Administrative Leader"
	l_hand = /obj/item/gun/ballistic/revolver/needler
	backpack_contents = list(
		/obj/item/ammo_box/needleap=2,
		/obj/item/pen/fountain/captain=1,
		/obj/item/gun/medbeam=1,
		)

/datum/outfit/loadout/hspract
	name = "Medicinal Expert"
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
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
	supervisors = "the elder"
	selection_color = "#7f8c8d"
	exp_requirements = 600

	loadout_options = list(
	/datum/outfit/loadout/capstand, //AER9 and 10mm pistol
	/datum/outfit/loadout/capsap, //glock86a and 2 blocks of c4
	/datum/outfit/loadout/capalt //Carbine and AEP7
	)

	outfit = /datum/outfit/job/bos/f13knightcap

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13knightcap
	name = "Knight-Captain"
	jobtype = /datum/job/bos/f13knightcap
	pa_wear = TRUE
	chemwhiz = TRUE
	suit = 			/obj/item/clothing/suit/armor/f13/combat/knightcap
	belt = 			/obj/item/storage/belt/military/army
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	head =			/obj/item/clothing/head/helmet/f13/combat/knightcap
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		)


/datum/job/bos/f13knightcap/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")



/datum/outfit/loadout/capstand
	name = "Knight-Captain"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer9=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/mfc=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2
		)

/datum/outfit/loadout/capsap
	name = "Knight-Captain Sapper"
	backpack_contents = list(
		/obj/item/gun/energy/laser/plasma/glock=1,
		/obj/item/grenade/plastic/c4=2
		)

/datum/outfit/loadout/capalt
	name = "Knight-Captain Alternate"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/assault_carbine=1,
		/obj/item/ammo_box/magazine/m556/rifle/assault=2,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/gun/energy/laser/pistol=1
		)
/*
Paladin
*/

/datum/job/bos/f13paladin
	title = "Paladin"
	flag = F13PALADIN
	faction = "BOS"
	total_positions = 2
	spawn_positions = 2
	description = "You answer directly to the Sentinel. You are this Chapter's main line of defense and offense; highly trained in combat and weaponry though with little practical field experience, you are eager to prove your worth to the Brotherhood. Your primary duties are defense and surface operations."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Sentinel"
	selection_color = "#95a5a6"
	exp_requirements = 900

	loadout_options = list(
	/datum/outfit/loadout/paladine, //AER9 and n99
	/datum/outfit/loadout/paladinb, //Carbine and AEP7
	)

	outfit = /datum/outfit/job/bos/f13paladin

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13paladin
	name = "Paladin"
	jobtype = /datum/job/bos/f13paladin
	pa_wear = TRUE

	suit = 			/obj/item/clothing/suit/armor/f13/power_armor/t45d
	head = 			/obj/item/clothing/head/helmet/power_armor/t45d
	mask =			/obj/item/clothing/mask/gas/sechailer/swat
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		)

/datum/job/bos/f13paladin/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")

/datum/outfit/loadout/paladine
	name = "Paladin Standard"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer9=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/stock_parts/cell/ammo/mfc=2,
		/obj/item/ammo_box/magazine/m10mm_adv=2
		)

/datum/outfit/loadout/paladinb
	name = "Paladin Alternate"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/assault_carbine=1,
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2,
		/obj/item/ammo_box/magazine/m556/rifle/assault=2
		)
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
	exp_requirements = 600

	outfit = /datum/outfit/job/bos/f13scribe

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13scribe
	name = "Scribe"
	jobtype = /datum/job/bos/f13scribe
	chemwhiz = TRUE
	shoes = 		/obj/item/clothing/shoes/combat
	suit = 			/obj/item/clothing/suit/f13/scribe
	belt = 			/obj/item/storage/belt/utility/full/engi
	id = 			/obj/item/card/id/dogtag
	glasses =		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2) //super paks not in yet
	//PA training not in yet

/*
Knight
*/

/datum/job/bos/f13knight
	title = "Knight"
	flag = F13KNIGHT
	faction = "BOS"
	total_positions = 2
	spawn_positions = 2
	description = "You report directly to the Knight-Captain. You are the Brotherhood Knight, the veritable lifeblood of your organization. You are a versatile and adaptably trained person: from your primary duties of weapon & armor repair to basic combat, survival and stealth skills, the only thing you lack is proper experience."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the Knight-Captain"
	selection_color = "#95a5a6"
	exp_requirements = 1800
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/bos/f13knight

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13knight
	name = "Knight"
	jobtype = /datum/job/bos/f13knight
	suit = 			/obj/item/clothing/suit/armor/f13/combat/brotherhood
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood
	suit_store =	/obj/item/gun/energy/laser/aer9
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc=2, \
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/stock_parts/cell/ammo/ec=2)
/*
Initiate
*/

/datum/job/bos/f13initiate
	title = "Initiate"
	flag = F13INITIATE
	faction = "BOS"
	total_positions = 3
	spawn_positions = 3
	description = "You are the Brotherhood Initiate. Either recently inducted or born into the Brotherhood, you have recently proven yourself worthy of assignment to the Chapter. You are to assist your superiors and receive training how they deem fit. You are NEVER allowed to leave the bunker without the direct supervision of a superior."
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."
	supervisors = "the scribes"
	selection_color = "#95a5a6"
	exp_requirements = 1800
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/bos/f13initiate

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/bos/f13initiate
	name = "Initiate"
	jobtype = /datum/job/bos/f13scribe
	chemwhiz = TRUE
	backpack = /obj/item/storage/backpack/explorer
	ears = 			/obj/item/radio/headset/headset_bos
	uniform =		/obj/item/clothing/under/f13/recon
	shoes = 		/obj/item/clothing/shoes/combat/swat
	gloves = 		/obj/item/clothing/gloves/combat
	belt = 			/obj/item/storage/belt/utility/full/engi
	glasses =		/obj/item/clothing/glasses/sunglasses/big
	id = 			/obj/item/card/id/dogtag
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1, \
		/obj/item/stock_parts/cell/ammo/ec=2)
