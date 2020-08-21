// -------------------------
//  Smartfridges
// -------------------------
/obj/machinery/smartfridge
	name = "smartfridge"
	desc = "Keeps cold things cold and hot things cold."
	icon = 'icons/obj/vending.dmi'
	icon_state = "smartfridge"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	verb_say = "beeps"
	verb_ask = "beeps"
	verb_exclaim = "beeps"
	max_integrity = 300
	integrity_failure = 100
	armor = list("melee" = 20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 70)
	use_power = IDLE_POWER_USE
	idle_power_usage = 5
	active_power_usage = 100
	circuit = /obj/item/circuitboard/machine/smartfridge
	var/max_n_of_items = 1000
	var/allow_ai_retrieve = FALSE
	var/list/initial_contents
	var/full_indicator_state = "smartfridge-indicator" //the icon state for the "oh no, we're full" indicator light
	var/retrieval_state = "smartfridge-retrieve" //the icon state for the dispensing animation
	var/retrieval_time = 19 //the length (in ticks) of the retrieval_state
	var/supports_full_indicator_state = TRUE //whether or not the smartfridge supports a full inventory indicator icon state
	var/supports_retrieval_state = TRUE //whether or not the smartfridge supports a retrieval_state dispensing animation
	var/supports_capacity_indication = TRUE //whether or not the smartfridge supports 5 levels of inventory quantity indication icon states
	var/pitches = FALSE //whether or not it should use "sales pitches" similar to a vendor machine
	var/last_pitch = 0 //When did we last pitch?
	var/pitch_delay = 2000 //How long until we can pitch again?
	var/product_slogans = "" //String of slogans separated by semicolons, optional
	var/seconds_electrified = MACHINE_NOT_ELECTRIFIED	//Shock users like an airlock.
	var/dispenser_arm = TRUE //whether or not the dispenser is active (wires can disable this)
	var/power_wire_cut = FALSE
	var/list/slogan_list = list()

/obj/machinery/smartfridge/Destroy()
	QDEL_NULL(wires)
	return ..()

/obj/machinery/smartfridge/RefreshParts()
	for(var/obj/item/stock_parts/matter_bin/B in component_parts)
		max_n_of_items = initial(max_n_of_items) * B.rating

/obj/machinery/smartfridge/examine(mob/user)
	. = ..()
	if(in_range(user, src) || isobserver(user))
		if(!stat)//machine must be operable
			if (contents.len >= max_n_of_items)
				. += "<span class='notice'>The status display reads: <b>Inventory full!</b> Please remove items or upgrade the parts of this storage unit.</span>"
			else
				. += "<span class='notice'>The status display reads: Inventory quantity is currently <b>[contents.len] out of [max_n_of_items]</b> items.</span>"
		else
			if(!(stat & BROKEN))
				. += "<span class='notice'>The status display is off.</span>"

/obj/machinery/smartfridge/power_change()
	..()
	if(!(stat & BROKEN))
		if(powered() && !power_wire_cut)
			stat &= ~NOPOWER
			START_PROCESSING(SSmachines, src)
		else
			stat |= NOPOWER

	update_icon()

/obj/machinery/smartfridge/process()
	if(stat & (BROKEN|NOPOWER))
		return PROCESS_KILL
	update_icon()

	if(seconds_electrified > MACHINE_NOT_ELECTRIFIED)
		seconds_electrified--

	//Slogans and pitches.
	if(pitches && prob(5) && last_pitch + pitch_delay <= world.time && (contents.len > 0 || slogan_list.len > 0))
		if(contents.len > 0) //if we have contents to advertise, advertise them
			if(prob(25) && slogan_list.len > 0)
				//Even if we have contents to advertise, 25% of the time it will use a slogan (if available)
				speak_slogan()
			else
				speak_advert()
		else if(slogan_list.len > 0) //no contents to advertise, display a slogan instead
			speak_slogan()
		last_pitch = world.time

/obj/machinery/smartfridge/proc/speak_slogan()
	//speak a generic slogan from our slogan list (if possible)
	if(slogan_list.len > 0)
		speak(pick(slogan_list))

/obj/machinery/smartfridge/proc/speak_advert()
	//advertise our contents (if possible)
	if(contents.len > 0)
		var/selected_item1 = pick(contents)
		var/selected_item2 = pick(contents)
		if(contents.len > 1 && selected_item1 == selected_item2)
			//make an attempt to choose another item for the advertisement.
			selected_item2 = pick(contents)
		speak("This unit contains [contents.len] items, such as [(selected_item1 != selected_item2) ? "\"[selected_item1]\" and \"[selected_item2]\"!" : "\"[selected_item1]\"!"]")

