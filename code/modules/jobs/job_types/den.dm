/*
Town access doors
Sheriff/Deputy, Gatehouse etc: 62 ACCESS_GATEWAY
General access: 25 ACCESS_BAR
Clinic surgery/storage: 68 ACCESS_CLONING
here's a tip, go search DEFINES/access.dm
*/

/*
Mayor
*/

/datum/job/den/f13mayor
	title = "Mayor"
	flag = F13MAYOR
	department_flag = DEN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the people of the town"
	description = "The liason for the town for the deputies and land owners, you pass laws, policies based around the law and commerce that effect those local or passing through. Meanwhile with outsiders you engage in diplomatic meetings and make deals with the powers present within the Region."
	selection_color = "#d7b088"
	exp_requirements = 1080
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13mayor
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY)

/datum/outfit/job/den/f13mayor
	name = "Mayor"
	jobtype = /datum/job/den/f13mayor

	ears = 			/obj/item/radio/headset/headset_den
	id =            /obj/item/card/id/gold/mayor
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/gun/ballistic/revolver/colt357
	shoes = 		/obj/item/clothing/shoes/f13/tan
	uniform = /obj/item/clothing/under/f13/gentlesuit
	suit = /obj/item/clothing/suit/armor/f13/town/mayor
	head = /obj/item/clothing/head/f13/town/mayor
	backpack_contents = list(
		/obj/item/clothing/head/f13/town/big, \
		/obj/item/ammo_box/a357=2,
		/obj/item/pen/fountain/captain)

/*
Sheriff
*/

/datum/job/den/f13sheriff
	title = "Sheriff"
	flag = F13SHERIFF
	department_flag = DEN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mayor"
	description = "Seems like you're Johnny Law these days. Outside of the more obvious day to day tasks in dealing with local disputes and keeping the peace, you're main trade is in corpses - dead or alive... doesn't matter much to the town. Whether you obtain these bounties yourself or through the means of notorious gunslingers is up to you, just as long as you keep the road safe and your people alive."
	selection_color = "#d7b088"
	exp_requirements = 720
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13sheriff
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY)

/datum/outfit/job/den/f13sheriff
	name = "Sheriff"
	jobtype = /datum/job/den/f13sheriff

	id = /obj/item/card/id/dogtag/sheriff
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

	ears = 			/obj/item/radio/headset/headset_den
	uniform =  		/obj/item/clothing/under/f13/sheriff
	shoes = 		/obj/item/clothing/shoes/f13/cowboy
	suit = 			/obj/item/clothing/suit/armor/f13/town/sheriff
	head = 			/obj/item/clothing/head/f13/town/sheriff
	glasses =		/obj/item/clothing/glasses/sunglasses
	l_hand = 		/obj/item/gun/ballistic/shotgun/automatic/hunting/brush
	l_pocket =		/obj/item/storage/bag/money/small/den
	backpack_contents = list(
		/obj/item/storage/box/deputy_badges=1, \
		/obj/item/ammo_box/tube/c4570=2, \
		/obj/item/ammo_box/m44=2, \
		/obj/item/restraints/handcuffs=1)
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/gun/ballistic/revolver/m29

/datum/job/den/f13sheriff/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")


	//pick("grey", "white", "yellow", "purple", "brown", "whatever")
	//var/item1_type = pick( /obj/item/stack/spacecash/c10, /obj/item/stack/spacecash/c100, /obj/item/stack/spacecash/c1000, /obj/item/stack/spacecash/c20, /obj/item/stack/spacecash/c200, /obj/item/stack/spacecash/c50, /obj/item/stack/spacecash/c500)

/*
Deputy
*/

/datum/job/den/f13deputy
	title = "Deputy"
	flag = F13DEPUTY
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "Working alongside the Sheriff you've known them for a while, having worked with them under the previous Sheriff - you bagged many a bandit and raider together on the road. These days you patrol the areas outside of town, tracking down bounties on the run and keeping the settlers safe from harm."
	selection_color = "#dcba97"
	exp_requirements = 360
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13deputy
	access = list(ACCESS_BAR, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_GATEWAY)

/datum/outfit/job/den/f13deputy
	name = "Deputy"
	jobtype = /datum/job/den/f13deputy

	ears = 			/obj/item/radio/headset/headset_den
	id =            /obj/item/card/id/dogtag/deputy
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	suit = 			/obj/item/clothing/suit/armor/f13/town/deputy
	head =	/obj/item/clothing/head/f13/town/deputy
	belt = /obj/item/gun/ballistic/revolver/colt357
	shoes = 		/obj/item/clothing/shoes/f13/explorer
	uniform = /obj/item/clothing/under/f13/cowboyb
	backpack_contents = list(
		/obj/item/ammo_box/a357=2, \
		/obj/item/ammo_box/tube/m44=2, \
		/obj/item/restraints/handcuffs=1)

/*
Farmer
*/

/datum/job/den/f13farmer
	title = "Farmer"
	flag = F13FARMER
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "A local settler of Pahrump, you know a thing or two about cultivation and husbandry, making you a vital backbone of the town in growing medicines, crops and raising livestock in the service of the townsfolk."
	selection_color = "#dcba97"


	outfit = /datum/outfit/job/den/f13settler
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13farmer
	name = "Farmer"
	jobtype = /datum/job/den/f13farmer

	id = /obj/item/card/id/dogtag/town
	ears = 			/obj/item/radio/headset/headset_den
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/bag/plants
	backpack_contents = list(
		/obj/item/cultivator=1, \
		/obj/item/hatchet=1,
		/obj/item/shovel/spade=1)
	shoes = 		/obj/item/clothing/shoes/workboots


