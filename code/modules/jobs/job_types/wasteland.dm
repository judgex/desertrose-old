/datum/job/wasteland
	department_flag = WASTELAND

/*
Coven Stuff
*/

/datum/job/wasteland/covenwitch
	title = "Coven Witch"
	flag = EVENTCOVEN
	faction = "Coven"
	total_positions = 0
	spawn_positions = 0
	description = "You are a Witch of the Iron Coven. As the Witch you answer directly to the Exalted and the Matriarchs. The commanding officer in this region is a Matriarch by the name of The Harbinger. Circumstances may change the identity of the local commanding officer, but you will forevermore answer to the bidding of any and all Matriarchs. You are the equivilent of a Brotherhood Knight in rank, but your role has changed in the century since your people betrayed the Brotherhood of Steel. Witches are the primary military force of your organization. From far away to the east, in Dallas, New Orleans, and the sprawling metropolis that is Miami, you have come to do the bidding of the Grand Matriarch, your holy leader. She orders that the people of this region, like any other, be subjugated to her will. Your job is to organize missions to subvert the power of the local factions, spread scripture, protect and recruit citizens, and disperse technology to the people. The Matriarchs of the Coven have given you the permission to recruit and command your own squad, given that they eventually submit to the Iron Church's FEV treatment. You spread the scripture of the Iron Codex, you distribute technology to the masses and though you are in open war with the people of this area, it is your sworn duty to preserve all life in the name of fulfilling the Prophecy. All lives lost are a tragedy. In the eyes of your superiors, all deserve a chance to bask in the shadow of the Void."
	forbids = ""
	enforces = ""
	supervisors = "Exalted and the Matriarchs."
	selection_color = "#95a5a6"

	outfit = /datum/outfit/job/wasteland/covenwitch

/datum/outfit/job/wasteland/covenwitch
	name = "Coven Witch"
	jobtype = /datum/job/wasteland/covenwitch
	backpack = /obj/item/storage/backpack/satchel/leather
	ears = 			/obj/item/radio/headset/headset_sci
	glasses = 		/obj/item/clothing/glasses/night
	mask = 			/obj/item/clothing/mask/gas/syndicate
	uniform =		/obj/item/clothing/under/syndicate/combat
	suit = 			/obj/item/clothing/suit/hooded/cloak/goliath
	belt = 			/obj/item/storage/belt/military/army
	shoes = 		/obj/item/clothing/shoes/plate/red
	gloves = 		/obj/item/clothing/gloves/plate/red
	id = 			/obj/item/card/id/syndicate/anyone
	l_hand =		/obj/item/nullrod/claymore/darkblade
	suit_store =  	/obj/item/gun/ballistic/automatic/pistol/suppressed

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/flashlight/flare/culttorch=1,
		/obj/item/grenade/flashbang=1,
		/obj/item/pda=1,
		/obj/item/reagent_containers/glass/bottle/FEV_solution=1
		)
/*
Great Khan
*/

/datum/job/wasteland/f13pusher
	title = "Great Khan"
	flag = F13PUSHER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	total_positions = 6
	spawn_positions = 6
	description = "You are no common raider or tribal settler, for you are a Great Khan. Your ancestry is that of fierce warriors and noble chieftans, whose rites and sagas tell of blood soaked battlefields and great sacrifice for your tribe. At least, this was once the case: after the massacre at Bitter Springs by the NCR, your people have lost much of their strength - now you and many other Khans travel west of Vegas through Red Rock Canyon in the hopes of settling in the region of Yuma."
	supervisors = "your gang leadership"
	selection_color = "#ff915e"
	exp_requirements = 300
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/wasteland/f13pusher

	access = list(ACCESS_KHAN)
	minimal_access = list(ACCESS_KHAN)

	loadout_options = list(
	/datum/outfit/loadout/pusher,
	/datum/outfit/loadout/enforcer,
	/datum/outfit/loadout/brawler)

/datum/outfit/job/wasteland/f13pusher
	name = "Great Khan"
	jobtype = /datum/job/wasteland/f13pusher
	id = 		/obj/item/card/id/khantattoo
	ears = 		/obj/item/radio/headset
	belt = 		/obj/item/claymore/machete
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	uniform = /obj/item/clothing/under/f13/khan


