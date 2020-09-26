	//Genitals and Arousal Lists
GLOBAL_LIST_EMPTY(cock_shapes_list)//global_lists.dm for the list initializations //Now also _DATASTRUCTURES globals.dm
GLOBAL_LIST_EMPTY(cock_shapes_icons) //Associated list for names->icon_states for cockshapes.
GLOBAL_LIST_EMPTY(gentlemans_organ_names)
GLOBAL_LIST_EMPTY(balls_shapes_list)
GLOBAL_LIST_EMPTY(balls_shapes_icons)
GLOBAL_LIST_EMPTY(breasts_size_list)
GLOBAL_LIST_EMPTY(genital_fluids_list)
GLOBAL_LIST_EMPTY(breasts_shapes_list)
GLOBAL_LIST_EMPTY(breasts_shapes_icons)
GLOBAL_LIST_EMPTY(vagina_shapes_list)
GLOBAL_LIST_EMPTY(vagina_shapes_icons)
GLOBAL_LIST_INIT(cum_into_containers_list, list(/obj/item/reagent_containers/food/snacks/pie)) //Yer fuggin snowflake name list jfc
GLOBAL_LIST_INIT(dick_nouns, list("dick","cock","member","shaft"))
//,"semen")
//GLOBAL_LIST_INIT(milk_id_list,"milk")

GLOBAL_LIST_INIT(genitals_visibility_toggles, list(GEN_VISIBLE_NO_CLOTHES, GEN_VISIBLE_NO_UNDIES, GEN_VISIBLE_NEVER))

GLOBAL_LIST_INIT(dildo_shapes, list(
		"Human"		= "human",
		"Knotted"	= "knotted",
		"Plain"		= "plain",
		"Flared"	= "flared"
		))
GLOBAL_LIST_INIT(dildo_sizes, list(
		"Small"		= 1,
		"Medium"	= 2,
		"Big"		= 3
		))
GLOBAL_LIST_INIT(dildo_colors, list(//mostly neon colors
		"Cyan"		= "#00f9ff",//cyan
		"Green"		= "#49ff00",//green
		"Pink"		= "#ff4adc",//pink
		"Yellow"	= "#fdff00",//yellow
		"Blue"		= "#00d2ff",//blue
		"Lime"		= "#89ff00",//lime
		"Black"		= "#101010",//black
		"Red"		= "#ff0000",//red
		"Orange"	= "#ff9a00",//orange
		"Purple"	= "#e300ff"//purple
		))

/mob/living/carbon/proc/has_penis()
	if(getorganslot("penis"))//slot shared with ovipositor
		if(istype(getorganslot("penis"), /obj/item/organ/genital/penis))
			return TRUE
	return FALSE

/mob/living/carbon/proc/has_balls()
	if(getorganslot("balls"))
		if(istype(getorganslot("balls"), /obj/item/organ/genital/testicles))
			return TRUE
	return FALSE

/mob/living/carbon/proc/has_vagina()
	if(getorganslot("vagina"))
		return TRUE
	return FALSE

/mob/living/carbon/proc/has_breasts()
	if(getorganslot("breasts"))
		return TRUE
	return FALSE

/mob/living/carbon/proc/has_ovipositor()
	if(getorganslot("penis"))//shared slot
		if(istype(getorganslot("penis"), /obj/item/organ/genital/ovipositor))
			return TRUE
	return FALSE

/mob/living/carbon/human/proc/has_eggsack()
	if(getorganslot("balls"))
		if(istype(getorganslot("balls"), /obj/item/organ/genital/eggsack))
			return TRUE
	return FALSE

/mob/living/carbon/human/proc/is_bodypart_exposed(bodypart)

/mob/living/carbon/proc/is_groin_exposed(var/list/L)
	if(!L)
		L = get_equipped_items()
	for(var/obj/item/I in L)
		if(I.body_parts_covered & GROIN)
			return FALSE
	return TRUE

/mob/living/carbon/proc/is_chest_exposed(var/list/L)
	if(!L)
		L = get_equipped_items()
	for(var/obj/item/I in L)
		if(I.body_parts_covered & CHEST)
			return FALSE
	return TRUE

////////////////////////
//DANGER | DEBUG PROCS//
////////////////////////

/client/proc/give_humans_genitals()
	set name = "Mass Give Genitals"
	set category = "Dangerous"
	set desc = "Gives every human mob genitals for testing purposes. WARNING: NOT FOR LIVE SERVER USAGE!!"

	log_admin("[src] gave everyone genitals.")
	message_admins("[src] gave everyone genitals.")
	for(var/mob/living/carbon/human/H in GLOB.mob_list)
		if(H.gender == MALE)
			H.give_penis()
			H.give_balls()
		else
			H.give_vagina()
			H.give_womb()
			H.give_breasts()
