/obj/vertibird
	name = "VB-02"
	icon = 'icons/fallout/vehicles/vertibird.dmi'
	icon_state = "vb-static"
	pixel_x = -128
	pixel_y = -64
	layer = 4
	var/engine = FALSE
	var/locked = TRUE
	var/inFly = FALSE
	var/obj/machinery/camera/portable/builtInCamera
	self_weight = 9999

/obj/vertibird/New()
	var/obj/item/start = new /obj/landmark/vertibird()
	start.name = "Base"
	start.loc = loc
	vertibird = src

	builtInCamera = new /obj/machinery/camera/portable(src)
	builtInCamera.network = list("enclave")
	builtInCamera.c_tag = "[src.name]"

/obj/vertibird/attack_hand(mob/user)
	if(locked)
		to_chat(usr, "Закртыо.")
		return

	if(inFly)
		return

	getIn(user)

/obj/vertibird/proc/toggleLock(var/mob/user)
	if(locked)
		locked = FALSE
		to_chat(user, "Вы открыли винтокрыл.")
	else
		locked = TRUE
		to_chat(user, "Вы закрыли винтокрыл.")

/obj/vertibird/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W, /obj/item/key/vertibird))
		toggleLock(user)

/obj/vertibird/MouseDrop_T(obj/O, mob/user)
	if(locked)
		to_chat(usr, "Закрыто.")
		return

	moveIn(O)

/obj/vertibird/proc/getIn(mob/U)
	src.visible_message("[U] заходит в винтокрыл.")
	U.forceMove(vertibirdEnterZone)

/obj/vertibird/proc/moveIn(obj/O)
	O.forceMove(vertibirdEnterZone)

/obj/vertibird/proc/ejectTurf()
	return locate(src.x, src.y + 6, src.z)

obj/vertibird/proc/getLocationsHTML()
	var/html
	for(var/I = 1 to vertibirdLandZone.len)
		var/obj/landmark/vertibird/mark = vertibirdLandZone[I]
		html += "<a href='?src=\ref[src];fly=true;x=[mark.x];y=[mark.y]'>[mark.name]</a><br>"
	return html

obj/vertibird/proc/flew(targetX, targetY)

	x = targetX
	y = targetY

	playsound(src, "sound/f13machines/vertibird_land.ogg", 100)
	playsound(vertibirdEnterZone, "sound/f13machines/vertibird_land.ogg", 50)

	spawn(100)
		inFly = FALSE
		src.icon_state = "vb-slow"

	spawn(300)
		if(src.icon_state == "vb-slow")
			src.icon_state = "vb-static"

obj/vertibird/proc/beginFly()
	var/datum/browser/popup = new(usr, "vending", (name))
	popup.set_content(getLocationsHTML())
	popup.open()

obj/vertibird/proc/flyGlobal()
	var/sound/global_sound
	global_sound = sound("sound/f13machines/vertibird_global.ogg", repeat = 0, wait = 0, channel = 776)
	global_sound.priority = 250
	global_sound.status = SOUND_UPDATE|SOUND_STREAM

	for(var/mob/M in player_list)
		if(M.z == 1)
			M << global_sound

obj/vertibird/proc/fly(targetX, targetY)
	if(inFly)
		return

	playsound(src, "sound/f13machines/vertibird_takeoff.ogg", 100)
	playsound(vertibirdEnterZone, "sound/f13machines/vertibird_takeoff.ogg", 50)
	inFly = TRUE
	icon_state = "vb-fast"
	spawn(60)
		playsound(src, "sound/f13machines/vertibird_local.ogg", 100)
		playsound(vertibirdEnterZone, "sound/f13machines/vertibird_local.ogg", 50)

		flyGlobal()

		spawn(100)
			flew(targetX, targetY)

/obj/vertibird/Topic(href, href_list)
	if(..())
		return

	if(href_list["fly"])
		var/x = text2num(href_list["x"])
		var/y = text2num(href_list["y"])
		fly(x, y)