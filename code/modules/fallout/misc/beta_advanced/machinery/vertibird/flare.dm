/obj/item/vertibird_flare
	name = "сигнальный огонь"
	desc = "Запрашиваю эвакуацию!"
	icon = 'icons/obj/lighting.dmi'
	icon_state = "flareblue"
	w_class = 1

/obj/item/vertibird_flare/proc/callDeathSquad()
	spawn(300)
		qdel(src)

	if(!vertibird)
		return

	if(src.z != 1)
		src.visible_message("Can't call vertibird here!")
		return

	var/turf/turf = locs[1]

	if(!isarea(turf.loc))
		src.visible_message("No location!")
		return

	if(!istype(turf.loc, /area/f13/wasteland))
		src.visible_message("Wrong location!")
		return

	vertibird:fly(src.x, src.y)

/obj/item/vertibird_flare/attack_self(mob/user)
	icon_state = "[icon_state]-on"
	user.drop_item(src)
	src.anchored = 1
	callDeathSquad()