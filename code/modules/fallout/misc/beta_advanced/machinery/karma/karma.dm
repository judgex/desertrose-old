/mob/living/carbon/human/proc/karmaGet()
	if(!karma)
		karma = karmaPull()

	return karma

/mob/living/carbon/human/proc/karmaPull()
	var/DBQuery/query = dbcon.NewQuery("SELECT `karma` FROM `player` WHERE ckey = '[ckey]'")
	query.Execute()

	if(query.ErrorMsg() != "")
		world.log << "SQL Error: [query.ErrorMsg()]"
	else
		if(!query.NextRow())
			return 0

		return text2num(query.item[1])

	return 0

/mob/living/carbon/human/proc/karmaPush()
	var/DBQuery/query = dbcon.NewQuery("UPDATE `player` SET `karma` = [karma] WHERE ckey = '[ckey]'")
	query.Execute()

/mob/living/carbon/human/proc/karmaAdd(var/value, var/sound = TRUE)
	if(!karma)
		karmaGet()

	karma += value
	karmaPush()

	if(sound)
		if(value > 0)
			playsound(src, "sound/advanced/karma_up.ogg", 100)
		else
			playsound(src, "sound/advanced/karma_down.ogg", 100)

/mob/living/carbon/human/proc/karmaText()
	var/list/text = list (
		"<font color='#ff0000'>Вы видите ненависть в глазах этого человека.</font>",
		"<font color='#bf0000'>Кажется, что этот человек вот-вот выпотрошит вас.</font>",
		"<font color='#676767'>Ничего примечательного.</font>",
		"<font color='#009200'>Этот человек выглядит доброжелательно.</font>",
		"<font color='#486d00'>Вы верите, что этот человек может изменить мир к лучшему.</font>"
	)

	karmaGet()

	var/from = -900
	var/step = 300
	var/result = 1

	for(var/I = 2 to 5)
		if(karma >= (I * step + from))
			result = I

	return "[text[result]]<br>"