/obj/machinery/smartfridge/proc/speak(message)
	if(stat & (BROKEN|NOPOWER))		// unpowered, no speak
		return
	if(!message)
		return
	say(message)

//Shock functionality is identical to the vending machines.
/obj/machinery/smartfridge/proc/shock(mob/user, prb)
	if(stat & (BROKEN|NOPOWER))		// unpowered, no shock
		return FALSE
	if(!prob(prb))
		return FALSE
	do_sparks(5, TRUE, src)
	var/check_range = TRUE
	if(electrocute_mob(user, get_area(src), src, 0.7, check_range))
		return TRUE
	else
		return FALSE

/obj/machinery/smartfridge/_try_interact(mob/user)
	if(seconds_electrified && !(stat & NOPOWER))
		if(shock(user, 100))
			return
	return ..()

/obj/machinery/smartfridge/obj_break(damage_flag)
	if(!(stat & BROKEN))
		stat |= BROKEN
		update_icon()
	..(damage_flag)

/obj/machinery/smartfridge/update_icon()
	var/startstate = initial(icon_state)
	if(stat & BROKEN)
		icon_state = "[startstate]-broken"
	else if(powered() && !power_wire_cut)
		icon_state = startstate
		//Capacity indication:
		if(supports_capacity_indication && contents.len > 0 && max_n_of_items > 0)
			var/current_capacity_percent = (contents.len/max_n_of_items)*100
			if(current_capacity_percent <= 2)
				icon_state = startstate
			else if(current_capacity_percent < 25)
				icon_state = "[startstate]-1"
			else if (current_capacity_percent < 45)
				icon_state = "[startstate]-2"
			else if (current_capacity_percent < 65)
				icon_state = "[startstate]-3"
			else if (current_capacity_percent < 85)
				icon_state = "[startstate]-4"
			else if (current_capacity_percent <= 100)
				icon_state = "[startstate]-5"
	else
		icon_state = "[startstate]-off"

/obj/machinery/smartfridge/proc/animate_dispenser()
	//visually animate the smartfridge dispensing an item
	if (supports_retrieval_state && !(stat & (NOPOWER|BROKEN)))
		//hacky way to flick an animated overlay in the same DMI
		var/current_icon_state = icon_state
		src.underlays += current_icon_state
		flick(retrieval_state, src)
		src.underlays -= current_icon_state

/obj/machinery/smartfridge/proc/indicate_full()
	//turn on the blinking red full to capacity indicator
	if (supports_full_indicator_state && !(stat & (NOPOWER|BROKEN)))
		add_overlay(full_indicator_state)
		src.visible_message("<span class='warning'>\The [src]'s \"Full Inventory\" indicator light blinks on.</span>", "<span class='warning'>Your \"Full Inventory\" indicator light blinks on, you are now at capacity.</span>", "<span class='notice'>You hear a clunk, then a quiet beep.</span>")

/*******************
*   Item Adding
********************/

/obj/machinery/smartfridge/attackby(obj/item/O, mob/user, params)
	if(default_deconstruction_screwdriver(user, "smartfridge-off", "smartfridge", O))
		return

	if(default_pry_open(O))
		return

	if(default_unfasten_wrench(user, O))
		power_change()
		return

	if(default_deconstruction_crowbar(O))
		updateUsrDialog()
		return

	if(!stat)

		//Unable to add an item, it's already full.
		if(contents.len >= max_n_of_items)
			to_chat(user, "<span class='warning'>\The [src] is full!</span>")
			return FALSE

		//Adding a single item
		if(accept_check(O))
			load(O)
			user.visible_message("[user] has added \the [O] to \the [src].", "<span class='notice'>You add \the [O] to \the [src].</span>")
			update_icon()
			updateUsrDialog()
			if(contents.len >= max_n_of_items)
				indicate_full()
			return TRUE

		//Adding items from a bag
		if(istype(O, /obj/item/storage/bag))
			var/obj/item/storage/P = O
			var/loaded = 0
			for(var/obj/G in P.contents)
				if(contents.len >= max_n_of_items)
					break
				if(accept_check(G))
					load(G)
					loaded++
			update_icon()
			updateUsrDialog()

			if(loaded)
				if(contents.len >= max_n_of_items)
					indicate_full()
					user.visible_message("[user] loads \the [src] with \the [O].", \
									 "<span class='notice'>You fill \the [src] with \the [O].</span>")
				else
					user.visible_message("[user] loads \the [src] with \the [O].", \
										 "<span class='notice'>You load \the [src] with \the [O].</span>")
				if(O.contents.len > 0)
					to_chat(user, "<span class='warning'>Some items dont belong and wont fit.</span>")
				return TRUE
			else
				to_chat(user, "<span class='warning'>There is nothing in [O] to put in [src]!</span>")
				return FALSE

		if(user.a_intent != INTENT_HARM)
			to_chat(user, "<span class='warning'>\The [O] dosent fit right in the [src].</span>")
			updateUsrDialog()
			return FALSE
		else
			return ..()

	else
		return ..()


