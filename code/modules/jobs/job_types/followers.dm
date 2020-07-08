/datum/job/followers //do NOT use this for anything, it's just to store faction datums
	department_flag = FOLLOWERS
	selection_color = "#ffeeaa"
	exp_type = EXP_TYPE_FOLLOWERS
	forbids = "Aligning oneself with a faction exclusively. Acting in an aggressive and violent way on the offensive, not in defense. Abandoning your facility, peers, and community."
	enforces = "Preaching humanitarianism and valuing human life. Assist and provide medical services to any who require it, regardless of faction. Provide free education for all those who are willing to learn."

/datum/outfit/job/followers/
	name = "FOLLOWERSdatums"
	jobtype = /datum/job/followers/
	shoes = 		/obj/item/clothing/shoes/sneakers/black
	id = null
	ears = /obj/item/radio/headset/headset_med
	uniform = /datum/outfit/job/followers/f13followers

/datum/outfit/job/followers/f13followers
	name = "Followers"
	uniform = /obj/item/clothing/under/f13/follower

/datum/outfit/job/followers/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return


/*
Lead Practitioner
*/
/datum/job/followers/f13leadpractitioner
	title = "Lead Practitioner"
	flag = F13LEADPRACTITIONER
	department_flag = FOLLOWERS
	head_announce = list("Security")
	faction = "Followers"
	total_positions = 1
	spawn_positions = 1
	supervisors = "No one."
	description = "As a Practitioner, you treat patients, manage the distribution of medicine, as well as manage the staff of the facility so that all is productive and in working order. Your reason for being here is to provide education and medical services to those in need, furthering research in non-military matters, as well as helping their communities get access to basic necessities. Though the FoA have parted ways with the Republic, they independently reside within the limits of the NCR boundaries by nature of circumstance, and maintain a working relationship with them."
	selection_color = "#FF95FF"
	exp_requirements = 1080
	exp_type = EXP_TYPE_FOLLOWERS

	outfit = /datum/outfit/job/followers/f13leadpractitioner

/datum/outfit/job/followers/f13leadpractitioner/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_CHEMWHIZ)

/datum/outfit/job/followers/f13leadpractitioner
	name = "Lead Practitioner"
	jobtype = /datum/job/followers/f13leadpractitioner
	id = /obj/item/card/id/silver
	chemwhiz = TRUE
	backpack = /obj/item/storage/backpack/explorer
	uniform = /obj/item/clothing/under/f13/followers
	suit= /obj/item/clothing/suit/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/f13/brownie
	l_hand = /obj/item/storage/firstaid/fire
	r_hand = /obj/item/storage/firstaid/toxin
	belt = /obj/item/healthanalyzer/advanced
	backpack_contents = list(
		/obj/item/reagent_containers/glass/beaker/bluespace=1,
		/obj/item/storage/firstaid/ancient=1,
		/obj/item/reagent_containers/medspray/synthflesh=2,
		/obj/item/storage/firstaid/tactical=1,
		/obj/item/clothing/glasses/hud/health/night=1)

/*
Practitioner
*/
/datum/job/followers/f13practitioner
	title = "Practitioner"
	flag = F13PRACTITIONER
	department_flag = FOLLOWERS
	faction = "Followers"
	total_positions = 3
	spawn_positions = 3
	supervisors = "No one."
	description = "As a FoA Practioner you answer directly to no one, but correspond with your peers as partners. Special circumstances may change this, but it is your responsibility to maintain working order in the hospital and to manage its staff. Every member is asked � not ordered � to help those in need when the opportunity arises. Any leaders in the FoA are typically informal and selected naturally, based on their deeds, expertise, and organizational skills. To speak on your departments radio, use the :m button. To see others, look closely at your headset."
	selection_color = "#FFDDFF"
	exp_requirements = 1080
	exp_type = EXP_TYPE_FOLLOWERS

	outfit = /datum/outfit/job/followers/f13practitioner

	loadout_options = list(
	/datum/outfit/loadout/chemist,
	/datum/outfit/loadout/physician,
	/datum/outfit/loadout/emt
	)

/datum/outfit/job/followers/f13practitioner
	name = "Practitioner"
	jobtype = /datum/job/followers/f13practitioner
	backpack = /obj/item/storage/backpack/explorer
	uniform = /obj/item/clothing/under/f13/followers
	id = /obj/item/card/id/silver
	backpack_contents = list(
		/obj/item/defibrillator/compact/loaded)

