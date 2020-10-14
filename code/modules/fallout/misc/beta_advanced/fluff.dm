/obj/item/gun/energy/disabler/fluff/angelofmercy
	name = "Angel of Mercy"
	desc = "Этот прекрасный шокер некогда принадлежал таинственному работорговцу из пустошей. Легенды гласят, что с его помощью было поймано около тысячи рабов. В его деталях можно разглядеть следы крови, которые спустя многие года работают в качестве смазки."
	icon = 'icons/obj/betaadvanced.dmi'
	icon_state = "compliance_regulatorfluff"


/obj/item/storage/box/mixanoff
	name = "коробочка говна нахуй"
	desc = "Удали блять."
	icon_state = "secbox"
	illustration = "flashbang"

/obj/item/storage/box/mixanoff/PopulateContents()
	new /obj/item/storage/box/mixanoff(src)
	new /obj/item/clothing/head/helmet/f13/power_armor/advanced(src)
	new /obj/item/book/granter/trait/pa_wear(src)