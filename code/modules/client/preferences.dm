

GLOBAL_LIST_EMPTY(preferences_datums)



/datum/preferences
	var/client/parent
	//doohickeys for savefiles
	var/path
	var/default_slot = 1				//Holder so it doesn't default to slot 1, rather the last one used
	var/max_save_slots = 30 // lucky number

	//non-preference stuff
	var/muted = 0
	var/last_ip
	var/last_id

	//game-preferences
	var/lastchangelog = ""				//Saved changlog filesize to detect if there was a change
	var/ooccolor = null
	var/enable_tips = TRUE
	var/tip_delay = 500 //tip delay in milliseconds

	//Antag preferences
	var/list/be_special = list()		//Special role selection
	var/tmp/old_be_special = 0			//Bitflag version of be_special, used to update old savefiles and nothing more
										//If it's 0, that's good, if it's anything but 0, the owner of this prefs file's antag choices were,
										//autocorrected this round, not that you'd need to check that.


	var/UI_style = null
	var/buttons_locked = FALSE
	var/hotkeys = FALSE
	//Runechat
	var/chat_on_map = TRUE
	var/max_chat_length = CHAT_MESSAGE_MAX_LENGTH
	var/see_chat_non_mob = TRUE
	//Runechat End
	var/tgui_fancy = TRUE
	var/tgui_lock = TRUE
	var/windowflashing = TRUE
	var/toggles = TOGGLES_DEFAULT
	var/db_flags
	var/chat_toggles = TOGGLES_DEFAULT_CHAT
	var/wasteland_toggles = TOGGLES_DEFAULT_WASTELAND
	var/ghost_form = "ghost"
	var/ghost_orbit = GHOST_ORBIT_CIRCLE
	var/ghost_accs = GHOST_ACCS_DEFAULT_OPTION
	var/ghost_others = GHOST_OTHERS_DEFAULT_OPTION
	var/ghost_hud = 1
	var/inquisitive_ghost = 1
	var/allow_midround_antag = 1
	var/preferred_map = null
	var/pda_style = MONO
	var/pda_color = "#808000"

	var/uses_glasses_colour = 0

	//character preferences
	var/real_name						//our character's name
	var/be_random_name = 0				//whether we'll have a random name every round
	var/be_random_body = 0				//whether we'll have a random body every round
	var/gender = MALE					//gender of character (well duh)
	var/age = 30						//age of character
	var/underwear = "Nude"				//underwear type
	var/undie_color = "FFF"
	var/undershirt = "Nude"				//undershirt type
	var/shirt_color = "FFF"
	var/socks = "Nude"					//socks type
	var/socks_color = "FFF"
	var/backbag = DBACKPACK				//backpack type
	var/hair_style = "Bald"				//Hair type
	var/hair_color = "000"				//Hair color
	var/facial_hair_style = "Shaved"	//Face hair type
	var/facial_hair_color = "000"		//Facial hair color
	var/skin_tone = "caucasian1"		//Skin color

	var/has_dick = 0						//Do they have a penis? (for ERP verbs and surgery)
	var/has_vulva = 0						//Do they have a vagina? (for ERP verbs and surgery)
	var/has_breast = 0						//Do they have breasts? (for ERP verbs and surgery)

	var/eye_color = "000"				//Eye color
	var/datum/species/pref_species = new /datum/species/human()	//Mutant race
	var/list/features = list("mcolor" = "FFF",
		"tail_lizard" = "Smooth",
		"tail_human" = "None",
		"snout" = "Round",
		"horns" = "None",
		"ears" = "None",
		"wings" = "None",
		"frills" = "None",
		"spines" = "None",
		"body_markings" = "None",
		"legs" = "Normal Legs",
		"moth_wings" = "Plain",
		"exhibitionist" = FALSE,
		"genitals_use_skintone" = TRUE,
		"has_cock" = FALSE,
		"cock_shape" = "Human",
		"cock_length" = 6,
		"cock_girth_ratio" = COCK_GIRTH_RATIO_DEF,
		"cock_color" = "fff",
		"has_sheath" = FALSE,
		"sheath_color" = "fff",
		"has_balls" = FALSE,
		"balls_internal" = FALSE,
		"balls_color" = "fff",
		"balls_amount" = 2,
		"balls_sack_size" = BALLS_SACK_SIZE_DEF,
		"balls_shape" = "Single",
		"balls_size" = BALLS_SIZE_DEF,
		"balls_cum_rate" = CUM_RATE,
		"balls_cum_mult" = CUM_RATE_MULT,
		"balls_efficiency" = CUM_EFFICIENCY,
		"balls_fluid" = "semen",
		"has_ovi" = FALSE,
		"ovi_shape" = "knotted",
		"ovi_length" = 6,
		"ovi_color" = "fff",
		"has_eggsack" = FALSE,
		"eggsack_internal" = TRUE,
		"eggsack_color" = "fff",
		"eggsack_size" = BALLS_SACK_SIZE_DEF,
		"eggsack_egg_color" = "fff",
		"eggsack_egg_size" = EGG_GIRTH_DEF,
		"has_breasts" = FALSE,
		"breasts_color" = "fff",
		"breasts_size" = "C",
		"breasts_shape" = "Pair",
		"breasts_fluid" = "milk",
		"breasts_producing" = FALSE,
		"has_vag" = FALSE,
		"vag_shape" = "Human",
		"vag_color" = "fff",
		"vag_clits" = 1,
		"vag_clit_diam" = 0.25,
		"has_womb" = FALSE,
		"can_get_preg" = FALSE,
		"womb_cum_rate" = CUM_RATE,
		"womb_cum_mult" = CUM_RATE_MULT,
		"womb_efficiency" = CUM_EFFICIENCY,
		"womb_fluid" = "femcum",
		"body_model" = MALE)

	var/special_s = 3
	var/special_p = 3
	var/special_e = 3
	var/special_c = 3
	var/special_i = 3
	var/special_a = 3
	var/special_l = 3

	var/list/custom_names = list()
	var/prefered_security_department = SEC_DEPT_RANDOM

	var/flavor_text = ""

		//Quirk list
	var/list/positive_quirks = list()
	var/list/negative_quirks = list()
	var/list/neutral_quirks = list()
	var/list/all_quirks = list()
	var/list/character_quirks = list()

		//Jobs, uses bitflags
	var/job_civilian_high = 0
	var/job_civilian_med = 0
	var/job_civilian_low = 0

	var/job_medsci_high = 0
	var/job_medsci_med = 0
	var/job_medsci_low = 0

	var/job_engsec_high = 0
	var/job_engsec_med = 0
	var/job_engsec_low = 0

	var/job_ncr_high = 0
	var/job_ncr_med = 0
	var/job_ncr_low = 0

	var/job_legion_high = 0
	var/job_legion_med = 0
	var/job_legion_low = 0

	var/job_bos_high = 0
	var/job_bos_med = 0
	var/job_bos_low = 0

	var/job_den_high = 0
	var/job_den_med = 0
	var/job_den_low = 0

	var/job_vault_high = 0
	var/job_vault_med = 0
	var/job_vault_low = 0

	var/job_wasteland_high = 0
	var/job_wasteland_med = 0
	var/job_wasteland_low = 0

	var/job_enclave_high = 0
	var/job_enclave_med = 0
	var/job_enclave_low = 0

	var/job_tribal_high = 0
	var/job_tribal_med = 0
	var/job_tribal_low = 0

	var/job_followers_high = 0
	var/job_followers_med = 0
	var/job_followers_low = 0

		// Return to lobby if preferences filled
	var/joblessrole = RETURNTOLOBBY

	// 0 = character settings, 1 = game preferences
	var/current_tab = 0

		// OOC Metadata:
	var/metadata = ""

	var/unlock_content = 0

	var/list/ignoring = list()

	var/clientfps = 40

	var/parallax
	var/arousable = TRUE
	var/ambientocclusion = TRUE
	var/auto_fit_viewport = FALSE

	var/uplink_spawn_loc = UPLINK_PDA
	var/auto_ooc = FALSE

	var/list/exp = list()
	var/list/job_whitelists = list()
	var/list/menuoptions

	var/cit_toggles = TOGGLES_CITADEL

	var/action_buttons_screen_locs = list()

	//backgrounds
	var/mutable_appearance/character_background
	var/icon/bgstate = "steel"
	var/list/bgstate_options = list("000", "midgrey", "FFF", "white", "steel", "techmaint", "dark", "plating", "reinforced")

/datum/preferences/New(client/C)
	parent = C

	for(var/custom_name_id in GLOB.preferences_custom_names)
		custom_names[custom_name_id] = get_default_name(custom_name_id)

	UI_style = GLOB.available_ui_styles[1]
	if(istype(C))
		if(!IsGuestKey(C.key))
			load_path(C.ckey)
			unlock_content = C.IsByondMember()
			if(unlock_content)
				max_save_slots = 30
	var/loaded_preferences_successfully = load_preferences()
	if(loaded_preferences_successfully)
		if(load_character())
			return
	//we couldn't load character data so just randomize the character appearance + name
	random_character()		//let's create a random character then - rather than a fat, bald and naked man.
	real_name = pref_species.random_name(gender,1)
	if(!loaded_preferences_successfully)
		save_preferences()
	save_character()		//let's save this new random character so it doesn't keep generating new ones.
	menuoptions = list()
	return

#define APPEARANCE_CATEGORY_COLUMN "<td valign='top' width='14%'>"
#define MAX_MUTANT_ROWS 4

/datum/preferences/proc/ShowChoices(mob/user)
	if(!user || !user.client)
		return

	if(CONFIG_GET(flag/use_role_whitelist))
		user.client.set_job_whitelist_from_db()

	update_preview_icon(current_tab != 0)
	var/list/dat = list("<center>")

	dat += "<a href='?_src_=prefs;preference=tab;tab=0' [current_tab == 0 ? "class='linkOn'" : ""]>Character Settings</a>"
	dat += "<a href='?_src_=prefs;preference=tab;tab=1' [current_tab == 1 ? "class='linkOn'" : ""]>Game Preferences</a>"
	dat += "<a href='?_src_=prefs;preference=tab;tab=2' [current_tab == 2 ? "class='linkOn'" : ""]>OOC Preferences</a>"
	dat += "<a href='?_src_=prefs;preference=tab;tab=3' [current_tab == 3 ? "class='linkOn'" : ""]>Lewd Preferences</a>"

	if(!path)
		dat += "<div class='notice'>Please create an account to save your preferences</div>"

	dat += "</center>"

	dat += "<HR>"

	switch(current_tab)
		if (0) // Character Settings#
			if(path)
				var/savefile/S = new /savefile(path)
				if(S)
					dat += "<center>"
					var/name
					var/unspaced_slots = 0
					for(var/i=1, i<=max_save_slots, i++)
						unspaced_slots++
						if(unspaced_slots > 4)
							dat += "<br>"
							unspaced_slots = 0
						S.cd = "/character[i]"
						S["real_name"] >> name
						if(!name)
							name = "Character[i]"
						dat += "<a style='white-space:nowrap;' href='?_src_=prefs;preference=changeslot;num=[i];' [i == default_slot ? "class='linkOn'" : ""]>[name]</a> "
					dat += "</center>"

			dat += "<center><h2>Occupation Choices</h2>"
			dat += "<a href='?_src_=prefs;preference=job;task=menu'>Set Occupation Preferences</a><br></center>"
			if(CONFIG_GET(flag/roundstart_traits))
				dat += "<center><h2>Quirk Setup</h2>"
				dat += "<a href='?_src_=prefs;preference=trait;task=menu'>Configure Quirks</a><br></center>"
				dat += "<center><b>Current Quirks:</b> [all_quirks.len ? all_quirks.Join(", ") : "None"]</center>"
			dat += "<center><h2>S.P.E.C.I.A.L</h2>"
			dat += "<a href='?_src_=prefs;preference=special;task=menu'>Allocate Points</a><br></center>"
			dat += "<h2>Identity</h2>"
			dat += "<table width='100%'><tr><td width='75%' valign='top'>"
			if(jobban_isbanned(user, "appearance"))
				dat += "<b>You are banned from using custom names and appearances. You can continue to adjust your characters, but you will be randomised once you join the game.</b><br>"
			dat += "<a href='?_src_=prefs;preference=name;task=random'>Random Name</A> "
			dat += "<a href='?_src_=prefs;preference=name'>Always Random Name: [be_random_name ? "Yes" : "No"]</a><BR>"
			dat += "<b>Name:</b> "
			dat += "<a href='?_src_=prefs;preference=name;task=input'>[real_name]</a><BR>"

			dat += "<b>Gender:</b><a style='display:block;width:100px' href='?_src_=prefs;preference=gender'>[gender == MALE ? "Male" : (gender == FEMALE ? "Female" : (gender == PLURAL ? "Non-binary" : "Object"))]</a><BR>"
			if(gender != NEUTER && pref_species.sexes)
				dat += "<b>Body Model:</b><a style='display:block;width:100px' href='?_src_=prefs;preference=body_model'>[features["body_model"] == MALE ? "Masculine" : "Feminine"]</a><BR>"
			dat += "<b>Age:</b> <a href='?_src_=prefs;preference=age;task=input'>[age]</a><BR>"
			dat += "<br><b>Cycle background:</b><a style='display:block;width:100px' href='?_src_=prefs;preference=cycle_bg;task=input'>[bgstate]</a><BR>"
/*
			dat += "<b>Special Names:</b><BR>"
			var/old_group
			for(var/custom_name_id in GLOB.preferences_custom_names)
				var/namedata = GLOB.preferences_custom_names[custom_name_id]
				if(!old_group)
					old_group = namedata["group"]
				else if(old_group != namedata["group"])
					old_group = namedata["group"]
					dat += "<br>"
				dat += "<a href ='?_src_=prefs;preference=[custom_name_id];task=input'><b>[namedata["pref_name"]]:</b> [custom_names[custom_name_id]]</a> "
			dat += "<br>"
			dat += "<b>Custom job preferences:</b><BR>"
			dat += "<a href='?_src_=prefs;preference=sec_dept;task=input'><b>Prefered security department:</b> [prefered_security_department]</a><BR></td>"

			dat += "</tr></table>"
*/
			dat += "<table><tr><td width='340px' height='300px' valign='top'>"
			dat += "<h2>Flavor Text</h2>"
			dat += "<a href='?_src_=prefs;preference=flavor_text;task=input'><b>Set Examine Text</b></a><br>"
			if(length(features["flavor_text"]) <= 40)
				if(!length(features["flavor_text"]))
					dat += "\[...\]"
				else
					dat += "[features["flavor_text"]]"
			else
				dat += "[TextPreview(features["flavor_text"])]...<BR>"

			dat += "<h2>Body</h2>"
			dat += "<a href='?_src_=prefs;preference=all;task=random'>Random Body</A> "
			dat += "<a href='?_src_=prefs;preference=all'>Always Random Body: [be_random_body ? "Yes" : "No"]</A><br>"

			dat += "<table width='100%'><tr><td width='24%' valign='top'>"

			dat += "<b>Species:</b><BR><a href='?_src_=prefs;preference=species;task=input'>[pref_species.name]</a><BR>"

			dat += "<b>Underwear:</b><a style='display:block;width:100px' href ='?_src_=prefs;preference=underwear;task=input'>[underwear]</a>"
			if(GLOB.underwear_list[underwear]?.has_color)
				dat += "<b>Underwear Color:</b> <span style='border:1px solid #161616; background-color: #[undie_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=undie_color;task=input'>Change</a><BR>"
			dat += "<b>Undershirt:</b><a style='display:block;width:100px' href ='?_src_=prefs;preference=undershirt;task=input'>[undershirt]</a>"
			if(GLOB.undershirt_list[undershirt]?.has_color)
				dat += "<b>Undershirt Color:</b> <span style='border:1px solid #161616; background-color: #[shirt_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=shirt_color;task=input'>Change</a><BR>"
			dat += "<b>Socks:</b><a style='display:block;width:100px' href ='?_src_=prefs;preference=socks;task=input'>[socks]</a>"
			if(GLOB.socks_list[socks]?.has_color)
				dat += "<b>Socks Color:</b> <span style='border:1px solid #161616; background-color: #[socks_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=socks_color;task=input'>Change</a><BR>"
			dat += "<b>Backpack:</b><BR><a href ='?_src_=prefs;preference=bag;task=input'>[backbag]</a><BR>"
			dat += "<b>Uplink Spawn Location:</b><BR><a href ='?_src_=prefs;preference=uplink_loc;task=input'>[uplink_spawn_loc]</a><BR></td>"
			dat += "</td>"

			dat += "</tr></table>"

			var/use_skintones = pref_species.use_skintones
			if(use_skintones)
				dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Skin Tone</h3>"

				dat += "<a style='display:block;width:100px' href='?_src_=prefs;preference=s_tone;task=input'>[skin_tone]</a><BR>"


			var/mutant_colors
			if((MUTCOLORS in pref_species.species_traits) || (MUTCOLORS_PARTSONLY in pref_species.species_traits))

				if(!use_skintones)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Mutant Color</h3>"

				dat += "<span style='border: 1px solid #161616; background-color: #[features["mcolor"]];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=mutant_color;task=input'>Change</a><BR>"

				mutant_colors = TRUE

			if((EYECOLOR in pref_species.species_traits) && !(NOEYES in pref_species.species_traits))

				if(!use_skintones && !mutant_colors)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Eye Color</h3>"

				dat += "<span style='border: 1px solid #161616; background-color: #[eye_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=eyes;task=input'>Change</a><BR>"

				dat += "</td>"
			else if(use_skintones || mutant_colors)
				dat += "</td>"

			if(HAIR in pref_species.species_traits)

				dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Hair Style</h3>"

				dat += "<a href='?_src_=prefs;preference=hair_style;task=input'>[hair_style]</a><BR>"
				dat += "<a href='?_src_=prefs;preference=previous_hair_style;task=input'>&lt;</a> <a href='?_src_=prefs;preference=next_hair_style;task=input'>&gt;</a><BR>"
				dat += "<span style='border:1px solid #161616; background-color: #[hair_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=hair;task=input'>Change</a><BR>"

				dat += "<h3>Facial Hair Style</h3>"

				dat += "<a href='?_src_=prefs;preference=facial_hair_style;task=input'>[facial_hair_style]</a><BR>"
				dat += "<a href='?_src_=prefs;preference=previous_facehair_style;task=input'>&lt;</a> <a href='?_src_=prefs;preference=next_facehair_style;task=input'>&gt;</a><BR>"
				dat += "<span style='border: 1px solid #161616; background-color: #[facial_hair_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=facial;task=input'>Change</a><BR>"

				dat += "</td>"

			//Mutant stuff
			var/mutant_category = 0

			if("tail_lizard" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Tail</h3>"

				dat += "<a href='?_src_=prefs;preference=tail_lizard;task=input'>[features["tail_lizard"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("snout" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Snout</h3>"

				dat += "<a href='?_src_=prefs;preference=snout;task=input'>[features["snout"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("horns" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Horns</h3>"

				dat += "<a href='?_src_=prefs;preference=horns;task=input'>[features["horns"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("frills" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Frills</h3>"

				dat += "<a href='?_src_=prefs;preference=frills;task=input'>[features["frills"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("spines" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Spines</h3>"

				dat += "<a href='?_src_=prefs;preference=spines;task=input'>[features["spines"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("body_markings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Body Markings</h3>"

				dat += "<a href='?_src_=prefs;preference=body_markings;task=input'>[features["body_markings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("legs" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Legs</h3>"

				dat += "<a href='?_src_=prefs;preference=legs;task=input'>[features["legs"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if("moth_wings" in pref_species.default_features)
				if(!mutant_category)
					dat += APPEARANCE_CATEGORY_COLUMN

				dat += "<h3>Moth wings</h3>"

				dat += "<a href='?_src_=prefs;preference=moth_wings;task=input'>[features["moth_wings"]]</a><BR>"

				mutant_category++
				if(mutant_category >= MAX_MUTANT_ROWS)
					dat += "</td>"
					mutant_category = 0

			if(CONFIG_GET(flag/join_with_mutant_humans))

				if("tail_human" in pref_species.default_features)
					if(!mutant_category)
						dat += APPEARANCE_CATEGORY_COLUMN

					dat += "<h3>Tail</h3>"

					dat += "<a href='?_src_=prefs;preference=tail_human;task=input'>[features["tail_human"]]</a><BR>"

					mutant_category++
					if(mutant_category >= MAX_MUTANT_ROWS)
						dat += "</td>"
						mutant_category = 0

				if("ears" in pref_species.default_features)
					if(!mutant_category)
						dat += APPEARANCE_CATEGORY_COLUMN

					dat += "<h3>Ears</h3>"

					dat += "<a href='?_src_=prefs;preference=ears;task=input'>[features["ears"]]</a><BR>"

					mutant_category++
					if(mutant_category >= MAX_MUTANT_ROWS)
						dat += "</td>"
						mutant_category = 0

				if("wings" in pref_species.default_features && GLOB.r_wings_list.len >1)
					if(!mutant_category)
						dat += APPEARANCE_CATEGORY_COLUMN

					dat += "<h3>Wings</h3>"

					dat += "<a href='?_src_=prefs;preference=wings;task=input'>[features["wings"]]</a><BR>"

					mutant_category++
					if(mutant_category >= MAX_MUTANT_ROWS)
						dat += "</td>"
						mutant_category = 0

			if(mutant_category)
				dat += "</td>"
				mutant_category = 0
			dat += "</tr></table>"


		if (1) // Game Preferences
			dat += "<table><tr><td width='340px' height='300px' valign='top'>"
			dat += "<h2>General Settings</h2>"
			dat += "<b>UI Style:</b> <a href='?_src_=prefs;task=input;preference=ui'>[UI_style]</a><br>"
			dat += "<b>tgui Monitors:</b> <a href='?_src_=prefs;preference=tgui_lock'>[(tgui_lock) ? "Primary" : "All"]</a><br>"
			dat += "<b>tgui Style:</b> <a href='?_src_=prefs;preference=tgui_fancy'>[(tgui_fancy) ? "Fancy" : "No Frills"]</a><br>"
			dat += "<b>Show Runechat Chat Bubbles:</b> <a href='?_src_=prefs;preference=chat_on_map'>[chat_on_map ? "Enabled" : "Disabled"]</a><br>" //Runechat Prefs
			dat += "<b>Runechat message char limit:</b> <a href='?_src_=prefs;preference=max_chat_length;task=input'>[max_chat_length]</a><br>"
			dat += "<b>See Runechat for non-mobs:</b> <a href='?_src_=prefs;preference=see_chat_non_mob'>[see_chat_non_mob ? "Enabled" : "Disabled"]</a><br>" //Runechat Prefs End
			dat += "<br>"
			dat += "<b>Action Buttons:</b> <a href='?_src_=prefs;preference=action_buttons'>[(buttons_locked) ? "Locked In Place" : "Unlocked"]</a><br>"
			dat += "<b>Keybindings:</b> <a href='?_src_=prefs;preference=hotkeys'>[(hotkeys) ? "Hotkeys" : "Default"]</a><br>"
			dat += "<br>"
			dat += "<b>Pip-Boy 3000 Color:</b> <span style='border:1px solid #161616; background-color: [pda_color];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=pda_color;task=input'>Change</a><BR>"
			dat += "<b>Pip-Boy 3000 Style:</b> <a href='?_src_=prefs;task=input;preference=pda_style'>[pda_style]</a><br>"
			dat += "<br>"
			dat += "<b>Ghost Ears:</b> <a href='?_src_=prefs;preference=ghost_ears'>[(chat_toggles & CHAT_GHOSTEARS) ? "All Speech" : "Nearest Creatures"]</a><br>"
			dat += "<b>Ghost Radio:</b> <a href='?_src_=prefs;preference=ghost_radio'>[(chat_toggles & CHAT_GHOSTRADIO) ? "All Messages":"No Messages"]</a><br>"
			dat += "<b>Ghost Sight:</b> <a href='?_src_=prefs;preference=ghost_sight'>[(chat_toggles & CHAT_GHOSTSIGHT) ? "All Emotes" : "Nearest Creatures"]</a><br>"
			dat += "<b>Ghost Whispers:</b> <a href='?_src_=prefs;preference=ghost_whispers'>[(chat_toggles & CHAT_GHOSTWHISPER) ? "All Speech" : "Nearest Creatures"]</a><br>"
			dat += "<b>Ghost Pip-Boy 3000:</b> <a href='?_src_=prefs;preference=ghost_pda'>[(chat_toggles & CHAT_GHOSTPDA) ? "All Messages" : "Nearest Creatures"]</a><br>"

			if(unlock_content)
				dat += "<b>Ghost Form:</b> <a href='?_src_=prefs;task=input;preference=ghostform'>[ghost_form]</a><br>"
				dat += "<B>Ghost Orbit: </B> <a href='?_src_=prefs;task=input;preference=ghostorbit'>[ghost_orbit]</a><br>"

			var/button_name = "If you see this something went wrong."
			switch(ghost_accs)
				if(GHOST_ACCS_FULL)
					button_name = GHOST_ACCS_FULL_NAME
				if(GHOST_ACCS_DIR)
					button_name = GHOST_ACCS_DIR_NAME
				if(GHOST_ACCS_NONE)
					button_name = GHOST_ACCS_NONE_NAME

			dat += "<b>Ghost Accessories:</b> <a href='?_src_=prefs;task=input;preference=ghostaccs'>[button_name]</a><br>"

			switch(ghost_others)
				if(GHOST_OTHERS_THEIR_SETTING)
					button_name = GHOST_OTHERS_THEIR_SETTING_NAME
				if(GHOST_OTHERS_DEFAULT_SPRITE)
					button_name = GHOST_OTHERS_DEFAULT_SPRITE_NAME
				if(GHOST_OTHERS_SIMPLE)
					button_name = GHOST_OTHERS_SIMPLE_NAME

			dat += "<b>Ghosts of Others:</b> <a href='?_src_=prefs;task=input;preference=ghostothers'>[button_name]</a><br>"
			dat += "<br>"

			dat += "<b>FPS:</b> <a href='?_src_=prefs;preference=clientfps;task=input'>[clientfps]</a><br>"

			dat += "<b>Parallax (Fancy Space):</b> <a href='?_src_=prefs;preference=parallaxdown' oncontextmenu='window.location.href=\"?_src_=prefs;preference=parallaxup\";return false;'>"
			switch (parallax)
				if (PARALLAX_LOW)
					dat += "Low"
				if (PARALLAX_MED)
					dat += "Medium"
				if (PARALLAX_INSANE)
					dat += "Insane"
				if (PARALLAX_DISABLE)
					dat += "Disabled"
				else
					dat += "High"
			dat += "</a><br>"

			dat += "<b>Ambient Occlusion:</b> <a href='?_src_=prefs;preference=ambientocclusion'>[ambientocclusion ? "Enabled" : "Disabled"]</a><br>"
			dat += "<b>Fit Viewport:</b> <a href='?_src_=prefs;preference=auto_fit_viewport'>[auto_fit_viewport ? "Auto" : "Manual"]</a><br>"

			if (CONFIG_GET(flag/maprotation))
				var/p_map = preferred_map
				if (!p_map)
					p_map = "Default"
					if (config.defaultmap)
						p_map += " ([config.defaultmap.map_name])"
				else
					if (p_map in config.maplist)
						var/datum/map_config/VM = config.maplist[p_map]
						if (!VM)
							p_map += " (No longer exists)"
						else
							p_map = VM.map_name
					else
						p_map += " (No longer exists)"
				if(CONFIG_GET(flag/allow_map_voting))
					dat += "<b>Preferred Map:</b> <a href='?_src_=prefs;preference=preferred_map;task=input'>[p_map]</a><br>"

			dat += "</td><td width='300px' height='300px' valign='top'>"

			dat += "<h2>Special Role Settings</h2>"

			if(jobban_isbanned(user, ROLE_SYNDICATE))
				dat += "<font color=red><b>You are banned from antagonist roles.</b></font>"
				src.be_special = list()


			for (var/i in GLOB.special_roles)
				if(jobban_isbanned(user, i))
					dat += "<b>Be [capitalize(i)]:</b> <a href='?_src_=prefs;jobbancheck=[i]'>BANNED</a><br>"
				else
					var/days_remaining = null
					if(ispath(GLOB.special_roles[i]) && CONFIG_GET(flag/use_age_restriction_for_jobs)) //If it's a game mode antag, check if the player meets the minimum age
						var/mode_path = GLOB.special_roles[i]
						var/datum/game_mode/temp_mode = new mode_path
						days_remaining = temp_mode.get_remaining_days(user.client)

					if(days_remaining)
						dat += "<b>Be [capitalize(i)]:</b> <font color=red> \[IN [days_remaining] DAYS]</font><br>"
					else
						dat += "<b>Be [capitalize(i)]:</b> <a href='?_src_=prefs;preference=be_special;be_special_type=[i]'>[(i in be_special) ? "Enabled" : "Disabled"]</a><br>"
			dat += "<br>"
			dat += "<b>Midround Antagonist:</b> <a href='?_src_=prefs;preference=allow_midround_antag'>[(toggles & MIDROUND_ANTAG) ? "Enabled" : "Disabled"]</a><br>"

			dat += "</td></tr></table>"

		if(2) //OOC Preferences
			dat += "<table><tr><td width='340px' height='300px' valign='top'>"
			dat += "<h2>OOC Settings</h2>"
			dat += "<b>Window Flashing:</b> <a href='?_src_=prefs;preference=winflash'>[(windowflashing) ? "Enabled":"Disabled"]</a><br>"
			dat += "<br>"
			dat += "<b>Play Admin MIDIs:</b> <a href='?_src_=prefs;preference=hear_midis'>[(toggles & SOUND_MIDI) ? "Enabled":"Disabled"]</a><br>"
			dat += "<b>Play Mojave Radio:</b> <a href='?_src_=prefs;preference=hear_radio'>[(wasteland_toggles & SOUND_RADIO) ? "Enabled":"Disabled"]</a><br>"
			dat += "<b>Play Lobby Music:</b> <a href='?_src_=prefs;preference=lobby_music'>[(toggles & SOUND_LOBBY) ? "Enabled":"Disabled"]</a><br>"
			dat += "<b>See Pull Requests:</b> <a href='?_src_=prefs;preference=pull_requests'>[(chat_toggles & CHAT_PULLR) ? "Enabled":"Disabled"]</a><br>"
			dat += "<br>"


			if(user.client)
				if(unlock_content)
					dat += "<b>BYOND Membership Publicity:</b> <a href='?_src_=prefs;preference=publicity'>[(toggles & MEMBER_PUBLIC) ? "Public" : "Hidden"]</a><br>"

				if(unlock_content || check_rights_for(user.client, R_ADMIN))
					dat += "<b>OOC Color:</b> <span style='border: 1px solid #161616; background-color: [ooccolor ? ooccolor : GLOB.normal_ooc_colour];'>&nbsp;&nbsp;&nbsp;</span> <a href='?_src_=prefs;preference=ooccolor;task=input'>Change</a><br>"

			if(CONFIG_GET(flag/allow_metadata))
				dat += "<b>OOC Notes:</b> <a href='?_src_=prefs;preference=metadata;task=input'>Edit </a><br>"

			dat += "</td>"

			if(user.client.holder)
				dat +="<td width='300px' height='300px' valign='top'>"

				dat += "<h2>Admin Settings</h2>"

				dat += "<b>Adminhelp Sounds:</b> <a href='?_src_=prefs;preference=hear_adminhelps'>[(toggles & SOUND_ADMINHELP)?"Enabled":"Disabled"]</a><br>"
				dat += "<b>Announce Login:</b> <a href='?_src_=prefs;preference=announce_login'>[(toggles & ANNOUNCE_LOGIN)?"Enabled":"Disabled"]</a><br>"
				dat += "<br>"
				dat += "<b>Combo HUD Lighting:</b> <a href = '?_src_=prefs;preference=combohud_lighting'>[(toggles & COMBOHUD_LIGHTING)?"Full-bright":"No Change"]</a><br>"
				dat += "</td>"
			dat += "</tr></table>"

		if(3)//lewd preferences
			dat += "<table><tr><td width='340px' height='300px' valign='top'>"
			dat += "<h2>Lewd content</h2>"
			dat += "<b>Allow Lewd Verbs:</b> <a href='?_src_=prefs;preference=verb_consent'>[(wasteland_toggles & VERB_CONSENT) ? "Yes":"No"]</a><br>"
			dat += "<b>Arousal:</b><a href='?_src_=prefs;preference=arousable'>[arousable == TRUE ? "Enabled" : "Disabled"]</a><BR>"


			dat += "<h2>Genitalia Settings</h2>"
			dat +="<td width='220px' height='300px' valign='top'>"
			if(NOGENITALS in pref_species.species_traits)
				dat += "<b>Your species ([pref_species.name]) does not support genitals!</b><br>"
			else
				(pref_species.use_skintones = TRUE)
				dat += "<h3>Verb genital</h3>"
				dat += "<a href='?_src_=prefs;preference=has_dick'>Penis(Verb): [has_dick ? "Yes" : "No"]</A><br>"
				if(has_dick == 1)
					dat += "<h3>Penis</h3>"
					dat += "<a style='display:block;width:50px' href='?_src_=prefs;preference=has_cock'>[features["has_cock"] == TRUE ? "Yes" : "No"]</a>"
					if(features["has_cock"])
						if(pref_species.use_skintones && features["genitals_use_skintone"] == TRUE)
							dat += "<b>Penis Color:</b></a><BR>"
							dat += "<span style='border: 1px solid #161616; background-color: #[skintone2hex(skin_tone)];'>&nbsp;&nbsp;&nbsp;</span>(Skin tone overriding)</a><br>"
						dat += "<b>Penis Shape:</b> <a style='display:block;width:120px' href='?_src_=prefs;preference=cock_shape;task=input'>[features["cock_shape"]]</a>"
						dat += "<b>Penis Length:</b> <a style='display:block;width:120px' href='?_src_=prefs;preference=cock_length;task=input'>[features["cock_length"]] inch(es)</a>"
						dat += "<b>Has Testicles:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=has_balls'>[features["has_balls"] == TRUE ? "Yes" : "No"]</a>"
						if(features["has_balls"])
							if(pref_species.use_skintones && features["genitals_use_skintone"] == TRUE)
								dat += "<b>Testicles Color:</b></a><BR>"
								dat += "<span style='border: 1px solid #161616; background-color: #[skintone2hex(skin_tone)];'>&nbsp;&nbsp;&nbsp;</span>(Skin tone overriding)<br>"
							dat += "<b>Testicles showing:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=balls_shape;task=input'>[features["balls_shape"]]</a>"
				dat += APPEARANCE_CATEGORY_COLUMN
				dat += "<h3>Verb genital</h3>"
				dat += "<a href='?_src_=prefs;preference=has_vulva'>Vagina(Verb): [has_vulva ? "Yes" : "No"]</A><br>"
				if(has_vulva == 1)
					dat += "<h3>Vagina</h3>"
					dat += "<a style='display:block;width:50px' href='?_src_=prefs;preference=has_vag'>[features["has_vag"] == TRUE ? "Yes" : "No"]</a>"
					if(features["has_vag"])
						dat += "<b>Vagina Type:</b> <a style='display:block;width:100px' href='?_src_=prefs;preference=vag_shape;task=input'>[features["vag_shape"]]</a>"
						if(pref_species.use_skintones && features["genitals_use_skintone"] == TRUE)
							dat += "<b>Vagina Color:</b></a><BR>"
							dat += "<span style='border: 1px solid #161616; background-color: #[skintone2hex(skin_tone)];'>&nbsp;&nbsp;&nbsp;</span>(Skin tone overriding)<br>"
						dat += "<b>Has Womb:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=has_womb'>[features["has_womb"] == TRUE ? "Yes" : "No"]</a>"
					//if(features["has_womb"])
						//dat += "<b>Can Get Pregnant:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=can_get_preg'>[features["can_get_preg"] == TRUE ? "Yes" : "No"]</a>"
					dat += "</td>"
				dat += APPEARANCE_CATEGORY_COLUMN
				dat += "<h3>Verb genital</h3>"
				dat += "<a href='?_src_=prefs;preference=has_breast'>Breasts(Verb): [has_breast ? "Yes" : "No"]</A><br>"
				if(has_breast == 1)
					dat += "<h3>Breasts</h3>"
					dat += "<a style='display:block;width:50px' href='?_src_=prefs;preference=has_breasts'>[features["has_breasts"] == TRUE ? "Yes" : "No"]</a>"
					if(features["has_breasts"])
						if(pref_species.use_skintones && features["genitals_use_skintone"] == TRUE)
							dat += "<b>Color:</b></a><BR>"
							dat += "<span style='border: 1px solid #161616; background-color: #[skintone2hex(skin_tone)];'>&nbsp;&nbsp;&nbsp;</span>(Skin tone overriding)<br>"
						dat += "<b>Cup Size:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=breasts_size;task=input'>[features["breasts_size"]]</a>"
						dat += "<b>Breast Shape:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=breasts_shape;task=input'>[features["breasts_shape"]]</a>"
						dat += "<b>Lactates:</b><a style='display:block;width:50px' href='?_src_=prefs;preference=breasts_producing'>[features["breasts_producing"] == TRUE ? "Yes" : "No"]</a>"
				dat += "</td>"
			dat += "</td>"
			dat += "</tr></table>"
	dat += "<hr><center>"

	if(!IsGuestKey(user.key))
		dat += "<a href='?_src_=prefs;preference=load'>Undo</a> "
		dat += "<a href='?_src_=prefs;preference=save'>Save Setup</a> "

	dat += "<a href='?_src_=prefs;preference=reset_all'>Reset Setup</a>"
	dat += "</center>"

	winshow(user, "preferences_window", TRUE)
	var/datum/browser/popup = new(user, "preferences_browser", "<div align='center'>Character Setup</div>", 640, 770)
	popup.set_content(dat.Join())
	popup.open(FALSE)
	onclose(user, "preferences_window", src)

#undef APPEARANCE_CATEGORY_COLUMN
#undef MAX_MUTANT_ROWS

/datum/preferences/proc/SetChoices(mob/user, limit = 17, list/splitJobs = list("Chief Engineer"), widthPerColumn = 295, height = 620)
	if(!SSjob)
		return

	//limit - The amount of jobs allowed per column. Defaults to 17 to make it look nice.
	//splitJobs - Allows you split the table by job. You can make different tables for each department by including their heads. Defaults to CE to make it look nice.
	//widthPerColumn - Screen's width for every column.
	//height - Screen's height.

	var/width = widthPerColumn

	var/HTML = "<center>"
	if(SSjob.occupations.len <= 0)
		HTML += "The job SSticker is not yet finished creating jobs, please try again later"
		HTML += "<center><a href='?_src_=prefs;preference=job;task=close'>Done</a></center><br>" // Easier to press up here.

	else
		HTML += "<b>Choose occupation chances</b><br>"
		HTML += "<div align='center'>Left-click to raise an occupation preference, right-click to lower it.<br></div>"
		HTML += "<center><a href='?_src_=prefs;preference=job;task=close'>Done</a></center><br>" // Easier to press up here.
		HTML += "<script type='text/javascript'>function setJobPrefRedirect(level, rank) { window.location.href='?_src_=prefs;preference=job;task=setJobLevel;level=' + level + ';text=' + encodeURIComponent(rank); return false; }</script>"
		HTML += "<table width='100%' cellpadding='1' cellspacing='0'><tr><td width='20%'>" // Table within a table for alignment, also allows you to easily add more colomns.
		HTML += "<table width='100%' cellpadding='1' cellspacing='0'>"
		var/index = -1

		//The job before the current job. I only use this to get the previous jobs color when I'm filling in blank rows.
		var/datum/job/lastJob

		var/datum/job/overflow = SSjob.GetJob(SSjob.overflow_role)

		for(var/datum/job/job in sortList(SSjob.occupations, /proc/cmp_job_display_asc))
			if(job.total_positions == 0)
				continue

			if(job.faction == "None") //All jobs are now loaded into occupations so maps can just hide individual ones
				continue

			index += 1
			if((index >= limit) || (job.title in splitJobs))
				width += widthPerColumn
				if((index < limit) && (lastJob != null))
					//If the cells were broken up by a job in the splitJob list then it will fill in the rest of the cells with
					//the last job's selection color. Creating a rather nice effect.
					for(var/i = 0, i < (limit - index), i += 1)
						HTML += "<tr bgcolor='[lastJob.selection_color]'><td width='60%' align='right'>&nbsp</td><td>&nbsp</td></tr>"
				HTML += "</table></td><td width='20%'><table width='100%' cellpadding='1' cellspacing='0'>"
				index = 0

			HTML += "<tr bgcolor='[job.selection_color]'><td width='60%' align='right'>"
			var/rank = job.title
			lastJob = job

			if(jobban_isbanned(user, rank))
				HTML += "<font color=red>[rank]</font></td><td><a href='?_src_=prefs;jobbancheck=[rank]'> BANNED</a></td></tr>"
				continue
			var/required_playtime_remaining = job.required_playtime_remaining(user.client)
			if(required_playtime_remaining)
				HTML += "<font color=red>[rank]</font></td><td><font color=red> \[ [get_exp_format(required_playtime_remaining)] as [job.get_exp_req_type()] \] </font></td></tr>"
				continue
			if(!job.player_old_enough(user.client))
				var/available_in_days = job.available_in_days(user.client)
				HTML += "<font color=red>[rank]</font></td><td><font color=red> \[IN [(available_in_days)] DAYS\]</font></td></tr>"
				continue
			if((job_civilian_low & overflow.flag) && (rank != SSjob.overflow_role) && !jobban_isbanned(user, SSjob.overflow_role))
				HTML += "<font color=orange>[rank]</font></td><td></td></tr>"
				continue
			if(job.whitelist_locked(user.client,job.title))
				HTML += "<font color=black>[rank]</font></td><td><font color=red>LOCKED</font></td></tr>"
				continue
			if((rank in GLOB.command_positions) || (rank == "AI"))//Bold head jobs
				HTML += "<b><span class='dark'>[rank]</span></b>"
			else
				HTML += "<span class='dark'>[rank]</span>"

			HTML += "</td><td width='40%'>"

			var/prefLevelLabel = "ERROR"
			var/prefLevelColor = "pink"
			var/prefUpperLevel = -1 // level to assign on left click
			var/prefLowerLevel = -1 // level to assign on right click

			if(GetJobDepartment(job, 1) & job.flag)
				prefLevelLabel = "High"
				prefLevelColor = "slateblue"
				prefUpperLevel = 4
				prefLowerLevel = 2
			else if(GetJobDepartment(job, 2) & job.flag)
				prefLevelLabel = "Medium"
				prefLevelColor = "green"
				prefUpperLevel = 1
				prefLowerLevel = 3
			else if(GetJobDepartment(job, 3) & job.flag)
				prefLevelLabel = "Low"
				prefLevelColor = "orange"
				prefUpperLevel = 2
				prefLowerLevel = 4
			else
				prefLevelLabel = "NEVER"
				prefLevelColor = "red"
				prefUpperLevel = 3
				prefLowerLevel = 1

			HTML += "<a class='white' href='?_src_=prefs;preference=job;task=setJobLevel;level=[prefUpperLevel];text=[rank]' oncontextmenu='javascript:return setJobPrefRedirect([prefLowerLevel], \"[rank]\");'>"

			if(rank == SSjob.overflow_role)//Overflow is special
				if(job_civilian_low & overflow.flag)
					HTML += "<font color=green>Yes</font>"
				else
					HTML += "<font color=red>No</font>"
				HTML += "</a></td></tr>"
				continue

			HTML += "<font color=[prefLevelColor]>[prefLevelLabel]</font>"
			HTML += "</a></td></tr>"

		for(var/i = 1, i < (limit - index), i += 1) // Finish the column so it is even
			HTML += "<tr bgcolor='[lastJob.selection_color]'><td width='60%' align='right'>&nbsp</td><td>&nbsp</td></tr>"

		HTML += "</td'></tr></table>"
		HTML += "</center></table>"

		var/message = "Be a [SSjob.overflow_role] if preferences unavailable"
		if(joblessrole == BERANDOMJOB)
			message = "Return to lobby if preferences unavailable" //Random job disabled
		else if(joblessrole == RETURNTOLOBBY)
			message = "Return to lobby if preferences unavailable"
		HTML += "<center><br><a href='?_src_=prefs;preference=job;task=random'>[message]</a></center>"
		HTML += "<center><a href='?_src_=prefs;preference=job;task=reset'>Reset Preferences</a></center>"

	user << browse(null, "window=preferences")
	var/datum/browser/popup = new(user, "mob_occupation", "<div align='center'>Occupation Preferences</div>", width, height)
	popup.set_window_options("can_close=0")
	popup.set_content(HTML)
	popup.open(0)


/datum/preferences/proc/SetJobPreferenceLevel(datum/job/job, level)
	if (!job)
		return 0

	if (level == 1) // to high
		// remove any other job(s) set to high
		job_civilian_med |= job_civilian_high
		job_engsec_med |= job_engsec_high
		job_medsci_med |= job_medsci_high
		job_ncr_med |= job_ncr_high
		job_legion_med |= job_legion_high
		job_bos_med |= job_bos_high
		job_den_med |= job_den_high
		job_vault_med |= job_vault_high
		job_wasteland_med |= job_wasteland_high
		job_enclave_med |= job_enclave_high
		job_tribal_med |= job_tribal_high
		job_followers_med |= job_followers_high
		job_civilian_high = 0
		job_engsec_high = 0
		job_medsci_high = 0
		job_ncr_high = 0
		job_legion_high = 0
		job_bos_high = 0
		job_den_high = 0
		job_vault_high = 0
		job_wasteland_high = 0
		job_enclave_high = 0
		job_enclave_high = 0

	if (job.department_flag == CIVILIAN)
		job_civilian_low &= ~job.flag
		job_civilian_med &= ~job.flag
		job_civilian_high &= ~job.flag

		switch(level)
			if (1)
				job_civilian_high |= job.flag
			if (2)
				job_civilian_med |= job.flag
			if (3)
				job_civilian_low |= job.flag

		return 1
	else if (job.department_flag == ENGSEC)
		job_engsec_low &= ~job.flag
		job_engsec_med &= ~job.flag
		job_engsec_high &= ~job.flag

		switch(level)
			if (1)
				job_engsec_high |= job.flag
			if (2)
				job_engsec_med |= job.flag
			if (3)
				job_engsec_low |= job.flag

		return 1
	else if (job.department_flag == MEDSCI)
		job_medsci_low &= ~job.flag
		job_medsci_med &= ~job.flag
		job_medsci_high &= ~job.flag

		switch(level)
			if (1)
				job_medsci_high |= job.flag
			if (2)
				job_medsci_med |= job.flag
			if (3)
				job_medsci_low |= job.flag

		return 1
	else if (job.department_flag == NCR)
		job_ncr_low &= ~job.flag
		job_ncr_med &= ~job.flag
		job_ncr_high &= ~job.flag

		switch(level)
			if (1)
				job_ncr_high |= job.flag
			if (2)
				job_ncr_med |= job.flag
			if (3)
				job_ncr_low |= job.flag

		return 1
	else if (job.department_flag == LEGION)
		job_legion_low &= ~job.flag
		job_legion_med &= ~job.flag
		job_legion_high &= ~job.flag

		switch(level)
			if (1)
				job_legion_high |= job.flag
			if (2)
				job_legion_med |= job.flag
			if (3)
				job_legion_low |= job.flag

		return 1
	else if (job.department_flag == BOS)
		job_bos_low &= ~job.flag
		job_bos_med &= ~job.flag
		job_bos_high &= ~job.flag

		switch(level)
			if (1)
				job_bos_high |= job.flag
			if (2)
				job_bos_med |= job.flag
			if (3)
				job_bos_low |= job.flag

		return 1

	else if (job.department_flag == DEN)
		job_den_low &= ~job.flag
		job_den_med &= ~job.flag
		job_den_high &= ~job.flag

		switch(level)
			if (1)
				job_den_high |= job.flag
			if (2)
				job_den_med |= job.flag
			if (3)
				job_den_low |= job.flag

		return 1

	else if (job.department_flag == VAULT)
		job_vault_low &= ~job.flag
		job_vault_med &= ~job.flag
		job_vault_high &= ~job.flag

		switch(level)
			if (1)
				job_vault_high |= job.flag
			if (2)
				job_vault_med |= job.flag
			if (3)
				job_vault_low |= job.flag

		return 1

	else if (job.department_flag == WASTELAND)
		job_wasteland_low &= ~job.flag
		job_wasteland_med &= ~job.flag
		job_wasteland_high &= ~job.flag

		switch(level)
			if (1)
				job_wasteland_high |= job.flag
			if (2)
				job_wasteland_med |= job.flag
			if (3)
				job_wasteland_low |= job.flag

		return 1

	else if (job.department_flag == ENCLAVE)
		job_enclave_low &= ~job.flag
		job_enclave_med &= ~job.flag
		job_enclave_high &= ~job.flag

		switch(level)
			if (1)
				job_enclave_high |= job.flag
			if (2)
				job_enclave_med |= job.flag
			if (3)
				job_enclave_low |= job.flag

		return 1
	else if (job.department_flag == TRIBAL)
		job_tribal_low &= ~job.flag
		job_tribal_med &= ~job.flag
		job_tribal_high &= ~job.flag

		switch(level)
			if (1)
				job_tribal_high |= job.flag
			if (2)
				job_tribal_med |= job.flag
			if (3)
				job_tribal_low |= job.flag

		return 1
	else if (job.department_flag == FOLLOWERS)
		job_followers_low &= ~job.flag
		job_followers_med &= ~job.flag
		job_followers_high &= ~job.flag

		switch(level)
			if (1)
				job_followers_high |= job.flag
			if (2)
				job_followers_med |= job.flag
			if (3)
				job_followers_low |= job.flag
		return 1
	return 0

/datum/preferences/proc/UpdateJobPreference(mob/user, role, desiredLvl)
	if(!SSjob || SSjob.occupations.len <= 0)
		return
	var/datum/job/job = SSjob.GetJob(role)

	if(!job)
		user << browse(null, "window=mob_occupation")
		ShowChoices(user)
		return

	if (!isnum(desiredLvl))
		to_chat(user, "<span class='danger'>UpdateJobPreference - desired level was not a number. Please notify coders!</span>")
		ShowChoices(user)
		return

	if(role == SSjob.overflow_role)
		if(job_civilian_low & job.flag)
			job_civilian_low &= ~job.flag
		else
			job_civilian_low |= job.flag
		SetChoices(user)
		return 1

	SetJobPreferenceLevel(job, desiredLvl)
	SetChoices(user)

	return 1

/datum/preferences/proc/ResetJobs()

	job_civilian_high = 0
	job_civilian_med = 0
	job_civilian_low = 0

	job_medsci_high = 0
	job_medsci_med = 0
	job_medsci_low = 0

	job_engsec_high = 0
	job_engsec_med = 0
	job_engsec_low = 0

	job_ncr_high = 0
	job_ncr_med = 0
	job_ncr_low = 0

	job_legion_high = 0
	job_legion_med = 0
	job_legion_low = 0

	job_bos_high = 0
	job_bos_med = 0
	job_bos_low = 0

	job_den_high = 0
	job_den_med = 0
	job_den_low = 0

	job_vault_high = 0
	job_vault_med = 0
	job_vault_low = 0

	job_wasteland_high = 0
	job_wasteland_med = 0
	job_wasteland_low = 0

	job_enclave_high = 0
	job_enclave_med = 0
	job_enclave_low = 0

	job_tribal_high = 0
	job_tribal_med = 0
	job_tribal_high = 0

	job_followers_high = 0
	job_followers_med = 0
	job_followers_high = 0

/datum/preferences/proc/GetJobDepartment(datum/job/job, level)
	if(!job || !level)
		return 0
	switch(job.department_flag)
		if(CIVILIAN)
			switch(level)
				if(1)
					return job_civilian_high
				if(2)
					return job_civilian_med
				if(3)
					return job_civilian_low
		if(MEDSCI)
			switch(level)
				if(1)
					return job_medsci_high
				if(2)
					return job_medsci_med
				if(3)
					return job_medsci_low
		if(ENGSEC)
			switch(level)
				if(1)
					return job_engsec_high
				if(2)
					return job_engsec_med
				if(3)
					return job_engsec_low
		if(NCR)
			switch(level)
				if(1)
					return job_ncr_high
				if(2)
					return job_ncr_med
				if(3)
					return job_ncr_low
		if(LEGION)
			switch(level)
				if(1)
					return job_legion_high
				if(2)
					return job_legion_med
				if(3)
					return job_legion_low
		if(BOS)
			switch(level)
				if(1)
					return job_bos_high
				if(2)
					return job_bos_med
				if(3)
					return job_bos_low
		if(DEN)
			switch(level)
				if(1)
					return job_den_high
				if(2)
					return job_den_med
				if(3)
					return job_den_low
		if(VAULT)
			switch(level)
				if(1)
					return job_vault_high
				if(2)
					return job_vault_med
				if(3)
					return job_vault_low
		if(WASTELAND)
			switch(level)
				if(1)
					return job_wasteland_high
				if(2)
					return job_wasteland_med
				if(3)
					return job_wasteland_low
		if(ENCLAVE)
			switch(level)
				if(1)
					return job_enclave_high
				if(2)
					return job_enclave_med
				if(3)
					return job_enclave_low
		if(TRIBAL)
			switch(level)
				if(1)
					return job_tribal_high
				if(2)
					return job_tribal_med
				if(3)
					return job_tribal_low

		if(FOLLOWERS)
			switch(level)
				if(1)
					return job_followers_high
				if(2)
					return job_followers_med
				if(3)
					return job_followers_low
	return 0

/datum/preferences/proc/SetQuirks(mob/user)
	if(!SSquirks)
		to_chat(user, "<span class='danger'>The quirk subsystem is still initializing! Try again in a minute.</span>")
		return

	var/list/dat = list()
	if(!SSquirks.quirks.len)
		dat += "The quirk subsystem hasn't finished initializing, please hold..."
		dat += "<center><a href='?_src_=prefs;preference=trait;task=close'>Done</a></center><br>"

	else
		dat += "<center><b>Choose quirk setup</b></center><br>"
		dat += "<div align='center'>Left-click to add or remove quirks. You need negative quirks to have positive ones.<br>\
		Quirks are applied at roundstart and cannot normally be removed.</div>"
		dat += "<center><a href='?_src_=prefs;preference=trait;task=close'>Done</a></center>"
		dat += "<hr>"
		dat += "<center><b>Current quirks:</b> [all_quirks.len ? all_quirks.Join(", ") : "None"]</center>"
		dat += "<center>[positive_quirks.len] / [MAX_QUIRKS] max positive quirks<br>\
		<b>Quirk balance remaining:</b> [GetQuirkBalance()]</center><br>"
		for(var/V in SSquirks.quirks)
			var/datum/quirk/T = SSquirks.quirks[V]
			var/quirk_name = initial(T.name)
			var/has_quirk
			var/quirk_cost = initial(T.value) * -1
			var/lock_reason = "This trait is unavailable."
			var/quirk_conflict = FALSE
			if(initial(T.locked))
				quirk_conflict = TRUE
			for(var/_V in all_quirks)
				if(_V == quirk_name)
					has_quirk = TRUE
			if(initial(T.mood_quirk) && CONFIG_GET(flag/disable_human_mood))
				lock_reason = "Mood is disabled."
				quirk_conflict = TRUE
			if(has_quirk)
				if(quirk_conflict)
					all_quirks -= quirk_name
					has_quirk = FALSE
				else
					quirk_cost *= -1 //invert it back, since we'd be regaining this amount
			if(quirk_cost > 0)
				quirk_cost = "+[quirk_cost]"
			var/font_color = "#AAAAFF"
			if(initial(T.value) != 0)
				font_color = initial(T.value) > 0 ? "#AAFFAA" : "#FFAAAA"
			if(quirk_conflict)
				dat += "<font color='[font_color]'>[quirk_name]</font> - [initial(T.desc)] \
				<font color='red'><b>LOCKED: [lock_reason]</b></font><br>"
			else
				if(has_quirk)
					dat += "<b><font color='[font_color]'>[quirk_name]</font></b> - [initial(T.desc)] \
					<a href='?_src_=prefs;preference=trait;task=update;trait=[quirk_name]'>[has_quirk ? "Lose" : "Take"] ([quirk_cost] pts.)</a><br>"
				else
					dat += "<font color='[font_color]'>[quirk_name]</font> - [initial(T.desc)] \
					<a href='?_src_=prefs;preference=trait;task=update;trait=[quirk_name]'>[has_quirk ? "Lose" : "Take"] ([quirk_cost] pts.)</a><br>"
		dat += "<br><center><a href='?_src_=prefs;preference=trait;task=reset'>Reset Traits</a></center>"

	user << browse(null, "window=preferences")
	var/datum/browser/popup = new(user, "mob_occupation", "<div align='center'>SPECIAL</div>", 900, 600) //no reason not to reuse the occupation window, as it's cleaner that way
	popup.set_window_options("can_close=0")
	popup.set_content(dat.Join())
	popup.open(0)
	return

/datum/preferences/proc/SetSpecial(mob/user)
//	if(!SSquirks)
	//	to_chat(user, "<span class='danger'>The quirk subsystem is still initializing! Try again in a minute.</span>")
//		return

	var/list/dat = list()

	var/total = special_s + special_p + special_e + special_c + special_i + special_a + special_l

	dat += "<center><b>Allocate points</b></center><br>"
	dat += "<center>[total] out of 40 possible</center><br>"
	dat += "<b>Strength	   :</b> <a href='?_src_=prefs;preference=special_s;task=input'>[special_s]</a><BR>"
	dat += "<b>Perception  :</b> <a href='?_src_=prefs;preference=special_p;task=input'>[special_p]</a><BR>"
	dat += "<b>Endurance   :</b> <a href='?_src_=prefs;preference=special_e;task=input'>[special_e]</a><BR>"
	dat += "<b>Charisma    :</b> <a href='?_src_=prefs;preference=special_c;task=input'>[special_c]</a><BR>"
	dat += "<b>Intelligence:</b> <a href='?_src_=prefs;preference=special_i;task=input'>[special_i]</a><BR>"
	dat += "<b>Agility     :</b> <a href='?_src_=prefs;preference=special_a;task=input'>[special_a]</a><BR>"
	dat += "<b>Luck        :</b> <a href='?_src_=prefs;preference=special_l;task=input'>[special_l]</a><BR>"
	if (total>40)
		dat += "<center>Maximum exceeded, please change until your total is at or below 40<center>"
	else
		dat += "<center><a href='?_src_=prefs;preference=special;task=close'>Done</a></center>"

	user << browse(null, "window=preferences")
	var/datum/browser/popup = new(user, "mob_occupation", "<div align='center'>S.P.E.C.I.A.L</div>", 300, 400) //no reason not to reuse the occupation window, as it's cleaner that way
	popup.set_window_options("can_close=0")
	popup.set_content(dat.Join())
	popup.open(0)
	return

/datum/preferences/proc/GetQuirkBalance()
	var/bal = 0
	for(var/V in all_quirks)
		var/datum/quirk/T = SSquirks.quirks[V]
		bal -= initial(T.value)
	return bal

/datum/preferences/Topic(href, href_list, hsrc)			//yeah, gotta do this I guess..
	. = ..()
	if(href_list["close"])
		var/client/C = usr.client
		if(C)
			C.clear_character_previews()

/datum/preferences/proc/process_link(mob/user, list/href_list)
	if(href_list["jobbancheck"])
		var/job = sanitizeSQL(href_list["jobbancheck"])
		var/sql_ckey = sanitizeSQL(user.ckey)
		var/datum/DBQuery/query_get_jobban = SSdbcore.NewQuery("SELECT reason, bantime, duration, expiration_time, a_ckey FROM [format_table_name("ban")] WHERE ckey = '[sql_ckey]' AND (bantype = 'JOB_PERMABAN'  OR (bantype = 'JOB_TEMPBAN' AND expiration_time > Now())) AND isnull(unbanned) AND job = '[job]'")
		if(!query_get_jobban.warn_execute())
			qdel(query_get_jobban)
			return
		if(query_get_jobban.NextRow())
			var/reason = query_get_jobban.item[1]
			var/bantime = query_get_jobban.item[2]
			var/duration = query_get_jobban.item[3]
			var/expiration_time = query_get_jobban.item[4]
			var/a_ckey = query_get_jobban.item[5]
			var/text
			text = "<span class='redtext'>You, or another user of this computer, ([user.ckey]) is banned from playing [job]. The ban reason is:<br>[reason]<br>This ban was applied by [a_ckey] on [bantime]"
			if(text2num(duration) > 0)
				text += ". The ban is for [duration] minutes and expires on [expiration_time] (server time)"
			text += ".</span>"
			to_chat(user, text)
		qdel(query_get_jobban)
		return

	if(href_list["preference"] == "job")
		switch(href_list["task"])
			if("close")
				user << browse(null, "window=mob_occupation")
				ShowChoices(user)
			if("reset")
				ResetJobs()
				SetChoices(user)
			if("random")
				switch(joblessrole)
					if(RETURNTOLOBBY)
						if(jobban_isbanned(user, SSjob.overflow_role))
							joblessrole = RETURNTOLOBBY
						else
							joblessrole = BEOVERFLOW
					if(BEOVERFLOW)
						joblessrole = RETURNTOLOBBY
					if(BERANDOMJOB)
						joblessrole = RETURNTOLOBBY
				SetChoices(user)
			if("setJobLevel")
				UpdateJobPreference(user, href_list["text"], text2num(href_list["level"]))
			else
				SetChoices(user)
		return 1

	else if(href_list["preference"] == "trait")
		switch(href_list["task"])
			if("close")
				user << browse(null, "window=mob_occupation")
				ShowChoices(user)
			if("update")
				var/quirk = href_list["trait"]
				if(!SSquirks.quirks[quirk])
					return
				var/value = SSquirks.quirk_points[quirk]
				if(value == 0)
					if(quirk in neutral_quirks)
						neutral_quirks -= quirk
						all_quirks -= quirk
					else
						neutral_quirks += quirk
						all_quirks += quirk
				else
					var/balance = GetQuirkBalance()
					if(quirk in positive_quirks)
						positive_quirks -= quirk
						all_quirks -= quirk
					else if(quirk in negative_quirks)
						if(balance + value < 0)
							to_chat(user, "<span class='warning'>Refunding this would cause you to go below your balance!</span>")
							return
						negative_quirks -= quirk
						all_quirks -= quirk
					else if(value > 0)
						if(positive_quirks.len >= MAX_QUIRKS)
							to_chat(user, "<span class='warning'>You can't have more than [MAX_QUIRKS] positive quirks!</span>")
							return
						if(balance - value < 0)
							to_chat(user, "<span class='warning'>You don't have enough balance to gain this quirk!</span>")
							return
						positive_quirks += quirk
						all_quirks += quirk
					else
						negative_quirks += quirk
						all_quirks += quirk
				SetQuirks(user)
			if("reset")
				all_quirks = list()
				positive_quirks = list()
				negative_quirks = list()
				neutral_quirks = list()
				SetQuirks(user)
			else
				SetQuirks(user)
		return TRUE

	else if(href_list["preference"] == "special")
		switch(href_list["task"])
			if("close")
				user << browse(null, "window=mob_occupation")
				ShowChoices(user)
			if("update")
			if("reset")
			else
				SetSpecial(user)
		return TRUE

	switch(href_list["task"])
		if("random")
			switch(href_list["preference"])
				if("name")
					real_name = pref_species.random_name(gender,1)
				if("age")
					age = rand(AGE_MIN, AGE_MAX)
				if("hair")
					hair_color = random_short_color()
				if("hair_style")
					hair_style = random_hair_style(gender)
				if("facial")
					facial_hair_color = random_short_color()
				if("facial_hair_style")
					facial_hair_style = random_facial_hair_style(gender)
				if("underwear")
					underwear = random_underwear(gender)
					undie_color = random_short_color()
				if("undershirt")
					undershirt = random_undershirt(gender)
					shirt_color = random_short_color()
				if("socks")
					socks = random_socks()
					socks_color = random_short_color()
				if(BODY_ZONE_PRECISE_EYES)
					eye_color = random_eye_color()
				if("s_tone")
					skin_tone = random_skin_tone()
				if("bag")
					backbag = pick(GLOB.backbaglist)
				if("all")
					random_character()

		if("input")
			if(href_list["preference"] in GLOB.preferences_custom_names)
				ask_for_custom_name(user,href_list["preference"])
			switch(href_list["preference"])
				if("special_s")
					var/new_point = input(user, "Choose Amount(1-9)", "Strength") as num|null
					if(new_point)
						special_s = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_p")
					var/new_point = input(user, "Choose Amount(1-9)", "Perception") as num|null
					if(new_point)
						special_p = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_e")
					var/new_point = input(user, "Choose Amount(1-9)", "Endurance") as num|null
					if(new_point)
						special_e = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_c")
					var/new_point = input(user, "Choose Amount(1-9)", "Charisma") as num|null
					if(new_point)
						special_c = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_i")
					var/new_point = input(user, "Choose Amount(1-9)", "Intelligence") as num|null
					if(new_point)
						special_i = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_a")
					var/new_point = input(user, "Choose Amount(1-9)", "Agility") as num|null
					if(new_point)
						special_a = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("special_l")
					var/new_point = input(user, "Choose Amount(1-9)", "Luck") as num|null
					if(new_point)
						special_l = max(min(round(text2num(new_point)), 9),1)
					SetSpecial(user)
					return 1
				if("ghostform")
					if(unlock_content)
						var/new_form = input(user, "Thanks for supporting BYOND - Choose your ghostly form:","Thanks for supporting BYOND",null) as null|anything in GLOB.ghost_forms
						if(new_form)
							ghost_form = new_form
				if("ghostorbit")
					if(unlock_content)
						var/new_orbit = input(user, "Thanks for supporting BYOND - Choose your ghostly orbit:","Thanks for supporting BYOND", null) as null|anything in GLOB.ghost_orbits
						if(new_orbit)
							ghost_orbit = new_orbit

				if("ghostaccs")
					var/new_ghost_accs = alert("Do you want your ghost to show full accessories where possible, hide accessories but still use the directional sprites where possible, or also ignore the directions and stick to the default sprites?",,GHOST_ACCS_FULL_NAME, GHOST_ACCS_DIR_NAME, GHOST_ACCS_NONE_NAME)
					switch(new_ghost_accs)
						if(GHOST_ACCS_FULL_NAME)
							ghost_accs = GHOST_ACCS_FULL
						if(GHOST_ACCS_DIR_NAME)
							ghost_accs = GHOST_ACCS_DIR
						if(GHOST_ACCS_NONE_NAME)
							ghost_accs = GHOST_ACCS_NONE

				if("ghostothers")
					var/new_ghost_others = alert("Do you want the ghosts of others to show up as their own setting, as their default sprites or always as the default white ghost?",,GHOST_OTHERS_THEIR_SETTING_NAME, GHOST_OTHERS_DEFAULT_SPRITE_NAME, GHOST_OTHERS_SIMPLE_NAME)
					switch(new_ghost_others)
						if(GHOST_OTHERS_THEIR_SETTING_NAME)
							ghost_others = GHOST_OTHERS_THEIR_SETTING
						if(GHOST_OTHERS_DEFAULT_SPRITE_NAME)
							ghost_others = GHOST_OTHERS_DEFAULT_SPRITE
						if(GHOST_OTHERS_SIMPLE_NAME)
							ghost_others = GHOST_OTHERS_SIMPLE

				if("name")
					var/new_name = reject_bad_name( input(user, "Choose your character's name:", "Character Preference")  as text|null )
					if(new_name)
						real_name = new_name
					else
						to_chat(user, "<font color='red'>Invalid name. Your name should be at least 2 and at most [MAX_NAME_LEN] characters long. It may only contain the characters A-Z, a-z, -, ' and .</font>")

				if("age")
					var/new_age = input(user, "Choose your character's age:\n([AGE_MIN]-[AGE_MAX])", "Character Preference") as num|null
					if(new_age)
						age = max(min( round(text2num(new_age)), AGE_MAX),AGE_MIN)

				if("flavor_text")
					var/oldtext = features["flavor_text"]
					var/msg = stripped_multiline_input(usr," Set the flavor text in your 'examine' verb. This can also be used for OOC notes. \n Leave blank and hit 'OK' to delete it. Hit 'Cancel' to abort. \n This will not be visible if you wear a mask or helmet that hides your face.","Flavor Text",html_decode(features["flavor_text"]), MAX_MESSAGE_LEN*2, TRUE)
					if(msg)
						msg = copytext(msg, 1, MAX_MESSAGE_LEN*2)
						features["flavor_text"] = msg
					else
						features["flavor_text"] = oldtext

				if("metadata")
					var/new_metadata = input(user, "Enter any information you'd like others to see, such as Roleplay-preferences:", "Game Preference" , metadata)  as message|null
					if(new_metadata)
						metadata = sanitize(copytext(new_metadata,1,MAX_MESSAGE_LEN))

				if("hair")
					var/new_hair = input(user, "Choose your character's hair colour:", "Character Preference","#"+hair_color) as color|null
					if(new_hair)
						hair_color = sanitize_hexcolor(new_hair)


				if("hair_style")
					var/new_hair_style
					if(gender == MALE)
						new_hair_style = input(user, "Choose your character's hair style:", "Character Preference")  as null|anything in GLOB.hair_styles_male_list
					else
						new_hair_style = input(user, "Choose your character's hair style:", "Character Preference")  as null|anything in GLOB.hair_styles_female_list
					if(new_hair_style)
						hair_style = new_hair_style

				if("next_hair_style")
					if (gender == MALE)
						hair_style = next_list_item(hair_style, GLOB.hair_styles_male_list)
					else
						hair_style = next_list_item(hair_style, GLOB.hair_styles_female_list)

				if("previous_hair_style")
					if (gender == MALE)
						hair_style = previous_list_item(hair_style, GLOB.hair_styles_male_list)
					else
						hair_style = previous_list_item(hair_style, GLOB.hair_styles_female_list)

				if("facial")
					var/new_facial = input(user, "Choose your character's facial-hair colour:", "Character Preference","#"+facial_hair_color) as color|null
					if(new_facial)
						facial_hair_color = sanitize_hexcolor(new_facial)

				if("facial_hair_style")
					var/new_facial_hair_style
					if(gender == MALE)
						new_facial_hair_style = input(user, "Choose your character's facial-hair style:", "Character Preference")  as null|anything in GLOB.facial_hair_styles_male_list
					else
						new_facial_hair_style = input(user, "Choose your character's facial-hair style:", "Character Preference")  as null|anything in GLOB.facial_hair_styles_female_list
					if(new_facial_hair_style)
						facial_hair_style = new_facial_hair_style

				if("next_facehair_style")
					if (gender == MALE)
						facial_hair_style = next_list_item(facial_hair_style, GLOB.facial_hair_styles_male_list)
					else
						facial_hair_style = next_list_item(facial_hair_style, GLOB.facial_hair_styles_female_list)

				if("previous_facehair_style")
					if (gender == MALE)
						facial_hair_style = previous_list_item(facial_hair_style, GLOB.facial_hair_styles_male_list)
					else
						facial_hair_style = previous_list_item(facial_hair_style, GLOB.facial_hair_styles_female_list)

				if("cycle_bg")
					bgstate = next_list_item(bgstate, bgstate_options)

				if("underwear")
					var/new_underwear = input(user, "Choose your character's underwear:", "Character Preference")  as null|anything in GLOB.underwear_list
					if(new_underwear)
						underwear = new_underwear

				if("undie_color")
					var/n_undie_color = input(user, "Choose your underwear's color.", "Character Preference", "#[undie_color]") as color|null
					if(n_undie_color)
						undie_color = sanitize_hexcolor(n_undie_color, 6)

				if("undershirt")
					var/new_undershirt = input(user, "Choose your character's undershirt:", "Character Preference") as null|anything in GLOB.undershirt_list
					if(new_undershirt)
						undershirt = new_undershirt

				if("shirt_color")
					var/n_shirt_color = input(user, "Choose your undershirt's color.", "Character Preference", "#[shirt_color]") as color|null
					if(n_shirt_color)
						shirt_color = sanitize_hexcolor(n_shirt_color, 6)

				if("socks")
					var/new_socks = input(user, "Choose your character's socks:", "Character Preference") as null|anything in GLOB.socks_list
					if(new_socks)
						socks = new_socks

				if("socks_color")
					var/n_socks_color = input(user, "Choose your socks' color.", "Character Preference", "#[socks_color]") as color|null
					if(n_socks_color)
						socks_color = sanitize_hexcolor(n_socks_color, 6)

				if(BODY_ZONE_PRECISE_EYES)
					var/new_eyes = input(user, "Choose your character's eye colour:", "Character Preference","#"+eye_color) as color|null
					if(new_eyes)
						eye_color = sanitize_hexcolor(new_eyes)

				if("species")

					var/result = input(user, "Select a species", "Species Selection") as null|anything in GLOB.roundstart_races

					if(result)
						var/newtype = GLOB.species_list[result]
						pref_species = new newtype()
						//Now that we changed our species, we must verify that the mutant colour is still allowed.
						var/temp_hsv = RGBtoHSV(features["mcolor"])
						if(features["mcolor"] == "#000" || (!(MUTCOLORS_PARTSONLY in pref_species.species_traits) && ReadHSV(temp_hsv)[3] < ReadHSV("#7F7F7F")[3]))
							features["mcolor"] = pref_species.default_color

				if("mutant_color")
					var/new_mutantcolor = input(user, "Choose your character's alien/mutant color:", "Character Preference","#"+features["mcolor"]) as color|null
					if(new_mutantcolor)
						var/temp_hsv = RGBtoHSV(new_mutantcolor)
						if(new_mutantcolor == "#000000")
							features["mcolor"] = pref_species.default_color
						else if((MUTCOLORS_PARTSONLY in pref_species.species_traits) || ReadHSV(temp_hsv)[3] >= ReadHSV("#7F7F7F")[3]) // mutantcolors must be bright, but only if they affect the skin
							features["mcolor"] = sanitize_hexcolor(new_mutantcolor)
						else
							to_chat(user, "<span class='danger'>Invalid color. Your color is not bright enough.</span>")

				if("tail_lizard")
					var/new_tail
					new_tail = input(user, "Choose your character's tail:", "Character Preference") as null|anything in GLOB.tails_list_lizard
					if(new_tail)
						features["tail_lizard"] = new_tail

				if("tail_human")
					var/new_tail
					new_tail = input(user, "Choose your character's tail:", "Character Preference") as null|anything in GLOB.tails_list_human
					if(new_tail)
						features["tail_human"] = new_tail

				if("snout")
					var/new_snout
					new_snout = input(user, "Choose your character's snout:", "Character Preference") as null|anything in GLOB.snouts_list
					if(new_snout)
						features["snout"] = new_snout

				if("horns")
					var/new_horns
					new_horns = input(user, "Choose your character's horns:", "Character Preference") as null|anything in GLOB.horns_list
					if(new_horns)
						features["horns"] = new_horns

				if("ears")
					var/new_ears
					new_ears = input(user, "Choose your character's ears:", "Character Preference") as null|anything in GLOB.ears_list
					if(new_ears)
						features["ears"] = new_ears

				if("wings")
					var/new_wings
					new_wings = input(user, "Choose your character's wings:", "Character Preference") as null|anything in GLOB.r_wings_list
					if(new_wings)
						features["wings"] = new_wings

				if("frills")
					var/new_frills
					new_frills = input(user, "Choose your character's frills:", "Character Preference") as null|anything in GLOB.frills_list
					if(new_frills)
						features["frills"] = new_frills

				if("spines")
					var/new_spines
					new_spines = input(user, "Choose your character's spines:", "Character Preference") as null|anything in GLOB.spines_list
					if(new_spines)
						features["spines"] = new_spines

				if("body_markings")
					var/new_body_markings
					new_body_markings = input(user, "Choose your character's body markings:", "Character Preference") as null|anything in GLOB.body_markings_list
					if(new_body_markings)
						features["body_markings"] = new_body_markings

				if("legs")
					var/new_legs
					new_legs = input(user, "Choose your character's legs:", "Character Preference") as null|anything in GLOB.legs_list
					if(new_legs)
						features["legs"] = new_legs

				if("moth_wings")
					var/new_moth_wings
					new_moth_wings = input(user, "Choose your character's wings:", "Character Preference") as null|anything in GLOB.moth_wings_list
					if(new_moth_wings)
						features["moth_wings"] = new_moth_wings

				if("s_tone")
					var/new_s_tone = input(user, "Choose your character's skin-tone:", "Character Preference")  as null|anything in GLOB.skin_tones
					if(new_s_tone)
						skin_tone = new_s_tone
				//Genital code
				if("cock_color")
					var/new_cockcolor = input(user, "Penis color:", "Character Preference") as color|null
					if(new_cockcolor)
						var/temp_hsv = RGBtoHSV(new_cockcolor)
						if(new_cockcolor == "#000000")
							features["cock_color"] = pref_species.default_color
						else if((MUTCOLORS_PARTSONLY in pref_species.species_traits) || ReadHSV(temp_hsv)[3] >= ReadHSV("#202020")[3])
							features["cock_color"] = sanitize_hexcolor(new_cockcolor)
						else
							to_chat(user,"<span class='danger'>Invalid color. Your color is not bright enough.</span>")

				if("cock_length")
					var/new_length = input(user, "Penis length in inches:\n([COCK_SIZE_MIN]-[COCK_SIZE_MAX])", "Character Preference") as num|null
					if(new_length)
						features["cock_length"] = max(min( round(text2num(new_length)), COCK_SIZE_MAX),COCK_SIZE_MIN)

				if("balls_size")
					var/new_balls_size = input(user, "Testicle circumference in inches:\n([BALLS_SIZE_MIN]-[BALLS_SIZE_MAX])", "Character Preference") as num|null
					if(new_balls_size)
						features["balls_size"] = max(min( round(text2num(new_balls_size)), BALLS_SIZE_MAX),BALLS_SIZE_MIN)

				if("cock_shape")
					var/new_shape
					new_shape = input(user, "Penis shape:", "Character Preference") as null|anything in GLOB.cock_shapes_list
					if(new_shape)
						features["cock_shape"] = new_shape

				if("balls_color")
					var/new_ballscolor = input(user, "Testicle Color:", "Character Preference") as color|null
					if(new_ballscolor)
						var/temp_hsv = RGBtoHSV(new_ballscolor)
						if(new_ballscolor == "#000000")
							features["balls_color"] = pref_species.default_color
						else if((MUTCOLORS_PARTSONLY in pref_species.species_traits) || ReadHSV(temp_hsv)[3] >= ReadHSV("#202020")[3])
							features["balls_color"] = sanitize_hexcolor(new_ballscolor)
						else
							to_chat(user,"<span class='danger'>Invalid color. Your color is not bright enough.</span>")

				if("balls_shape")
					var/new_shape
					new_shape = input(user, "Testicle Type:", "Character Preference") as null|anything in GLOB.balls_shapes_list
					if(new_shape)
						features["balls_shape"] = new_shape

				if("balls_fluid")
					var/new_shape
					new_shape = input(user, "Balls Fluid", "Character Preference") as null|anything in GLOB.genital_fluids_list
					if(new_shape)
						features["balls_fluid"] = new_shape

				if("egg_size")
					var/new_size
					var/list/egg_sizes = list(1,2,3)
					new_size = input(user, "Egg Diameter(inches):", "Egg Size") as null|anything in egg_sizes
					if(new_size)
						features["eggsack_egg_size"] = new_size

				if("egg_color")
					var/new_egg_color = input(user, "Egg Color:", "Character Preference") as color|null
					if(new_egg_color)
						var/temp_hsv = RGBtoHSV(new_egg_color)
						if(ReadHSV(temp_hsv)[3] >= ReadHSV("#202020")[3])
							features["eggsack_egg_color"] = sanitize_hexcolor(new_egg_color)
						else
							to_chat(user,"<span class='danger'>Invalid color. Your color is not bright enough.</span>")

				if("breasts_size")
					var/new_size
					new_size = input(user, "Breast Size", "Character Preference") as null|anything in GLOB.breasts_size_list
					if(new_size)
						features["breasts_size"] = new_size

				if("breasts_shape")
					var/new_shape
					new_shape = input(user, "Breast Shape", "Character Preference") as null|anything in GLOB.breasts_shapes_list
					if(new_shape)
						features["breasts_shape"] = new_shape

				if("breasts_fluid")
					var/new_shape
					new_shape = input(user, "Breast Fluid", "Character Preference") as null|anything in GLOB.genital_fluids_list
					if(new_shape)
						features["breasts_fluid"] = new_shape

				if("breasts_color")
					var/new_breasts_color = input(user, "Breast Color:", "Character Preference") as color|null
					if(new_breasts_color)
						var/temp_hsv = RGBtoHSV(new_breasts_color)
						if(new_breasts_color == "#000000")
							features["breasts_color"] = pref_species.default_color
						else if((MUTCOLORS_PARTSONLY in pref_species.species_traits) || ReadHSV(temp_hsv)[3] >= ReadHSV("#202020")[3])
							features["breasts_color"] = sanitize_hexcolor(new_breasts_color)
						else
							to_chat(user,"<span class='danger'>Invalid color. Your color is not bright enough.</span>")

				if("vag_shape")
					var/new_shape
					new_shape = input(user, "Vagina Type", "Character Preference") as null|anything in GLOB.vagina_shapes_list
					if(new_shape)
						features["vag_shape"] = new_shape

				if("vag_color")
					var/new_vagcolor = input(user, "Vagina color:", "Character Preference") as color|null
					if(new_vagcolor)
						var/temp_hsv = RGBtoHSV(new_vagcolor)
						if(new_vagcolor == "#000000")
							features["vag_color"] = pref_species.default_color
						else if((MUTCOLORS_PARTSONLY in pref_species.species_traits) || ReadHSV(temp_hsv)[3] >= ReadHSV("#202020")[3])
							features["vag_color"] = sanitize_hexcolor(new_vagcolor)
						else
							to_chat(user,"<span class='danger'>Invalid color. Your color is not bright enough.</span>")


				if("ooccolor")
					var/new_ooccolor = input(user, "Choose your OOC colour:", "Game Preference",ooccolor) as color|null
					if(new_ooccolor)
						ooccolor = new_ooccolor

				if("bag")
					var/new_backbag = input(user, "Choose your character's style of bag:", "Character Preference")  as null|anything in GLOB.backbaglist
					if(new_backbag)
						backbag = new_backbag

				if("uplink_loc")
					var/new_loc = input(user, "Choose your character's traitor uplink spawn location:", "Character Preference") as null|anything in GLOB.uplink_spawn_loc_list
					if(new_loc)
						uplink_spawn_loc = new_loc

				if("sec_dept")
					var/department = input(user, "Choose your prefered security department:", "Security Departments") as null|anything in GLOB.security_depts_prefs
					if(department)
						prefered_security_department = department

				if ("preferred_map")
					var/maplist = list()
					var/default = "Default"
					if (config.defaultmap)
						default += " ([config.defaultmap.map_name])"
					for (var/M in config.maplist)
						var/datum/map_config/VM = config.maplist[M]
						var/friendlyname = "[VM.map_name] "
						if (VM.voteweight <= 0)
							friendlyname += " (disabled)"
						maplist[friendlyname] = VM.map_name
					maplist[default] = null
					var/pickedmap = input(user, "Choose your preferred map. This will be used to help weight random map selection.", "Character Preference")  as null|anything in maplist
					if (pickedmap)
						preferred_map = maplist[pickedmap]

				if ("clientfps")
					var/desiredfps = input(user, "Choose your desired fps. (0 = synced with server tick rate (currently:[world.fps]))", "Character Preference", clientfps)  as null|num
					if (!isnull(desiredfps))
						clientfps = desiredfps
						parent.fps = desiredfps
				if("ui")
					var/pickedui = input(user, "Choose your UI style.", "Character Preference", UI_style)  as null|anything in GLOB.available_ui_styles
					if(pickedui)
						UI_style = pickedui
						if (parent && parent.mob && parent.mob.hud_used)
							parent.mob.hud_used.update_ui_style(ui_style2icon(UI_style))
				if("pda_style")
					var/pickedPDAStyle = input(user, "Choose your PDA style.", "Character Preference", pda_style)  as null|anything in GLOB.pda_styles
					if(pickedPDAStyle)
						pda_style = pickedPDAStyle
				if("pda_color")
					var/pickedPDAColor = input(user, "Choose your PDA Interface color.", "Character Preference",pda_color) as color|null
					if(pickedPDAColor)
						pda_color = pickedPDAColor
				if("chat_on_map")
					chat_on_map = !chat_on_map
				if("see_chat_non_mob")
					see_chat_non_mob = !see_chat_non_mob

		else
			switch(href_list["preference"])
				//CITADEL PREFERENCES EDIT - I can't figure out how to modularize these, so they have to go here. :c -Pooj
				if("genital_colour")
					features["genitals_use_skintone"] = !features["genitals_use_skintone"]
				if("arousable")
					arousable = !arousable
				if("has_cock")
					features["has_cock"] = !features["has_cock"]
					if(features["has_cock"] == FALSE)
						features["has_balls"] = FALSE
				if("has_balls")
					features["has_balls"] = !features["has_balls"]
				if("has_ovi")
					features["has_ovi"] = !features["has_ovi"]
				if("has_eggsack")
					features["has_eggsack"] = !features["has_eggsack"]
				if("balls_internal")
					features["balls_internal"] = !features["balls_internal"]
				if("eggsack_internal")
					features["eggsack_internal"] = !features["eggsack_internal"]
				if("has_breasts")
					features["has_breasts"] = !features["has_breasts"]
					if(features["has_breasts"] == FALSE)
						features["breasts_producing"] = FALSE
				if("breasts_producing")
					features["breasts_producing"] = !features["breasts_producing"]
				if("has_vag")
					features["has_vag"] = !features["has_vag"]
					if(features["has_vag"] == FALSE)
						features["has_womb"] = FALSE
						features["can_get_preg"] = FALSE
				if("has_womb")
					features["has_womb"] = !features["has_womb"]
				if("can_get_preg")
					features["can_get_preg"] = !features["can_get_preg"]
				if("exhibitionist")
					features["exhibitionist"] = !features["exhibitionist"]
				if("publicity")
					if(unlock_content)
						toggles ^= MEMBER_PUBLIC
				if("body_model")
					features["body_model"] = features["body_model"] == MALE ? FEMALE : MALE
				if("gender")
					var/chosengender = input(user, "Select your character's gender.", "Gender Selection", gender) as null|anything in list(MALE,FEMALE,"nonbinary","object")
					if(!chosengender)
						return
					switch(chosengender)
						if("nonbinary")
							chosengender = PLURAL
							features["body_model"] = pick(MALE, FEMALE)
						if("object")
							chosengender = NEUTER
							features["body_model"] = MALE
						else
							features["body_model"] = chosengender
					gender = chosengender


				if("has_dick")
					if(has_dick == 1)
						has_dick = 0
					else
						has_dick = 1
				if("has_vulva")
					if(has_vulva == 1)
						has_vulva = 0
					else
						has_vulva = 1
				if("has_breast")
					if(has_breast == 1)
						has_breast = 0
					else
						has_breast = 1

				if("hotkeys")
					hotkeys = !hotkeys
					if(hotkeys)
						winset(user, null, "input.focus=true input.background-color=[COLOR_INPUT_ENABLED] mainwindow.macro=default")
					else
						winset(user, null, "input.focus=true input.background-color=[COLOR_INPUT_ENABLED] mainwindow.macro=old_default")
				if("chat_on_map")
					chat_on_map = !chat_on_map
				if("see_chat_non_mob")
					see_chat_non_mob = !see_chat_non_mob
				if("action_buttons")
					buttons_locked = !buttons_locked
				if("tgui_fancy")
					tgui_fancy = !tgui_fancy
				if("tgui_lock")
					tgui_lock = !tgui_lock
				if("winflash")
					windowflashing = !windowflashing
				if("hear_adminhelps")
					toggles ^= SOUND_ADMINHELP
				if("announce_login")
					toggles ^= ANNOUNCE_LOGIN
				if("combohud_lighting")
					toggles ^= COMBOHUD_LIGHTING

				if("be_special")
					var/be_special_type = href_list["be_special_type"]
					if(be_special_type in be_special)
						be_special -= be_special_type
					else
						be_special += be_special_type

				if("name")
					be_random_name = !be_random_name

				if("all")
					be_random_body = !be_random_body

				if("hear_midis")
					toggles ^= SOUND_MIDI

				if("hear_radio")
					wasteland_toggles ^= SOUND_RADIO

				if("verb_consent")
					wasteland_toggles ^= VERB_CONSENT

				if("lobby_music")
					toggles ^= SOUND_LOBBY
					if((toggles & SOUND_LOBBY) && user.client && isnewplayer(user))
						user.client.playtitlemusic()
					else
						user.stop_sound_channel(CHANNEL_LOBBYMUSIC)

				if("ghost_ears")
					chat_toggles ^= CHAT_GHOSTEARS

				if("ghost_sight")
					chat_toggles ^= CHAT_GHOSTSIGHT

				if("ghost_whispers")
					chat_toggles ^= CHAT_GHOSTWHISPER

				if("ghost_radio")
					chat_toggles ^= CHAT_GHOSTRADIO

				if("ghost_pda")
					chat_toggles ^= CHAT_GHOSTPDA

				if("pull_requests")
					chat_toggles ^= CHAT_PULLR

				if("allow_midround_antag")
					toggles ^= MIDROUND_ANTAG

				if("parallaxup")
					parallax = WRAP(parallax + 1, PARALLAX_INSANE, PARALLAX_DISABLE + 1)
					if (parent && parent.mob && parent.mob.hud_used)
						parent.mob.hud_used.update_parallax_pref(parent.mob)

				if("parallaxdown")
					parallax = WRAP(parallax - 1, PARALLAX_INSANE, PARALLAX_DISABLE + 1)
					if (parent && parent.mob && parent.mob.hud_used)
						parent.mob.hud_used.update_parallax_pref(parent.mob)

				if("ambientocclusion")
					ambientocclusion = !ambientocclusion
					if(parent && parent.screen && parent.screen.len)
						var/obj/screen/plane_master/game_world/PM = locate(/obj/screen/plane_master/game_world) in parent.screen
						PM.backdrop(parent.mob)

				if("auto_fit_viewport")
					auto_fit_viewport = !auto_fit_viewport
					if(auto_fit_viewport && parent)
						parent.fit_viewport()

				if("save")
					save_preferences()
					save_character()

				if("load")
					load_preferences()
					load_character()

				if("changeslot")
					if(!load_character(text2num(href_list["num"])))
						random_character()
						real_name = random_unique_name(gender)
						save_character()

				if("tab")
					if (href_list["tab"])
						current_tab = text2num(href_list["tab"])

	ShowChoices(user)
	return 1

/datum/preferences/proc/copy_to(mob/living/carbon/human/character, icon_updates = 1, roundstart_checks = TRUE)
	if(be_random_name)
		real_name = pref_species.random_name(gender)

	if(be_random_body)
		random_character(gender)

	if(CONFIG_GET(flag/humans_need_surnames) && (pref_species.id == "human"))
		var/firstspace = findtext(real_name, " ")
		var/name_length = length(real_name)
		if(!firstspace)	//we need a surname
			real_name += " [pick(GLOB.last_names)]"
		else if(firstspace == name_length)
			real_name += "[pick(GLOB.last_names)]"

	character.real_name = real_name
	character.name = character.real_name

	character.breedable = 0

	character.gender = gender
	character.age = age
	//special stuff
	character.special_s = special_s
	character.special_p = special_p
	character.special_e = special_e
	character.special_c = special_c
	character.special_i = special_i
//	if (character.special_i<3)
//		character.dna.add_mutation(UNINTELLIGIBLE)
	character.special_a = special_a
	character.special_l = special_l

	character.has_dick = has_dick
	character.has_vulva = has_vulva
	character.has_breast = has_breast

	character.eye_color = eye_color
	var/obj/item/organ/eyes/organ_eyes = character.getorgan(/obj/item/organ/eyes)
	if(organ_eyes)
		if(!initial(organ_eyes.eye_color))
			organ_eyes.eye_color = eye_color
		organ_eyes.old_eye_color = eye_color
	character.hair_color = hair_color
	character.facial_hair_color = facial_hair_color

	character.skin_tone = skin_tone
	character.hair_style = hair_style
	character.facial_hair_style = facial_hair_style
	character.saved_underwear = underwear
	character.undershirt = undershirt
	character.saved_undershirt = undershirt
	character.socks = socks
	character.saved_socks = socks
	character.undie_color = undie_color
	character.shirt_color = shirt_color
	character.socks_color = socks_color
	character.backbag = backbag

	character.dna.features = features.Copy()
	character.dna.real_name = character.real_name
	character.flavor_text = features["flavor_text"] //Let's update their flavor_text at least initially

	var/datum/species/chosen_species
	if(pref_species.id in GLOB.roundstart_races)
		chosen_species = pref_species.type
	else
		chosen_species = /datum/species/human
		pref_species = new /datum/species/human
		save_character()
	character.set_species(chosen_species, icon_update = FALSE)

	character.give_genitals(TRUE) //character.update_genitals() is already called on genital.update_appearance()

	SEND_SIGNAL(character, COMSIG_HUMAN_PREFS_COPIED_TO, src, icon_updates, roundstart_checks)

	if(icon_updates)
		character.update_body()
		character.update_hair()
		character.update_body_parts()

/datum/preferences/proc/get_default_name(name_id)
	switch(name_id)
		if("human")
			return random_unique_name()
		if("ai")
			return pick(GLOB.ai_names)
		if("cyborg")
			return DEFAULT_CYBORG_NAME
		if("clown")
			return pick(GLOB.clown_names)
		if("mime")
			return pick(GLOB.mime_names)
	return random_unique_name()

/datum/preferences/proc/ask_for_custom_name(mob/user,name_id)
	var/namedata = GLOB.preferences_custom_names[name_id]
	if(!namedata)
		return

	var/raw_name = input(user, "Choose your character's [namedata["qdesc"]]:","Character Preference") as text|null
	if(!raw_name)
		if(namedata["allow_null"])
			custom_names[name_id] = get_default_name(name_id)
		else
			return
	else
		var/sanitized_name = reject_bad_name(raw_name,namedata["allow_numbers"])
		if(!sanitized_name)
			to_chat(user, "<font color='red'>Invalid name. Your name should be at least 2 and at most [MAX_NAME_LEN] characters long. It may only contain the characters A-Z, a-z,[namedata["allow_numbers"] ? ",0-9," : ""] -, ' and .</font>")
			return
		else
			custom_names[name_id] = sanitized_name
