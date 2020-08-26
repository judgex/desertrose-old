/obj/structure/safe_caps/proc/capsSet(amount)
	var/DBQuery/query = dbcon.NewQuery("UPDATE `player` SET `caps` = [amount] WHERE ckey = '[usr.ckey]'")
	query.Execute()

/obj/structure/safe_caps/proc/capsGet()
	var/DBQuery/query = dbcon.NewQuery("SELECT `caps` FROM `player` WHERE ckey = '[usr.ckey]'")
	query.Execute()

	if(query.ErrorMsg() != "")
		world.log << "SQL Error: [query.ErrorMsg()]"
	else
		if(!query.NextRow())
			return 0

		return text2num(query.item[1])

	return 0

/obj/structure/safe_caps/proc/deposit(amount)
	var/caps = capsGet()

	capsSet(caps + amount)
	playsound(src, 'sound/items/change_jaws.ogg', 60, 1)

/obj/structure/safe_caps/proc/withdraw(amount)
	var/safe_amount = capsGet()

	if(amount > safe_amount)
		to_chat(usr, "<span class='warning'>Вам необходимо больше крышечек для этого!</span>")
		return

	capsSet(safe_amount - amount)

	var/obj/item/stack/caps/target/caps = new(amount)
	caps.loc = loc

	to_chat(usr, "Вы забрали [amount] крышек.")
	playsound(src, 'sound/items/change_jaws.ogg', 60, 1)

/obj/structure/safe_caps/attackby(obj/item/I, mob/living/carbon/human/user, parameters)
	if(istype(I, /obj/item/stack/caps))
		deposit(I:amount)
		qdel(I)

	attack_hand(user)

/obj/structure/safe_caps/attack_hand(mob/user)
	showUI()

/obj/structure/safe_caps/proc/getHTML()
	. += "<style>"
	. += "body {text-align: center;} .header {font-size: 15px; font-style: italic; margin-bottom: 10px; color: #ff66ff; display: block;} .description {display: block;} .percent {color: #ff0000;} .caps {color: #ffffff;} .button {margin-left: 5px; display: inline-block; text-transform: uppercase;} body { text-align: center; background-color: #212121;}"
	. += "body {text-align: center; background-color: #212121;} body, .uiTitle, a {color: #8bc34a;} .header {color: #ffc107;} .percent {color: #e51c23;} a {background-color: #145d14;} a:hover {color: #212121; background-color: #8bc34a;}"
	. += "</style>"

	. += "<span class='header'>В этом меню Вы можете сохранять Ваши крышки между раундами.</span>"
	. += "<span class='description'>Вводя свои крышки в сейф, Вы пополняете свой счёт <span class='percent'>атомов</span>.</span>"
	. += "<span class='description'>Чтобы положить крышки - достаточно кликнуть ими на сейф.</span>"
	. += "<span class='content'>На Вашем счету <span class='caps'>[capsGet()]</span> крышек.</span>"

	var/amount = capsGet()

	if(amount >= 10000)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=10000'>Снять 10 000</a>"

	if(amount >= 5000)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=5000'>Снять 5000</a>"

	if(amount >= 3000)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=3000'>Снять 3000</a>"

	if(amount >= 2000)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=2000'>Снять 2000</a>"

	if(amount >= 1000)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=1000'>Снять 1000</a>"

	if(amount >= 500)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=500'>Снять 500</a>"

	if(amount >= 400)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=400'>Снять 400</a>"

	if(amount >= 300)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=300'>Снять 300</a>"

	if(amount >= 200)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=200'>Снять 200</a>"

	if(amount >= 100)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=100'>Снять 100</a>"

	if(amount >= 50)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=50'>Снять 50</a>"

	if(amount >= 10)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=10'>Снять 10</a>"

	if(amount > 0)
		. += "<a class='button' href='byond://?src=\ref[src];withdraw=[amount]'>Снять все</a>"

	return .

/obj/structure/safe_caps/proc/showUI()
	var/datum/browser/popup = new(usr, "vending", "Сейф для крышечек",  641, 237)
	popup.set_content(getHTML())
	popup.open()

/obj/structure/safe_caps/Topic(href, href_list)
	if(..())
		return

	if(href_list["withdraw"])
		var/amount = text2num(href_list["withdraw"])
		withdraw(amount)

	showUI()