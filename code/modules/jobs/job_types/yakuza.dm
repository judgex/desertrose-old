/datum/job/wasteland/f13yakuzaboss
	title = "Yakuza Crime Boss"
	flag = OYABUN
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	social_faction = "Raiders"
	total_positions = 1
	spawn_positions = 1
	description = " You are the Yakuza Crime Boss, You lead your family in pahrump as the remnants to make money and reclaim what is rightfully yours"
	supervisors = "your gang leadership"
	selection_color = "#ff915e"
	exp_requirements = 24000
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/wasteland/f13yakuza

	access = list()
	minimal_access = list()

/datum/outfit/job/wasteland/f13yakuza
	name = "Yakuza Crime Boss"
	jobtype = /datum/job/wasteland/f13yakuzaboss

	id = null
	ears = null
	belt = /obj/item/claymore/machete/pipe
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

	suit = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/riotpolice
	uniform = /obj/item/clothing/under/f13/roving

/datum/outfit/job/wasteland/f13yakuzaboss/pre_equip(mob/living/carbon/human/H)
	..()
	r_pocket = pick(
		/obj/item/flashlight/flare/torch, \
		/obj/item/flashlight/flare)
	l_pocket = /obj/item/storage/bag/money/small
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/reagent_containers/pill/patch/jet=2, \
		/obj/item/reagent_containers/syringe/medx=1)
	suit_store = pick(
		/obj/item/gun/ballistic/revolver/detective, \
		/obj/item/gun/ballistic/shotgun/remington, \
		/obj/item/gun/ballistic/revolver/caravan_shotgun, \
		/obj/item/gun/ballistic/revolver/pipe_rifle, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil)
	shoes = /obj/item/clothing/shoes/f13/military/diesel

/datum/outfit/job/wasteland/f13yakuzaboss/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	H.social_faction = "Raiders"

	if(!H.gang)
		var/datum/gang/yakuza/YK = GLOB.yakuza
		GLOB.all_gangs |= YK
		YK.add_member(H)
		H.gang = YK