/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)

/*
Prospector
*/

/datum/job/den/f13prospector
	title = "Prospector"
	flag = F13PROSPECTOR
	department_flag = DEN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the sheriff and the mayor"
	description = "Prospecting is a complicated business, some call it scrounging or looting but there is more to it then sifting through rubble - few can boast the skills you posess in mining and delving through the ruins of pre-war America. Not many survive this line of business and the pay has always been uncertain, but perhaps today you'll find strike gold."
	selection_color = "#dcba97"
	exp_requirements = 180
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13prospector
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13prospector
	name = "Prospector"
	jobtype = /datum/job/den/f13prospector

	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_den
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/pickaxe
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/workboots
	backpack_contents = list(
		/obj/item/mining_scanner=1, \
		/obj/item/shovel=1)

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/roving, \
		/obj/item/clothing/under/f13/cowboyt)

/*
Doctor
*/

/datum/job/den/f13dendoc
	title = "Doctor"
	flag = F13DENDOC
	department_flag = DEN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the sheriff and the mayor"
	description = "Handy with a scalpel and a scanner, your expertise in the practice of medicine makes you an indespesnbile asset to the town. How you play your trade and whether it be for profit or the fortune of others rests entirely upon your shoulders."
	selection_color = "#dcba97"
	exp_requirements = 540
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/den/f13dendoc
	access = list(ACCESS_BAR, ACCESS_CLONING)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING)

/datum/outfit/job/den/f13dendoc
	name = "Doctor"
	jobtype = /datum/job/den/f13dendoc
	chemwhiz = TRUE
	uniform = /obj/item/clothing/under/f13/medic
	ears = /obj/item/radio/headset/headset_den
	neck = /obj/item/clothing/neck/stethoscope
	suit = /obj/item/clothing/suit/toggle/labcoat
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	shoes = /obj/item/clothing/shoes/sneakers/white
	id = /obj/item/card/id/dendoctor
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/storage/firstaid/regular,
		/obj/item/clothing/accessory/armband/medblue  \
		)

/*
Preacher
*/

/datum/job/den/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	department_head = list("Captain")
	department_flag = DEN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Your Master(s)."
	description = "You are a beacon of faith in this godless Mojave wasteland, answering only to the higher beings past the plain of the mortal realm. Spread the beliefs of your divine masters through this land by any means necessary."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13preacher

	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/job/den/f13preacher/after_spawn(mob/living/H, mob/M)
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(SSreligion.religion)
		B.deity_name = SSreligion.deity
		B.name = SSreligion.bible_name
		B.icon_state = SSreligion.bible_icon_state
		B.item_state = SSreligion.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [SSreligion.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = SSreligion.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = "Christianity"
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = "Space Jesus"
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity

	switch(lowertext(new_religion))
		if("christianity")
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("satanism")
			B.name = "The Unholy Bible"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("islam")
			B.name = "Quran"
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("imperium")
			B.name = "Uplifting Primer"
		if("toolboxia")
			B.name = "Toolbox Manifesto"
		if("homosexuality")
			B.name = "Guys Gone Wild"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks", "meme", "memes")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition")
			H.adjustBrainLoss(100) // starts off stupid as fuck
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		else
			B.name = "The Holy Book of [new_religion]"

	SSreligion.religion = new_religion
	SSreligion.bible_name = B.name
	SSreligion.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)

/datum/outfit/job/den/f13preacher
	name = "Preacher"
	jobtype = /datum/job/den/f13preacher
	ears = /obj/item/radio/headset/headset_den
	belt = null

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/rank/chaplain
	backpack_contents = list(/obj/item/camera/spooky = 1)
	backpack = /obj/item/storage/backpack/cultpack
	satchel = /obj/item/storage/backpack/cultpack
	gloves =		/obj/item/clothing/gloves/fingerless
	shoes = 		/obj/item/clothing/shoes/jackboots
	backpack = 		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
	mask = 			/obj/item/clothing/mask/gas/syndicate
	r_hand = 		/obj/item/gun/ballistic/revolver/m29/alt
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/ammo_box/m44=2, \
		/obj/item/reagent_containers/food/drinks/flask=1, \
		/obj/item/storage/fancy/candle_box, \
		/obj/item/storage/bag/money/small/settler)

/*
Settler
*/

/datum/job/den/f13settler
	title = "Settler"
	flag = F13SETTLER
	department_flag = DEN
	faction = "Town"
	total_positions = 8
	spawn_positions = 8
	supervisors = "the sheriff and the mayor"
	description = "Much of the wasteland is filled with conflict and strife, as a local settler to Pahrump you benefit in that you have a claim to the land and the opportunities that unfold. What destiny awaits you? Will you find your way? Or dissapear trying. Will you rise to glory or dissapear into obscurity?"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13settler
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)

/datum/outfit/job/den/f13settler
	name = "Settler"
	jobtype = /datum/job/den/f13settler

	id = /obj/item/card/id/dogtag/town
	ears = 			/obj/item/radio/headset/headset_den
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
