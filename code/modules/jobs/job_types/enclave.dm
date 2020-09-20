/datum/outfit/job/enclave/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_GENERIC)

/datum/outfit/job/enclave/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_GENERIC)

/*
Commander
*/
/datum/job/enclave/f13uscommander
	title = "US Commander"
	flag = F13USCOMMANDER
	department_flag = ENCLAVE
	faction = "Enclave"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the US Government"
	selection_color = "#aaaaf7"

	outfit = /datum/outfit/job/enclave/f13uscommander

	access = list()
	minimal_access = list()

	exp_requirements = 3500
	exp_type = EXP_TYPE_NCR

/datum/outfit/job/enclave/f13uscommander
	name = "US Commander"
	jobtype = /datum/job/enclave/f13uscommander

	id = /obj/item/card/id/dogtag
	uniform =  /obj/item/clothing/under/f13/enclave_officer

	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat

	ears = /obj/item/radio/headset/headset_enclave
	belt = /obj/item/gun/energy/laser/plasma/pistol
	suit = /obj/item/clothing/suit/f13/autumn

	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	pa_wear = TRUE
/*
Medic
*/
/datum/job/enclave/f13usmedic
	title = "US Medic"
	flag = F13USMEDIC
	department_flag = ENCLAVE
	faction = "Enclave"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commander"
	selection_color = "#ccccff"

	outfit = /datum/outfit/job/enclave/f13usmedic

	access = list()
	minimal_access = list()

	exp_requirements = 2500
	exp_type = EXP_TYPE_NCR

/datum/outfit/job/enclave/f13usmedic
	name = "US Medic"
	jobtype = /datum/job/enclave/f13usmedic
	id = /obj/item/card/id/dogtag
	uniform =  /obj/item/clothing/under/f13/enclave_officer
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/gun/energy/laser/plasma/pistol
	ears = /obj/item/radio/headset/headset_enclave
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	pa_wear = TRUE
/*
Private
*/
/datum/job/enclave/f13usprivate
	title = "US Private"
	flag = F13USPRIVATE
	department_flag = ENCLAVE
	faction = "Enclave"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the commander"
	selection_color = "#ccccff"

	outfit = /datum/outfit/job/enclave/f13usprivate

	access = list()
	minimal_access = list()

	exp_requirements = 1500
	exp_type = EXP_TYPE_NCR

/datum/outfit/job/enclave/f13usprivate
	name = "US Private"
	jobtype = /datum/job/enclave/f13usprivate
	id = /obj/item/card/id/dogtag
	uniform =  /obj/item/clothing/under/f13/dbdu
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/headset_enclave
	gunsmith_one = TRUE
	gunsmith_two = TRUE
	gunsmith_three = TRUE
	gunsmith_four = TRUE
	pa_wear = TRUE
	head = /obj/item/clothing/head/helmet/f13/combat/enclave
	suit = /obj/item/clothing/suit/armor/f13/combat/enclave
	belt = /obj/item/gun/energy/laser/plasma/pistol
/*
/*
Scientist
*/
/datum/job/enclave/f13usscientist
	title = "US Scientist"
	flag = F13USSCIENTIST
	department_flag = ENCLAVE
	//faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the commander"
	selection_color = "#ccccff"

	outfit = /datum/outfit/job/enclave/f13usscientist

	access = list()
	minimal_access = list()

/datum/outfit/job/enclave/f13usscientist
	name = "US Scientist"
	jobtype = /datum/job/enclave/f13usscientist

	id = /obj/item/card/id/gold
	uniform =  /obj/item/clothing/under/rank/captain


/*
Engineer
*/
/datum/job/enclave/f13usengineer
	title = "US Engineer"
	flag = F13USENGINEER
	department_flag = ENCLAVE
	//faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commander"
	selection_color = "#ccccff"

	outfit = /datum/outfit/job/enclave/f13usengineer

	access = list()
	minimal_access = list()

/datum/outfit/job/enclave/f13usengineer
	name = "US Engineer"
	jobtype = /datum/job/enclave/f13usengineer

	id = /obj/item/card/id/gold
	uniform =  /obj/item/clothing/under/rank/captain

/*
Colonist
*/
/datum/job/enclave/f13uscolonist
	title = "US Colonist"
	flag = F13USCOLONIST
	department_flag = ENCLAVE
	//faction = "Station"
	total_positions = 0
	spawn_positions = 0
	supervisors = "the commander"
	selection_color = "#ccccff"

	outfit = /datum/outfit/job/enclave/f13uscolonist

	access = list()
	minimal_access = list()

/datum/outfit/job/enclave/f13uscolonist
	name = "US Colonist"
	jobtype = /datum/job/enclave/f13uscolonist

	id = /obj/item/card/id/gold
	uniform =  /obj/item/clothing/under/rank/captain
*/