/datum/outfit/job/wasteland/f13pusher/pre_equip(mob/living/carbon/human/H)
	..()
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/bag/money/small/khan
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/reagent_containers/pill/patch/jet=2, \
		/obj/item/reagent_containers/syringe/medx=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1)
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	suit_store = pick(
		/obj/item/gun/ballistic/shotgun/automatic/hunting/trail, \
		/obj/item/gun/ballistic/shotgun/hunting, \
		/obj/item/gun/ballistic/revolver/m29, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil)
	head = /obj/item/clothing/head/helmet/f13/khan
	shoes = /obj/item/clothing/shoes/f13/khan


/datum/outfit/job/wasteland/f13pusher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/greatkhans/GK = GLOB.greatkhans
		GLOB.all_gangs |= GK
		GK.add_member(H)
		H.gang = GK

/datum/outfit/loadout/pusher
	name = "Chemist"
	backpack_contents = list(
		/obj/item/reagent_containers/glass/beaker/large=2, \
		/obj/item/book/granter/trait/chemistry=1)

/datum/outfit/loadout/enforcer
	name = "Enforcer"
	suit_store = /obj/item/gun/ballistic/shotgun/trench
	backpack_contents = list(
		/obj/item/storage/box/lethalshot=1, \
		/obj/item/storage/box/rubbershot/beanbag=1, \
		/obj/item/restraints/legcuffs/bola/tactical=1, \
		/obj/item/restraints/handcuffs=2)

/datum/outfit/loadout/brawler
	name = "Brawler"
	gloves =	/obj/item/melee/unarmed/brass/spiked
	backpack_contents = list(
		/obj/item/twohanded/baseball/spiked=1, \
		/obj/item/reagent_containers/pill/patch/healpoultice=2)

/*
Raider
*/

/datum/job/wasteland/f13raider
	title = "Outlaw"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	social_faction = "Raiders"
	total_positions = 15
	spawn_positions = 15
	description = "You are an undesirable figure of some kind- perhaps a corrupt official, or a cannibalistic bartender, or a devious conman, to name a few examples. You have more freedom than anyone else in the wastes, and are not bound by the same moral code as others, but though you may only be interested in self-gain, you still have a responsibility to make your time here interesting, fun, and engaging for others- this means that whatever path you pursue should be more nuanced and flavorful than simple highway robbery or slavery. (Adminhelp if you require help setting up your character for the round.)"
	supervisors = "Your desire to make things interesting and fun"
	selection_color = "#ff4747"

	outfit = /datum/outfit/job/wasteland/f13raider

	access = list()
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/raider_supafly,
	/datum/outfit/loadout/raider_yankee,
	/datum/outfit/loadout/raider_blast,
	/datum/outfit/loadout/raider_sadist,
	/datum/outfit/loadout/raider_painspike,
	/datum/outfit/loadout/raider_badlands,
	/datum/outfit/loadout/raider_bos,
	/datum/outfit/loadout/raider_ncr,
	/datum/outfit/loadout/raider_legion,
	/datum/outfit/loadout/raider_sheriff,
	/datum/outfit/loadout/raider_vault,
	/datum/outfit/loadout/raider_mafia)