/datum/outfit/loadout/chemist
	name = "Chemist"
	backpack_contents = list(
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/reagent_containers/glass/beaker/meta=2,
		/obj/item/clothing/glasses/science=1,
		/obj/item/clothing/suit/toggle/labcoat/f13/followers=1)

/datum/outfit/loadout/physician
	name = "Physician"
	l_hand = /obj/item/storage/firstaid/tactical
	backpack_contents = list(
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/reagent_containers/medspray/synthflesh=2,
		/obj/item/clothing/suit/toggle/labcoat/f13/followers=1)

/datum/outfit/loadout/emt
	name = "EMT"
	backpack_contents = list(
		/obj/item/clothing/head/soft/emt=1,
		/obj/item/clothing/suit/toggle/labcoat/emt=1,
		/obj/item/reagent_containers/medspray/synthflesh=2)
/*
Follower Volunteer
*/
/datum/job/followers/f13followervolunteer
	title = "Followers Volunteer"
	flag = F13FOLLOWERVOLUNTEER
	department_flag = FOLLOWERS
	faction = "Followers"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Practitioner"
	description = "As a FoA Volunteer you answer directly to the Practioners. Special circumstances may change this. Every member is asked � not ordered � to help those in need when the opportunity arises. Any leaders in the FoA are typically informal and selected naturally, based on their deeds, expertise, and organizational skills. To speak on your departments radio, use the :m button. To see others, look closely at your headset. As a Volunteer, you make sure they get connected to the right people to find treatment, assist in the functions of the hospital, and stepping in for the practioners when they are not present. Your reason for being here is to provide education and medical services to those in need, furthering research in non-military matters, as well as helping their communities get access to basic necessities. Though the FoA have parted ways with the Republic, they independently reside within the limits of the NCR boundaries by nature of circumstance, and maintain a working relationship with them."
	selection_color = "#FFDDFF"
	exp_type = EXP_TYPE_FOLLOWERS
	outfit = /datum/outfit/job/followers/f13followervolunteer

/datum/outfit/job/followers/f13followervolunteer
	name = "Follower Volunteer"
	jobtype = /datum/job/followers/f13followervolunteer
	backpack = /obj/item/storage/backpack/explorer
	id = /obj/item/card/id/silver
	backpack_contents =  list(
		/obj/item/storage/firstaid/ancient=1)
	uniform = /obj/item/clothing/under/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer

/*
Follower Guard
*/
/datum/job/followers/f13followerguard
	title = "Followers Guard"
	flag = F13FOLLOWERGUARD
	department_flag = FOLLOWERS
	faction = "Followers"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Practitioners"
	description = "As a Guard for the Followers of Apocalypse, you are responsible for the safety and the maintenance of order in the hospital and among your peers. Your reason for being here is to make sure the other staff can provide education and medical services to those in need, furthering research in non-military matters, as well as helping their communities get access to basic necessities. Though the FoA have parted ways with the Republic, they independently reside within the limits of the NCR boundaries by nature of circumstance, and maintain a working relationship with them. They must follow NCR laws while within the city limits or face in-game consequences. The FoA forbids: Aligning oneself with a faction exclusively. Acting in an aggressive and violent way on the offensive, not in defense. Abandoning your facility, peers, and community."
	selection_color = "#FFDDFF"
	exp_type = EXP_TYPE_FOLLOWERS

	outfit = /datum/outfit/job/followers/f13followerguard

/datum/outfit/job/followers/f13followerguard
	name = "Followers Guard"
	jobtype = /datum/job/followers/f13followerguard
	backpack = /obj/item/storage/backpack/explorer
	id = /obj/item/card/id/silver
	uniform = /obj/item/clothing/under/f13/bodyguard
	suit = /obj/item/clothing/suit/armor/vest/old
	suit_store = /obj/item/gun/ballistic/automatic/pistol/n99
	shoes = /obj/item/clothing/shoes/combat
	backpack_contents = list(
		/obj/item/melee/classic_baton/telescopic=1,
		/obj/item/ammo_box/magazine/m10mm_adv=2,
		/obj/item/flashlight/flare/torch=1)