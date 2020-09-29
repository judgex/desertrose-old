/obj/machinery/workbench
	name = "workbench"
	icon = 'icons/obj/machines/reloadingbench.dmi'
	icon_state = "standard_bench"
	desc = "A basic workbench for simple to intermediate projects."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_WORKBENCH
	var/wrenchable = 1

/obj/machinery/workbench/can_be_unfasten_wrench(mob/user, silent)
	if (!wrenchable)  // case also covered by NODECONSTRUCT checks in default_unfasten_wrench
		return CANT_UNFASTEN

	return ..()

/obj/machinery/workbench/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE

/obj/machinery/workbench/attackby(obj/item/W, mob/user, params)
	if (istype(W, /obj/item/wrench) && !(flags_1&NODECONSTRUCT_1))
		W.play_tool_sound(src)
		deconstruct(TRUE)
		return
	if(user.a_intent == INTENT_HARM)
		return ..()
	if(user.transferItemToLoc(W, drop_location()))
		return 1

/obj/machinery/workbench/advanced
	name = "advanced workbench"
	icon_state = "advanced_bench"
	desc = "A large and advanced pre-war workbench to tackle any project!"
	machine_tool_behaviour = list(TOOL_AWORKBENCH, TOOL_WORKBENCH)

/obj/machinery/workbench/mbench
	name = "machine workbench"
	//icon_state = "advanced_bench"
	desc = "A machining bench, useful for producing complex machined parts."
	machine_tool_behaviour = list(TOOL_MWORKBENCH)

/obj/machinery/workbench/assbench
	name = "assembly workbench"
	//icon_state = "advanced_bench"
	desc = "An assembly bench, useful for assembling complex parts into semi-finished products."
	machine_tool_behaviour = list(TOOL_ASSWORKBENCH)

/obj/machinery/workbench/fbench
	var/obj/item/prefabs/mould
	name = "moulding workbench"
	icon_state = "moulding"
	desc = "A moulding bench, used for superheating metal into its molten form and moulding it."
	machine_tool_behaviour = list(TOOL_FWORKBENCH)

/obj/machinery/workbench/fbench/attackby(obj/item/W, mob/user, params)//todo me 
	if(istype(W, /obj/item/screwdriver) && mould)
		var/obj/item/prefabs/mould/B = mould
		B.forceMove(src.loc)
		mould = null
		to_chat(user,"You remove the mould.")
	else if(istype(W, /obj/item/prefabs/mould) && mould)
		var/obj/item/prefabs/mould/B = mould
		var/obj/item/prefabs/mould/C = W
		B.forceMove(src.loc)
		mould = null
		user.transferItemToLoc(C, src)
		mould = C
		to_chat(user,"You replace the mould.")
	else if(istype(W, /obj/item/prefabs/mould) && !mould)
		var/obj/item/prefabs/mould/C = W
		user.transferItemToLoc(C, src)
		mould = C
		to_chat(user,"You install the [W].")
	else if(user.transferItemToLoc(W, drop_location()))
		return TRUE

/obj/machinery/workbench/fbench/Crossed(atom/movable/AM)
	for(var/A in src.loc)
		if(A == src)
			continue
		if(isobj(A))
			var/obj/O = A
			if(istype(O,/obj/item/stack/sheet/metal))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m556))
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m556/C = new /obj/item/prefabs/complex/barrel/m556
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/action))
							Q.amount -= 1
							var/obj/item/prefabs/complex/action/simple/C = new /obj/item/prefabs/complex/action/simple
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/bolt))
							Q.amount -= 1
							var/obj/item/prefabs/complex/bolt/simple/C = new /obj/item/prefabs/complex/bolt/simple
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/screw))
							Q.amount -= 1
							var/obj/item/prefabs/complex/screw/C = new /obj/item/prefabs/complex/screw
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/low/C = new /obj/item/prefabs/complex/simpleWeaponFrame/low
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/C = new /obj/item/prefabs/complex/complexWeaponFrame
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/trigger))
							Q.amount -= 1
							var/obj/item/prefabs/complex/trigger/C = new /obj/item/prefabs/complex/trigger
							C.forceMove(src.loc)
			if(istype(O,/obj/item/stack/sheet/plastic))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/stock))
							Q.amount -= 1
							var/obj/item/prefabs/complex/stock/mid/C = new /obj/item/prefabs/complex/stock/mid
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/mid/C = new /obj/item/prefabs/complex/simpleWeaponFrame/mid
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/mid/C = new /obj/item/prefabs/complex/complexWeaponFrame/mid
							C.forceMove(src.loc)
			if(istype(O,/obj/item/stack/sheet/plasteel))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/high/C = new /obj/item/prefabs/complex/simpleWeaponFrame/high
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/high/C = new /obj/item/prefabs/complex/complexWeaponFrame/high
							C.forceMove(src.loc)



/obj/machinery/workbench/bottler
	name = "bottle press"
	icon_state = "bottler"
	desc = "A self-crafted all-in-one bottle making and pressing machine."
	machine_tool_behaviour = list(TOOL_BOTTLER)

/obj/machinery/workbench/forge
	name = "metalworking forge"
	desc = "A large furnace used for forging metal items such as swords, spears and shields. You can imagine yourself making iron daggers here for a long time."
	icon = 'icons/fallout/machines/64x32.dmi'
	icon_state = "forge"
	bound_width = 64
	machine_tool_behaviour = list(TOOL_FORGE)

/obj/item/weaponcrafting/receiver
	name = "modular receiver"
	desc = "A prototype modular receiver and trigger assembly for a firearm."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "receiver"

/obj/item/weaponcrafting/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of wood."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "riflestock"

/obj/machinery/autolathe/ammobench
	name = "universal reloading bench"
	desc = "A reloading bench used for inefficiently  crafting new ammunition out of scrap metal. There's a substantial supply of powder and primer. This one can be used to craft most NCR and Legion rounds."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
//	machine_tool_behaviour = list(TOOL_LEGION, TOOL_NCR)
	categories = list("Security")
	super_advanced_technology = FALSE

/obj/machinery/ammobench
	name = "pre-war reloading press"
	desc = "A high quality reloading press from before the war. Capable of cheap, mass production of ammunition."
	icon = 'icons/obj/machines/pre-war_press.dmi'
	icon_state = "pre-war_press"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_RELOADER

/obj/machinery/ammobench/makeshift
	name = "makeshift reloading bench"
	desc = "A makeshift reloading bench capable of producing ammunition rather inefficiently."
	icon = 'icons/obj/machines/reloadingbench.dmi'
	icon_state = "reloading_bench"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_MSRELOADER

/obj/machinery/ammobench/makeshift/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE
