/proc/job_is_whitelist_locked(jobtitle)
	if(!CONFIG_GET(flag/use_role_whitelist) && jobtitle in (GLOB.faction_whitelist_positions | GLOB.antagonist_whitelist_positions | list("AI")))
		return FALSE
	if(!CONFIG_GET(flag/use_role_whitelist) && !(jobtitle in (GLOB.faction_whitelist_positions | GLOB.antagonist_whitelist_positions | list("AI"))))
		return FALSE
	return TRUE

/datum/job/proc/whitelist_locked(client/C, jobname)
	if((C.prefs.job_whitelists[jobname]) || (!CONFIG_GET(flag/use_role_whitelist)))
		return FALSE
	return TRUE


//Get this client's whitelists from the database, if any.
/client/proc/set_job_whitelist_from_db()
	if(!CONFIG_GET(flag/use_role_whitelist))
		return -1
	if(!SSdbcore.Connect())
		return -1
	var/datum/DBQuery/whitelist_read = SSdbcore.NewQuery("SELECT whitelist FROM [format_table_name("role_whitelist")] WHERE ckey = '[sanitizeSQL(ckey)]'")
	if(!whitelist_read.Execute())
		qdel(whitelist_read)
		return -1
	var/list/play_records = list()
	var/list/whitelists = list()
	while(whitelist_read.NextRow())
		whitelists[whitelist_read.item[1]] = whitelist_read.item[1]  // should create a whitelists["whitelist name"] for each whitelist held by the user

	for(var/rtype in SSjob.name_occupations)    //cycle through all of the jobs and add them to the full list
		play_records[rtype] = rtype
			to_chat(src, "Added 1 job to playable jobs. (play_records)")

	qdel(whitelist_read)

	if(!whitelists["faction"])							// if they do not have faction whitelist, remove faction whitelist positions
		for(var/rtypeWL in GLOB.faction_whitelist_positions)
			play_records[rtypeWL] = 0

	if(!whitelists["antagonist"])					 // if they do not have antagonist whitelist, remove antagonist whitelist positions
		for(var/rtypeWL in GLOB.antagonist_whitelist_positions)
			play_records[rtypeWL] = 0

	prefs.job_whitelists = play_records
	to_chat(src, "Set job whitelist call completed")