/obj/machinery/smartfridge/proc/accept_check(obj/item/O)
	if(istype(O, /obj/item/reagent_containers/food/snacks/grown/) || istype(O, /obj/item/seeds/) || istype(O, /obj/item/grown/))
		return TRUE
	return FALSE

/obj/machinery/smartfridge/proc/load(obj/item/O)
	if(ismob(O.loc))
		var/mob/M = O.loc
		if(!M.transferItemToLoc(O, src))
			to_chat(usr, "<span class='warning'>\The [O] is stuck to your hand, you cannot put it in \the [src]!</span>")
			return FALSE
		else
			return TRUE
	else
		if(SEND_SIGNAL(O.loc, COMSIG_CONTAINS_STORAGE))
			return SEND_SIGNAL(O.loc, COMSIG_TRY_STORAGE_TAKE, O, src)
		else
			O.forceMove(src)
			return TRUE

///Really simple proc, just moves the object "O" into the hands of mob "M" if able, done so I could modify the proc a little for the organ fridge
/obj/machinery/smartfridge/proc/dispense(obj/item/O, var/mob/M)
	if(!M.put_in_hands(O))
		O.forceMove(drop_location())
		adjust_item_drop_location(O)

/obj/machinery/smartfridge/ui_interact(mob/user, ui_key = "main", datum/tgui/ui = null, force_open = FALSE, datum/tgui/master_ui = null, datum/ui_state/state = GLOB.default_state)
	ui = SStgui.try_update_ui(user, src, ui_key, ui, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "smartvend", name, 440, 550, master_ui, state)
		ui.set_autoupdate(FALSE)
		ui.open()

/obj/machinery/smartfridge/ui_data(mob/user)
	. = list()

	var/listofitems = list()
	for (var/I in src)
		var/atom/movable/O = I
		if (!QDELETED(O))
			var/md5name = md5(O.name)				// This needs to happen because of a bug in a TGUI component, https://github.com/ractivejs/ractive/issues/744
			if (listofitems[md5name])				// which is fixed in a version we cannot use due to ie8 incompatibility
				listofitems[md5name]["amount"]++	// The good news is, #30519 made smartfridge UIs non-auto-updating
			else
				listofitems[md5name] = list("name" = O.name, "type" = O.type, "amount" = 1)
	sortList(listofitems)

	.["contents"] = listofitems
	.["name"] = name
	.["isdryer"] = FALSE


/obj/machinery/smartfridge/handle_atom_del(atom/A) // Update the UIs in case something inside gets deleted
	SStgui.update_uis(src)

/obj/machinery/smartfridge/ui_act(action, params)
	. = ..()
	if(.)
		return
	switch(action)
		if("Release")
			var/desired = 0

			if(!allow_ai_retrieve && isAI(usr))
				to_chat(usr, "<span class='warning'>[src] does not seem to be configured to respect your authority!</span>")
				return

			if(!dispenser_arm)
				audible_message("<span class='warning'>\The [src] makes a loud clunk and the dispenser arm twitches slightly.</span>", "<span class='warning'>The dispenser arm on the [src] twitches slightly.</span>")
				return

			if (params["amount"])
				desired = text2num(params["amount"])
			else
				desired = input("How many items?", "How many items would you like to take out?", 1) as null|num

			if(desired <= 0)
				return FALSE

			if(QDELETED(src) || QDELETED(usr) || !usr.Adjacent(src)) // Sanity checkin' in case stupid stuff happens while we wait for input()
				return FALSE

			//Retrieving a single item into your hand
			if(desired == 1 && Adjacent(usr) && !issilicon(usr))
				for(var/obj/item/O in src)
					if(O.name == params["name"])
						dispense(O, usr)
						break
				update_icon()
				cut_overlay(full_indicator_state)
				animate_dispenser()
				return TRUE

			//Retrieving many items
			for(var/obj/item/O in src)
				if(desired <= 0)
					break
				if(O.name == params["name"])
					dispense(O, usr)
					desired--

			update_icon()
			cut_overlay(full_indicator_state)
			animate_dispenser()
			return TRUE
	return FALSE


