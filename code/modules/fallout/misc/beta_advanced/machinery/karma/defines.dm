/mob/living/carbon/human
	var/karma

/mob/living/carbon/human/Login()
	..()
	karma = karmaGet()