/datum/outfit/job/wasteland/f13raider
	name = "Outlaw"
	jobtype = /datum/job/wasteland/f13raider

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/wasteland/f13raider/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/raider/supafly,\
		/obj/item/clothing/suit/armor/f13/raider/yankee, \
		/obj/item/clothing/suit/armor/f13/raider/sadist, \
		/obj/item/clothing/suit/armor/f13/raider/blastmaster, \
		/obj/item/clothing/suit/armor/f13/raider/badlands, \
		/obj/item/clothing/suit/armor/f13/raider/painspike)
	if(prob(10))
		mask = pick(
			/obj/item/clothing/mask/bandana/red,\
			/obj/item/clothing/mask/bandana/blue,\
			/obj/item/clothing/mask/bandana/green,\
			/obj/item/clothing/mask/bandana/gold,\
			/obj/item/clothing/mask/bandana/black,\
			/obj/item/clothing/mask/bandana/skull)
	head = pick(
		/obj/item/clothing/head/sombrero,\
		/obj/item/clothing/head/helmet/f13/raider,\
		/obj/item/clothing/head/helmet/f13/raider/eyebot,\
		/obj/item/clothing/head/helmet/f13/raider/arclight,\
		/obj/item/clothing/head/helmet/f13/raider/blastmaster,\
		/obj/item/clothing/head/helmet/f13/raider/yankee,\
		/obj/item/clothing/head/helmet/f13/raider/psychotic,\
		/obj/item/clothing/head/helmet/f13/fiend)
	r_pocket = /obj/item/flashlight/flare
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads)
	gloves = /obj/item/clothing/gloves/f13/handwraps
	backpack_contents = list(
		/obj/item/restraints/handcuffs=2, \
		/obj/item/claymore/machete/pipe=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/storage/bag/money/small/raider=1)

	suit_store = pick(
		/obj/item/gun/ballistic/revolver/detective, \
		/obj/item/gun/ballistic/shotgun/remington, \
		/obj/item/gun/ballistic/revolver/zipgun, \
		/obj/item/gun/ballistic/revolver/pipe_rifle, \
		/obj/item/gun/ballistic/revolver/caravan_shotgun, \
		/obj/item/gun/ballistic/revolver/single_shotgun)

/datum/outfit/job/wasteland/f13raider/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	H.social_faction = "Raiders"
	H.verbs |= /mob/living/proc/creategang

/datum/outfit/loadout/raider_supafly
	name = "Supa-fly"
	suit = /obj/item/clothing/suit/armor/f13/raider/supafly
	head = /obj/item/clothing/head/helmet/f13/raider
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/mini_uzi=1,
		/obj/item/ammo_box/magazine/uzim9mm=3,
		/obj/item/kitchen/knife/combat=1,
		/obj/item/storage/pill_bottle/dice=1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis=1)

/datum/outfit/loadout/raider_yankee
	name = "Yankee"
	suit = /obj/item/clothing/suit/armor/f13/raider/yankee
	head = /obj/item/clothing/head/helmet/f13/raider/yankee
	backpack_contents = list(
		/obj/item/twohanded/baseball/spiked=1,
		/obj/item/gun/ballistic/shotgun/remington/scoped=1,
		/obj/item/ammo_box/a308=2,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis=1,
		/obj/item/megaphone=1)

/datum/outfit/loadout/raider_blast
	name = "Blastmaster"
	suit = /obj/item/clothing/suit/armor/f13/raider/blastmaster
	head = /obj/item/clothing/head/helmet/f13/raider/blastmaster
	backpack_contents = list(
		/obj/item/twohanded/fireaxe=1,
		/obj/item/gun/ballistic/automatic/pistol/n99/pers/glock=1,
		/obj/item/grenade/iedcasing=2,
		/obj/item/ammo_box/magazine/m10mm_auto = 2)

/datum/outfit/loadout/raider_sadist
	name = "Sadist"
	suit = /obj/item/clothing/suit/armor/f13/raider/sadist
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/ammo_box/m44 = 2,
		/obj/item/clothing/mask/gas/explorer/folded=1,
		/obj/item/storage/belt/tribe_quiver = 1,
		/obj/item/twohanded/spear = 1)

/datum/outfit/loadout/raider_badlands
	name = "Badlands"
	suit = /obj/item/clothing/suit/armor/f13/raider/badlands
	head = /obj/item/clothing/head/helmet/f13/fiend
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical=1,
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
		/obj/item/ammo_box/magazine/m45 = 2,
		/obj/item/reagent_containers/hypospray/medipen/psycho=2,
		/obj/item/reagent_containers/pill/patch/turbo=1)

/datum/outfit/loadout/raider_painspike
	name = "Painspike"
	suit = /obj/item/clothing/suit/armor/f13/raider/painspike
	head = /obj/item/clothing/head/helmet/f13/raider/psychotic
	backpack_contents = list(
		/obj/item/gun/ballistic/shotgun/trench=1,
		/obj/item/storage/box/lethalshot=1,
		/obj/item/storage/box/beanbag=1,
		/obj/item/claymore/machete/pipe/tireiron=1,
		/obj/item/claymore/machete/pipe/pan=1,
		/obj/item/grenade/chem_grenade/cleaner=1)