// ----------------------------
//  Drying Rack 'smartfridge'
// ----------------------------
/obj/machinery/smartfridge/drying_rack
	name = "drying rack"
	desc = "A wooden contraption, used to dry plant products, food and leather."
	icon = 'icons/obj/hydroponics/equipment.dmi'
	icon_state = "drying_rack"
	use_power = IDLE_POWER_USE
	idle_power_usage = 5
	active_power_usage = 200
	supports_full_indicator_state = FALSE //whether or not the smartfridge supports a full inventory indicator icon state
	supports_retrieval_state = FALSE //whether or not the smartfridge supports a retrieval_state dispensing animation
	supports_capacity_indication = FALSE //whether or not the smartfridge supports 5 levels of inventory quantity indication icon states
	product_slogans = "Smokin'!;Blaze it.;Roll 'em up!;This machine is made out of 85% organic hemp product.;Warning: Do not insert limbs into machine.;Enjoy your dried \"plant products\".;This machine was last inspected on April 20th, 2550.;Wait, I forgot what I was going to do... Oh yeah, dry things.;Tell the Cook to bring some food over here, I'm starving."
	pitches = FALSE
	var/drying = FALSE

/obj/machinery/smartfridge/drying_rack/Initialize()
	. = ..()
	if(component_parts && component_parts.len)
		component_parts.Cut()
	component_parts = null

/obj/machinery/smartfridge/drying_rack/on_deconstruction()
	new /obj/item/stack/sheet/mineral/wood(drop_location(), 10)
	..()

/obj/machinery/smartfridge/drying_rack/RefreshParts()
/obj/machinery/smartfridge/drying_rack/exchange_parts()
/obj/machinery/smartfridge/drying_rack/spawn_frame()

/obj/machinery/smartfridge/drying_rack/default_deconstruction_crowbar(obj/item/crowbar/C, ignore_panel = 1)
	..()

//Whoever made this hacky drying_rack smartfridge thing didn't use the standard construction method
//so we have to override the wiring/deconstruction of the default smartfridge here
/obj/machinery/smartfridge/drying_rack/attackby(obj/item/O, mob/user, params)
	if(!(flags_1 & NODECONSTRUCT_1) && O.tool_behaviour == TOOL_SCREWDRIVER)
		to_chat(user, "<span class='warning'>[src] has nothing to unscrew! You think you can probably pry out the shelves, though.</span>")
		return
	else if(!(flags_1 & NODECONSTRUCT_1) && O.tool_behaviour == TOOL_WRENCH)
		to_chat(user, "<span class='warning'>[src] has no bolts to wrench! You think you can probably pry out the shelves, though.</span>")
		return
	else
		return ..()

/obj/machinery/smartfridge/drying_rack/ui_data(mob/user)
	. = ..()
	.["isdryer"] = TRUE
	.["verb"] = "Take"
	.["drying"] = drying


/obj/machinery/smartfridge/drying_rack/ui_act(action, params)
	. = ..()
	if(.)
		update_icon() // This is to handle a case where the last item is taken out manually instead of through drying pop-out
		return
	switch(action)
		if("Dry")
			toggle_drying(FALSE)
			return TRUE
	return FALSE

/obj/machinery/smartfridge/drying_rack/power_change()
	if(powered() && anchored)
		stat &= ~NOPOWER
	else
		stat |= NOPOWER
		toggle_drying(TRUE)
	update_icon()

/obj/machinery/smartfridge/drying_rack/load() //For updating the filled overlay
	..()
	update_icon()

/obj/machinery/smartfridge/drying_rack/update_icon()
	..()
	cut_overlays()
	if(drying)
		add_overlay("drying_rack_drying")
	if(contents.len)
		add_overlay("drying_rack_filled")

