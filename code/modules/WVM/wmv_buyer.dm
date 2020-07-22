/obj/machinery/mineral/wasteland_trader
	name = "Trading point"
	desc = "Trading point at which you can sell select goods for caps"
	icon = 'icons/WVM/machines.dmi'
	icon_state = "weapon_idle"

	density = TRUE
	use_power = FALSE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	can_be_unanchored = FALSE
	layer = 2.9

	var/stored_caps = 0	// store caps
	var/expected_price = 0
	var/list/prize_list = list()  //if you add something to this, please, for the love of god, sort it by price/type. use tabs and not spaces.

/obj/machinery/mineral/wasteland_trader/general
	name = "Trading point"
	icon_state = "generic_idle"
	prize_list = list()

/*
/datum/data/wasteland_equipment
	var/equipment_name = "generic"
	var/equipment_path = null
	var/cost = 0

/datum/data/wasteland_equipment/New(name, path, cost)
	src.equipment_name = name
	src.equipment_path = path
	src.cost = cost
*/
/obj/machinery/mineral/wasteland_trader/ui_interact(mob/user)
	. = ..()
	var/dat
	dat +="<div class='statusDisplay'>"
	dat += "<b>Bottle caps stored:</b> [stored_caps]. <A href='?src=[REF(src)];choice=eject'>Eject caps</A><br>"
	dat += "</div>"
	dat += "<br>"
	dat +="<div class='statusDisplay'>"
	dat += "<b>Accepted goods and prices:</b><br>"
	dat += "Iron ore : 0.5 caps<br>"
	dat += "Leather : 2 caps<br>"
	dat += ""
	dat += "</div>"

	var/datum/browser/popup = new(user, "tradingvendor", "Trading point", 400, 500)
	popup.set_content(dat)
	popup.open()
	return

/obj/machinery/mineral/wasteland_trader/Topic(href, href_list)
	if(..())
		return
	if(href_list["choice"] == "eject")
		remove_all_caps()
	if(href_list["purchase"])
		var/datum/data/wasteland_equipment/prize = locate(href_list["purchase"])
		if (!prize || !(prize in prize_list))
			to_chat(usr, "<span class='warning'>Error: Invalid choice!</span>")
			return
		if(prize.cost > stored_caps)
			to_chat(usr, "<span class='warning'>Error: Insufficent bottle caps value for [prize.equipment_name]!</span>")
		else
			stored_caps -= prize.cost
			GLOB.vendor_cash += prize.cost
			to_chat(usr, "<span class='notice'>[src] clanks to life briefly before vending [prize.equipment_name]!</span>")
			new prize.equipment_path(src.loc)
			SSblackbox.record_feedback("nested tally", "wasteland_equipment_bought", 1, list("[type]", "[prize.equipment_path]"))
	updateUsrDialog()
	return

/obj/machinery/mineral/wasteland_trader/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/f13Cash))
		add_caps(I)
	else if (istype(I, /obj/item/stack/ore/iron))
		add_caps(I)
	else if (istype(I, /obj/item/stack/sheet/leather))
		add_caps(I)
	else
		attack_hand(user)

/* Adding a caps to caps storage and release vending item. */
/obj/machinery/mineral/wasteland_trader/proc/add_caps(obj/item/I)
	if(istype(I, /obj/item/stack/f13Cash/bottle_cap))
		var/obj/item/stack/f13Cash/bottle_cap/currency = I
		var/inserted_value = FLOOR(currency.amount, 1)
		stored_caps += inserted_value
		I.use(currency.amount)
		playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
		to_chat(usr, "You put [inserted_value] bottle caps value to a vending machine.")
		src.ui_interact(usr)
	else if(istype(I, /obj/item/stack/ore/iron))
		var/obj/item/stack/ore/iron/sellable = I
		var/inserted_value = FLOOR(sellable.amount * 0.5, 1)
		stored_caps += inserted_value
		I.Destroy()
		playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
		to_chat(usr, "You sell [inserted_value] bottle caps value to a vending machine.")
		src.ui_interact(usr)
	else if(istype(I, /obj/item/stack/sheet/leather))
		var/obj/item/stack/sheet/leather/sellable = I
		var/inserted_value = FLOOR(sellable.amount * 2, 1)
		stored_caps += inserted_value
		I.Destroy()
		playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
		to_chat(usr, "You sell [inserted_value] bottle caps value to a vending machine.")
		src.ui_interact(usr)
	else
		to_chat(usr, "Invalid currency!")
		return

/* Spawn all caps on world and clear caps storage */
/obj/machinery/mineral/wasteland_trader/proc/remove_all_caps()
	if(stored_caps <= 0)
		return
	var/obj/item/stack/f13Cash/bottle_cap/C = new /obj/item/stack/f13Cash/bottle_cap
	if(stored_caps > C.max_amount)
		C.add(C.max_amount - 1)
		C.forceMove(src.loc)
		stored_caps -= C.max_amount
	else
		C.add(stored_caps - 1)
		C.forceMove(src.loc)
		stored_caps = 0
	playsound(src, 'sound/items/coinflip.ogg', 60, 1)
	src.ui_interact(usr)