/datum/outfit/loadout/raider_bos
	name = "Brotherhood Exile"
	suit = /obj/item/clothing/suit/armor/f13/exile/bosexile
	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/rusted/brokenholodog
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol=1,
		/obj/item/stock_parts/cell/ammo/ec=2)

/datum/outfit/loadout/raider_ncr
	name = "NCR Deserter"
	suit = /obj/item/clothing/suit/armor/f13/exile/ncrexile
	uniform = /obj/item/clothing/under/f13/exile
	id = /obj/item/card/id/rusted
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/marksman/servicerifle=1,
		/obj/item/ammo_box/magazine/m556/rifle=3)

/datum/outfit/loadout/raider_legion
	name = "Punished Legionnaire"
	suit = /obj/item/clothing/suit/armor/f13/exile/legexile
	uniform = /obj/item/clothing/under/f13/exile/legion
	id = /obj/item/card/id/rusted/rustedmedallion
	backpack_contents = list(
		/obj/item/claymore/machete/gladius=1,
		/obj/item/restraints/legcuffs/bola=2,
		/obj/item/storage/backpack/spearquiver=1)

/datum/outfit/loadout/raider_sheriff
	name = "Desperado"
	suit = /obj/item/clothing/suit/armor/vest/leather
	uniform = /obj/item/clothing/under/syndicate/tacticool
	head = /obj/item/clothing/head/helmet/f13/brahmincowboyhat
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29=1,
		/obj/item/ammo_box/m44=2,
		/obj/item/gun/ballistic/shotgun/automatic/hunting/cowboy=1,
		/obj/item/ammo_box/tube/a357=2)

/datum/outfit/loadout/raider_mafia
    name = "Town Mafia"
    suit = /obj/item/clothing/suit/armor/f13/leather_jacket
    uniform = /obj/item/clothing/under/f13/bennys
    glasses = /obj/item/clothing/glasses/sunglasses
    shoes = /obj/item/clothing/shoes/f13/fancy
    backpack_contents = list(
        /obj/item/gun/ballistic/automatic/pistol/ninemil/mafia=1,
        /obj/item/ammo_box/magazine/m9mm=2,
		/obj/item/card/id/dogtag/town/mafia=1,
        /obj/item/toy/cards/deck=1)

/datum/outfit/loadout/raider_vault
	name = "Vault Outcast"
	suit = /obj/item/clothing/suit/armor/f13/leatherarmor
	uniform = /obj/item/clothing/under/f13/exile/vault
	id = /obj/item/card/id/rusted/fadedvaultid
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=3)

/datum/job/wasteland/f13wastelander
	title = "Wastelander"
	flag = F13WASTELANDER
	faction = "Wastelander"
	total_positions = -1
	spawn_positions = -1
	description = "You travelled far to arrive at the ruined town of Pahrump, a bleak paradise far from the troubles of the Mojave Conflict - protected by Red Rock Canyon to the east, free of the many factions vying for control over Nevada. Here in Pahrump, your story and fate is your own."
	supervisors = "no one"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13wastelander

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/vault_refugee,
	/datum/outfit/loadout/petro,
	///datum/outfit/loadout/follower,
	/datum/outfit/loadout/merchant,
	/datum/outfit/loadout/gambler,
	/datum/outfit/loadout/citizen,
	/datum/outfit/loadout/slave)

/datum/outfit/job/wasteland/f13wastelander
	name = "Wastelander"
	jobtype = /datum/job/wasteland/f13wastelander

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = pick(
		/obj/item/claymore/machete/pipe, \
		/obj/item/claymore/machete/golf, \
		/obj/item/switchblade, \
		/obj/item/kitchen/knife)
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit, \
		/obj/item/clothing/suit/f13/veteran, \
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer, \
		/obj/item/clothing/suit/armor/f13/leatherarmor)
	l_pocket = 	/obj/item/reagent_containers/food/drinks/flask
	r_pocket = /obj/item/flashlight/flare
	belt = 	/obj/item/kitchen/knife/combat/survival
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/reagent_containers/pill/radx=1, \
		/obj/item/storage/bag/money/small/wastelander)
	suit_store = pick(
	/obj/item/gun/ballistic/revolver/detective, \
	/obj/item/gun/ballistic/shotgun/remington, \
	/obj/item/gun/ballistic/revolver/zipgun, \
	/obj/item/gun/ballistic/revolver/pipe_rifle)

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	gloves = /obj/item/pda
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2)