/obj/machinery/smartfridge/drying_rack/process()
	..()
	if(drying)
		if(rack_dry())//no need to update unless something got dried
			SStgui.update_uis(src)
			update_icon()

/obj/machinery/smartfridge/drying_rack/accept_check(obj/item/O)
	if(istype(O, /obj/item/reagent_containers/food/snacks/))
		var/obj/item/reagent_containers/food/snacks/S = O
		if(S.dried_type)
			return TRUE
	if(istype(O, /obj/item/stack/sheet/wetleather/))
		return TRUE
	return FALSE

/obj/machinery/smartfridge/drying_rack/proc/toggle_drying(forceoff)
	if(drying || forceoff)
		drying = FALSE
		use_power = IDLE_POWER_USE
	else
		drying = TRUE
		use_power = ACTIVE_POWER_USE
	update_icon()

/obj/machinery/smartfridge/drying_rack/proc/rack_dry()
	for(var/obj/item/reagent_containers/food/snacks/S in src)
		if(S.dried_type == S.type)//if the dried type is the same as the object's type, don't bother creating a whole new item...
			S.add_atom_colour("#ad7257", FIXED_COLOUR_PRIORITY)
			S.dry = TRUE
			S.forceMove(drop_location())
		else
			var/dried = S.dried_type
			new dried(drop_location())
			qdel(S)
		return TRUE
	for(var/obj/item/stack/sheet/wetleather/WL in src)
		new /obj/item/stack/sheet/leather(drop_location(), WL.amount)
		qdel(WL)
		return TRUE
	return FALSE

/obj/machinery/smartfridge/drying_rack/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	atmos_spawn_air("TEMP=1000")


// ----------------------------
//  Bar drink smartfridge
// ----------------------------
/obj/machinery/smartfridge/drinks
	name = "drink showcase"
	desc = "A refrigerated storage unit for tasty, tasty alcohol."
	max_n_of_items = 100
	product_slogans = "Only the finest beverages for the discerning crewmember.;All our drinks are served ice-cold.;Happy Hour begins every shift at 12:00.;Don't worry, I won't tell the Captain you drink on the shift.;This'll get ya drunk.;Bottoms up!;Delightfully refreshing!;Show me the way to go home, I'm tired and I want to go to bed...;This unit contains the bartender's latest creations."
	pitches = TRUE

/obj/machinery/smartfridge/drinks/accept_check(obj/item/O)
	if(!istype(O, /obj/item/reagent_containers) || (O.item_flags & ABSTRACT) || !O.reagents || !O.reagents.reagent_list.len)
		return FALSE
	if(istype(O, /obj/item/reagent_containers/glass) || istype(O, /obj/item/reagent_containers/food/drinks) || istype(O, /obj/item/reagent_containers/food/condiment))
		return TRUE

// ----------------------------
//  Food smartfridge
// ----------------------------
/obj/machinery/smartfridge/food
	desc = "A refrigerated storage unit for food."
	product_slogans = "Clean your refrigerator regularly!;Is your refrigerator running?;Much better than storing your food in space.;Feeling hungry? Have a snack!;Tasty and nutritious!"
	max_n_of_items = 200

/obj/machinery/smartfridge/food/accept_check(obj/item/O)
	if(istype(O, /obj/item/reagent_containers/food/snacks/))
		return TRUE
	return FALSE


// -------------------------------------
// Xenobiology Slime-Extract Smartfridge
// -------------------------------------
/obj/machinery/smartfridge/extract
	name = "smart slime extract storage"
	desc = "A refrigerated storage unit for slime extracts."

/obj/machinery/smartfridge/extract/accept_check(obj/item/O)
	if(istype(O, /obj/item/slime_extract))
		return TRUE
	if(istype(O, /obj/item/slime_scanner))
		return TRUE
	return FALSE

// -----------------------------
// Chemistry Medical Smartfridge
// -----------------------------
/obj/machinery/smartfridge/chemistry
	name = "smart chemical storage"
	desc = "A refrigerated storage unit for medicine storage."

/obj/machinery/smartfridge/chemistry/accept_check(obj/item/O)
	if(istype(O, /obj/item/storage/pill_bottle))
		if(O.contents.len)
			for(var/obj/item/I in O)
				if(!accept_check(I))
					return FALSE
			return TRUE
		return FALSE
	if(!istype(O, /obj/item/reagent_containers) || (O.item_flags & ABSTRACT))
		return FALSE
	if(istype(O, /obj/item/reagent_containers/pill)) // empty pill prank ok
		return TRUE
	if(!O.reagents || !O.reagents.reagent_list.len) // other empty containers not accepted
		return FALSE
	if(istype(O, /obj/item/reagent_containers/syringe) || istype(O, /obj/item/reagent_containers/glass/bottle) || istype(O, /obj/item/reagent_containers/glass/beaker) || istype(O, /obj/item/reagent_containers/spray) || istype(O, /obj/item/reagent_containers/medspray))
		return TRUE
	return FALSE

/obj/machinery/smartfridge/chemistry/preloaded
	initial_contents = list(
		/obj/item/reagent_containers/pill/epinephrine = 12,
		/obj/item/reagent_containers/pill/charcoal = 5,
		/obj/item/reagent_containers/glass/bottle/epinephrine = 1,
/obj/item/reagent_containers/glass/bottle/charcoal = 1)

// ----------------------------
// Virology Medical Smartfridge
// ----------------------------
/obj/machinery/smartfridge/chemistry/virology
	name = "smart virus storage"
	desc = "A refrigerated storage unit for volatile sample storage."
	max_n_of_items = 100
	product_slogans = "Try not to spill these.;Use of level-3 biohazard equipment or higher is mandatory when operating this machine.;Whoops, I think I dropped one.;Storage solutions for any and all biohazardous material."

/obj/machinery/smartfridge/chemistry/virology/preloaded
	pitches = FALSE
	initial_contents = list(
		/obj/item/reagent_containers/syringe/antiviral = 4,
		/obj/item/reagent_containers/glass/bottle/cold = 1,
		/obj/item/reagent_containers/glass/bottle/flu_virion = 1,
		/obj/item/reagent_containers/glass/bottle/plasma = 1,
		/obj/item/reagent_containers/glass/bottle/synaptizine = 1,
/obj/item/reagent_containers/glass/bottle/formaldehyde = 1)

// ----------------------------
// Disk """fridge"""
// ----------------------------
/obj/machinery/smartfridge/disks
	name = "disk compartmentalizer"
	desc = "A machine capable of storing a variety of disks. Denoted by most as the DSU (disk storage unit)."

/obj/machinery/smartfridge/disks/accept_check(obj/item/O)
	if(istype(O, /obj/item/disk/))
		return TRUE
	else
		return FALSE

// -------------------------
//  Rack - Unpowered Smartfridge
// -------------------------
/obj/machinery/smartfridge/bottlerack
	name = "bottle rack"
	desc = "The organised way of mass storing your brews."
	icon = 'icons/obj/rack.dmi'
	icon_state = "rack"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	use_power = NO_POWER_USE
	max_n_of_items = 30

/obj/machinery/smartfridge/bottlerack/Initialize()
	. = ..()
	if(component_parts && component_parts.len)
		component_parts.Cut()
	component_parts = null

	if(islist(initial_contents))
		for(var/typekey in initial_contents)
			var/amount = initial_contents[typekey]
			if(isnull(amount))
				amount = 1
			for(var/i in 1 to amount)
				if(prob(50))
					load(new typekey(src))

/obj/machinery/smartfridge/bottlerack/on_deconstruction()
	new /obj/item/stack/sheet/mineral/wood(drop_location(), 10)
	..()


/obj/machinery/smartfridge/bottlerack/RefreshParts()
/obj/machinery/smartfridge/bottlerack/default_deconstruction_screwdriver()
/obj/machinery/smartfridge/bottlerack/exchange_parts()
/obj/machinery/smartfridge/bottlerack/spawn_frame()

/obj/machinery/smartfridge/bottlerack/default_deconstruction_crowbar(obj/item/crowbar/C, ignore_panel = 1)

/obj/machinery/smartfridge/bottlerack/accept_check(obj/item/O)
	if(!istype(O, /obj/item/reagent_containers) || (O.item_flags & ABSTRACT) || !O.reagents || !O.reagents.reagent_list.len)
		return FALSE
	if(istype(O, /obj/item/reagent_containers/glass) || istype(O, /obj/item/reagent_containers/food/drinks) || istype(O, /obj/item/reagent_containers/food/condiment))
		return TRUE

// -------------------------
//  Gardentool Rack
// -------------------------
/obj/machinery/smartfridge/bottlerack/gardentool
	name = "garden toolrack"
	desc = "The wasteland farmers organisational tool storage."
	icon_state = "gardentool"
	layer = ABOVE_OBJ_LAYER
	max_n_of_items = 30