/datum/outfit/loadout/petro
	name = "Petro"
	suit = /obj/item/clothing/suit/armor/f13/vaquero
	head = /obj/item/clothing/head/helmet/f13/vaquerohat
	uniform = /obj/item/clothing/under/f13/petrochico
	shoes = /obj/item/clothing/shoes/f13/fancy
	gloves = /obj/item/clothing/gloves/rifleman
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/colt357=2,
		/obj/item/ammo_box/a357=2)

/*
/datum/outfit/loadout/follower
	name = "Follower"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	l_hand = /obj/item/storage/firstaid/ancient
	backpack_contents =  list(
		/obj/item/gun/ballistic/automatic/pistol/m1911=1)
*/

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	suit = /obj/item/clothing/neck/cloak
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(
		/obj/item/storage/box/lethalshot=1)



/datum/outfit/loadout/gambler
	name = "Gambler"
	uniform = list(/obj/item/clothing/under/f13/cowboyg,
	/obj/item/clothing/under/f13/bennys,
	/obj/item/clothing/under/f13/formal)
	suit = /obj/item/clothing/suit/f13/cowboygvest
	shoes = /obj/item/clothing/shoes/f13/fancy
	head = list(/obj/item/clothing/head/fedora,
 	/obj/item/clothing/head/f13/gambler)
	l_hand = /obj/item/gun/ballistic/automatic/pistol/ninemil
	backpack_contents =  list(
		/obj/item/ammo_box/magazine/m9mm=2)


/datum/outfit/loadout/citizen
	name = "Legion Citizen"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	l_hand = /obj/item/shield/legion/buckler
	backpack_contents = list(
        /obj/item/claymore/machete/reinforced=1)



/datum/outfit/loadout/slave
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/caravaneer
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/orange
	l_hand = /obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/small=2)

//////////////////////////////////Locust Mercenaries////////////////////
/*
/datum/job/wasteland/f13locustcaptain
	title = "Locust Captain"
	flag = F13LOCUSTCAPTAIN
	head_announce = list("Security")
	faction = "Neutral"
	total_positions = 1
	spawn_positions = 1
	description = "You are the Captain of the Locust Mercenary Outfit of Yuma. Your job is to grab contracts and tear down anyone in your path to get the mission done"
	supervisors = "Colonel"
	req_admin_notify = 1
	outfit = /datum/outfit/job/wasteland/f13locustcaptain

/datum/outfit/job/wasteland/f13locustcaptain
	name = "Locust Captain"
	jobtype 	= /datum/job/wasteland/f13locustcaptain
	uniform		= /obj/item/clothing/under/f13/locust
	accessory 	= /obj/item/clothing/accessory/ncr/CPT
	suit 		= /obj/item/clothing/suit/armor/locustjacket
	suit_store 	= /obj/item/gun/ballistic/automatic/pistol/ninemil
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/combat/swat
	neck = 		/obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/twohanded/binocs=1)

/datum/job/wasteland/f13locustcaptain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Self-Aware")

/datum/job/wasteland/f13locust
	title = "Locust Private"
	flag = F13LOCUST
	head_announce = list("Security")
	faction = "Neutral"
	total_positions = 5
	spawn_positions = 5
	description = "You are part of the Locust Mercenary Outfit of Yuma. Your job is to grab contracts and tear down anyone in your path to get the mission done"
	supervisors = "Captain"
	req_admin_notify = 1
	outfit = /datum/outfit/job/wasteland/f13locust

/datum/outfit/job/wasteland/f13locust
	name = "Locust Private"
	jobtype 	= /datum/job/wasteland/f13locust
	uniform		= /obj/item/clothing/under/f13/locust
	suit 		= /obj/item/clothing/suit/armor/locustjacket
	suit_store 	= /obj/item/gun/ballistic/automatic/pistol/ninemil
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/combat/swat
	neck = 		/obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/twohanded/binocs=1)

/datum/job/wasteland/f13locustcaptain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Self-Aware")
*/