/obj/machinery/smartfridge/bottlerack/gardentool/default_deconstruction_crowbar(obj/item/crowbar/C, ignore_panel = 1)

/obj/machinery/smartfridge/bottlerack/gardentool/accept_check(obj/item/O)
	if(istype(O, /obj/item/plant_analyzer) || istype(O, /obj/item/reagent_containers/spray) || istype(O, /obj/item/cultivator) || istype(O, /obj/item/hatchet) || istype(O, /obj/item/scythe) || istype(O, /obj/item/reagent_containers/glass/bottle/nutrient) || istype(O, /obj/item/reagent_containers/glass/bottle/killer) || istype(O, /obj/item/shovel) || istype(O, /obj/item/twohanded/fireaxe) || istype(O, /obj/item/reagent_containers/glass/bucket) || istype(O, /obj/item/storage/bag/plants) || istype(O, /obj/item/storage/bag/plants/portaseeder))
		return TRUE
	return FALSE
/obj/machinery/smartfridge/bottlerack/gardentool/proc/can_be_rotated(mob/user,rotation_type)
	if(anchored)
		to_chat(user, "<span class='warning'>[src] cannot be rotated while it is fastened to the wall!</span>")
	else
		return TRUE

/obj/machinery/smartfridge/bottlerack/gardentool/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/simple_rotation,ROTATION_ALTCLICK | ROTATION_CLOCKWISE | ROTATION_COUNTERCLOCKWISE | ROTATION_VERBS ,null,CALLBACK(src, .proc/can_be_rotated))

// -------------------------
//  Seedbin
// -------------------------
/obj/machinery/smartfridge/bottlerack/seedbin
	name = "seed bin"
	desc = "Organised dumping ground for the starters of life."
	icon_state = "seedbin"
	max_n_of_items = 150

/obj/machinery/smartfridge/bottlerack/seedbin/accept_check(obj/item/O)
	if(istype(O, /obj/item/seeds))
		return TRUE
	return FALSE

// -------------------------
// LOOTABLE RACKS - PREWAR SHELVES ETC
// -------------------------------------------------------------------------

///generic///bottles

/obj/machinery/smartfridge/bottlerack/lootshelf
	name = "\improper shop shelf"
	desc = "A rusted pre-war shelf, this one has a faded label about soft drinks. "
	icon_state = "lootshelf"
	max_n_of_items = 35

/obj/machinery/smartfridge/bottlerack/lootshelf/accept_check(obj/item/O)
	return FALSE

/obj/machinery/smartfridge/bottlerack/lootshelf
	initial_contents = list(
		/obj/item/reagent_containers/food/drinks/bottle/lemonjuice = 1,
		/obj/item/reagent_containers/food/drinks/bottle/limejuice = 3,
		/obj/item/reagent_containers/food/drinks/bottle/tomatojuice = 4,
		/obj/item/reagent_containers/food/drinks/bottle/orangejuice = 2,
        /obj/item/reagent_containers/food/drinks/soda_cans/tonic = 3,
		/obj/item/reagent_containers/food/drinks/soda_cans/sodawater = 2,
		/obj/item/reagent_containers/food/drinks/soda_cans/lemon_lime = 1,
		
/obj/item/reagent_containers/food/drinks/bottle/f13nukacola = 4,
		/obj/item/reagent_containers/food/drinks/bottle/bawls = 3,
		/obj/item/reagent_containers/food/drinks/bottle/vim = 3,
        /obj/item/reagent_containers/food/drinks/bottle/sunset = 3)

////cans

/obj/machinery/smartfridge/bottlerack/lootshelf/cans
	desc = "A rusted pre-war shelf, this one has a faded label about canned goods. "

/obj/machinery/smartfridge/bottlerack/lootshelf/cans
	initial_contents = list(
		/obj/item/reagent_containers/food/drinks/bottle/instacoffee = 5,
		/obj/item/reagent_containers/food/drinks/bottle/instatea = 4,
		/obj/item/reagent_containers/food/drinks/bottle/instacocoa = 4,
		/obj/item/reagent_containers/food/drinks/soda_cans/cream = 3,
		/obj/item/reagent_containers/food/snacks/f13/porknbeans = 3,
	    /obj/item/reagent_containers/food/snacks/f13/borscht = 1,
		/obj/item/reagent_containers/food/snacks/f13/dog = 3,
		/obj/item/reagent_containers/food/snacks/beans = 3,)

///booze

/obj/machinery/smartfridge/bottlerack/lootshelf/brews
	desc = "A rusted pre-war shelf, this one has a faded label about alchohol. "

/obj/machinery/smartfridge/bottlerack/lootshelf/brews
	initial_contents = list(
		/obj/item/reagent_containers/food/drinks/bottle/gin = 1,
		/obj/item/reagent_containers/food/drinks/bottle/whiskey = 1,
		/obj/item/reagent_containers/food/drinks/bottle/vodka = 1,
		/obj/item/reagent_containers/food/drinks/bottle/tequila = 1,
		/obj/item/reagent_containers/food/drinks/bottle/rum = 1,
	    /obj/item/reagent_containers/food/drinks/bottle/vermouth = 1,
		/obj/item/reagent_containers/food/drinks/bottle/cognac = 1,
		/obj/item/reagent_containers/food/drinks/bottle/absinthe = 1,
		/obj/item/reagent_containers/food/drinks/bottle/lizardwine = 1,
		/obj/item/reagent_containers/food/drinks/bottle/hcider = 1,
		/obj/item/reagent_containers/food/drinks/bottle/grappa = 1,
		/obj/item/reagent_containers/food/drinks/bottle/sake = 1,
		/obj/item/reagent_containers/food/drinks/bottle/fernet = 1,)

//diy

/obj/machinery/smartfridge/bottlerack/lootshelf/diy
	desc = "A rusted pre-war shelf, this one has a faded label about DIY. "

/obj/machinery/smartfridge/bottlerack/lootshelf/diy
	initial_contents = list(
		/obj/item/extinguisher = 1,
		/obj/item/hatchet = 1,
		/obj/item/pickaxe/mini = 1,
		/obj/item/wrench = 1,
		/obj/item/twohanded/fireaxe = 1,
		/obj/item/twohanded/sledgehammer = 1,
		/obj/item/reagent_containers/food/snacks/deadmouse = 1,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/flashlight = 1,
		/obj/item/stack/cable_coil/random = 1,
		/obj/item/screwdriver = 1,
		/obj/item/wirecutters = 1,
		/obj/item/clothing/head/hardhat = 1)

//construction

/obj/machinery/smartfridge/bottlerack/lootshelf/construction
	desc = "A rusted pre-war shelf, this one has a faded label about materials. "

/obj/machinery/smartfridge/bottlerack/lootshelf/construction
	initial_contents = list(
		/obj/item/stack/sheet/metal/ten = 1,

		/obj/item/stack/sheet/glass/ten = 1,
		/obj/item/stack/sheet/plasteel/five = 1,
		/obj/item/stack/sheet/plastic/five = 1,
		/obj/item/stack/sheet/cloth/five = 1,
		/obj/item/stack/crafting/metalparts/three = 1,
		/obj/item/stack/crafting/goodparts/three = 1,
		/obj/item/stack/crafting/electronicparts/three = 1)

//cooking

/obj/machinery/smartfridge/bottlerack/lootshelf/cooking
	desc = "A rusted pre-war shelf, this one has a faded label about cooking. "

/obj/machinery/smartfridge/bottlerack/lootshelf/cooking
	initial_contents = list(
		/obj/item/reagent_containers/food/condiment/flour = 1,
		/obj/item/reagent_containers/food/condiment/rice = 1,
		/obj/item/reagent_containers/food/condiment/yeast = 1,
		/obj/item/reagent_containers/food/condiment/saltshaker = 1,
		/obj/item/reagent_containers/food/condiment/peppermill = 1,
		/obj/item/reagent_containers/food/condiment/soysauce = 1)

//books - dont place a ton of these

/obj/machinery/smartfridge/bottlerack/lootshelf/books
	desc = "A rusted pre-war shelf, this one has a faded label about magazines. "

/obj/machinery/smartfridge/bottlerack/lootshelf/books
	initial_contents = list(
		/obj/item/book/granter/trait/chemistry = 1,
			/obj/item/reagent_containers/food/snacks/deadmouse = 1,
	/obj/item/book/granter/trait/trekking = 1,
	/obj/item/book/granter/trait/gunsmith_one = 1,
	/obj/item/book/granter/trait/gunsmith_two = 1,
	/obj/item/book/granter/trait/gunsmith_three = 1,)