/obj/item/components
    name = "crafting items"
    icon = 'icons/fallout/objects/items.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/obj/item/blueprint
    name = "crafting blueprint"
    icon = 'icons/fallout/objects/items.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/obj/item/prefabs
    name = "crafting prefabs"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/obj/item/stack/prefabs
    name = "crafting prefabs"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

//misc blueprints
/obj/item/blueprint/misc
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint2"

/obj/item/blueprint/misc/stim
    name = "Stimpack blueprint"
    desc = "Stimpacks"


/obj/item/blueprint/misc/superstims
    name = "Super Stimpack blueprint"
    desc = "Super stims"

//weapon blueprints
/obj/item/blueprint/weapon
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint1"

//low tier

/obj/item/blueprint/weapon/AEP7
	name = "AEP7 blueprint"

/obj/item/blueprint/weapon/trail_carbine
	name = "Trail Carbine blueprint"

/obj/item/blueprint/weapon/lever_action
	name = "Lever Action shotgun blueprint"

/obj/item/blueprint/weapon/kar98
	name = "Ancient rifle blueprint"

/obj/item/blueprint/weapon/kar98/limited
	name = "Damaged ancient rifle blueprint"

//mid tier
/obj/item/blueprint/weapon/thatgun
	name = ".223 pistol blueprint"

/obj/item/blueprint/weapon/thatgun/limited
	name = "Damaged .223 pistol blueprint"

/obj/item/blueprint/weapon/pps
	name = "Ancient SMG blueprint"

/obj/item/blueprint/weapon/pps/limited
	name = "Damaged ancient SMG blueprint"

/obj/item/blueprint/weapon/mg34
	name = "Ancient machine gun blueprint"

/obj/item/blueprint/weapon/mg34/limited
	name = "Damaged ancient machine gun blueprint"

/obj/item/blueprint/weapon/marksmanrifle
	name = "Marksman Rifle blueprint"

/obj/item/blueprint/weapon/marksmanrifle/limited
	name = "Damaged Marksman Rifle blueprint"

/obj/item/blueprint/weapon/plasmapistol
	name = "Plasma Pistol blueprint"

/obj/item/blueprint/weapon/plasmapistol/limited
	name = "Damaged Plasma Pistol blueprint"

/obj/item/blueprint/weapon/uzi
	name = "UZI blueprint"

/obj/item/blueprint/weapon/uzi/limited
	name = "Damaged UZI blueprint"

/obj/item/blueprint/weapon/smg10mm
	name = "10mm SMG blueprint"

/obj/item/blueprint/weapon/smg10mm/limited
	name = "Damaged 10mm SMG blueprint"

/obj/item/blueprint/weapon/brush
	name = "Brush Gun blueprint"

/obj/item/blueprint/weapon/brush/limited
	name = "Damaged Brush Gun blueprint"

/obj/item/blueprint/weapon/grease_gun
 	name = "Grease Gun blueprint"

/obj/item/blueprint/weapon/grease_gun/limited
 	name = "Damaged Grease Gun blueprint"

//high tier
/obj/item/blueprint/weapon/R82
	name = "R82 heavy service rifle blueprint"

/obj/item/blueprint/weapon/R82/limited
	name = "Damaged R82 heavy service rifle blueprint"

/obj/item/blueprint/weapon/deagle
	name = "Desert Eagle blueprint"

/obj/item/blueprint/weapon/deagle/limited
	name = "Damaged Desert Eagle blueprint"

/obj/item/blueprint/weapon/R91
	name = "R91 Assault rifle blueprint"

/obj/item/blueprint/weapon/R91/limited
	name = "Damaged R91 Assault rifle blueprint"

/obj/item/blueprint/weapon/sniper
	name = "Sniper Rifle blueprint"

/obj/item/blueprint/weapon/sniper/limited
	name = "Damaged Sniper Rifle blueprint"

/obj/item/blueprint/weapon/breacher
	name = "Breacher Shotgun blueprint"

/obj/item/blueprint/weapon/breacher/limited
	name = "Damaged Breacher Shotgun blueprint"

/obj/item/blueprint/weapon/lmg
	name = "LMG blueprint"
	
/obj/item/blueprint/weapon/lmg/limited
	name = "Damaged LMG blueprint"

//very high tier
/obj/item/blueprint/weapon/plasmarifle
	name = "Plasma Rifle blueprint"

/obj/item/blueprint/weapon/plasmarifle/limited
	name = "Damaged Plasma Rifle blueprint"

/obj/item/blueprint/weapon/AER9
	name = "AER9 blueprint"

/obj/item/blueprint/weapon/AER9/limited
	name = "Damaged AER9 blueprint"

/obj/item/blueprint/weapon/AM_rifle
	name = "AM Rifle blueprint"

/obj/item/blueprint/weapon/AM_rifle/limited
	name = "Damaged AM Rifle blueprint"

/obj/item/blueprint/weapon/city_killer
	name = "City Killer shotgun blueprint"

/obj/item/blueprint/weapon/city_killer/limited
	name = "Damaged City Killer shotgun blueprint"

/obj/item/blueprint/weapon/rangemaster
	name = "Colt Rangemaster blueprint"

/obj/item/blueprint/weapon/rangemaster/limited
	name = "Damaged Colt Rangemaster blueprint"

/obj/item/blueprint/weapon/bozar
	name = "Bozar blueprint"

/obj/item/blueprint/weapon/bozar/limited
	name = "Damaged bozar blueprint"
//armor blueprints
/obj/item/blueprint/armor
    name = "armor blueprint"
    icon_state = "blueprint4"

/obj/item/blueprint/armor/combat
    name = "combat armor blueprint"

/obj/item/blueprint/armor/reinforced
    name = "reinforced armor blueprint"

/obj/item/advanced_crafting_components
    name = "crafting blueprint"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/obj/item/stack/prefabs/mWeaponParts
	name = "Metal Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/wWeaponParts
	name = "Wooden Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/pWeaponParts
	name = "Plastic Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/psWeaponParts
	name = "Plasteel Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/simpleWeaponFrame

	var/obj/item/prefabs/complex/action/simple/actionsimple
	var/obj/item/prefabs/complex/action/auto/actionauto

	var/obj/item/prefabs/complex/barrel/m556/m556barrel
	var/obj/item/prefabs/complex/barrel/mm10/mm10barrel
	var/obj/item/prefabs/complex/barrel/mm9/mm9barrel
	var/obj/item/prefabs/complex/barrel/m357/m357barrel
	var/obj/item/prefabs/complex/barrel/m44/m44barrel
	var/obj/item/prefabs/complex/barrel/m45/m45barrel
	var/obj/item/prefabs/complex/barrel/m762/m762barrel
	var/obj/item/prefabs/complex/barrel/m4570/m4570barrel

	var/obj/item/prefabs/complex/trigger/trigger

	var/obj/item/prefabs/complex/bolt/simple/boltsimple
	var/obj/item/prefabs/complex/bolt/high/boltadvanced

	var/obj/item/prefabs/complex/stock/mid/stockplastic
	var/obj/item/prefabs/complex/stock/low/stockwood

	var/obj/item/prefabs/complex/screw/screw

	var/obj/item/advanced_crafting_components/alloys/alloys
	var/obj/item/advanced_crafting_components/receiver/receiver
	var/obj/item/advanced_crafting_components/assembly/assembly
	name = "Simple Weapon Frame"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/simpleWeaponFrame/attackby(obj/item/W, mob/user, params)//todo me more recipes
	if(istype(W, /obj/item/screwdriver))
		if(src.contents.len > 0)			
			to_chat(usr,"You remove the [src.contents[1]] from the [src].")
			usr.transferItemToLoc(src.contents[1],usr.loc)
		else
			to_chat(usr,"The weapon frame does not contain anything.")
	if(istype(W, /obj/item/wrench))
		if(screw&&trigger&&boltsimple&&actionsimple&&mm10barrel)//10mm
			if(istype(src,/obj/item/prefabs/complex/simpleWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/pistol/n99
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionsimple&&m357barrel)//357
			if(istype(src,/obj/item/prefabs/complex/simpleWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/revolver/colt357
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionsimple&&m44barrel)//44
			if(istype(src,/obj/item/prefabs/complex/simpleWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/revolver/m29
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionsimple&&m4570barrel)//hunting revolver
			if(istype(src,/obj/item/prefabs/complex/simpleWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/revolver/sequoia/scoped
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltadvanced&&actionsimple&&m556barrel)//556 pistol
			if(istype(src,/obj/item/prefabs/complex/simpleWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/revolver/thatgun
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else 
			to_chat(usr,"This isn't quite right...")
	if(istype(W, /obj/item/advanced_crafting_components/alloys))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		alloys = W
	if(istype(W, /obj/item/advanced_crafting_components/receiver))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		receiver = W
	if(istype(W, /obj/item/advanced_crafting_components/assembly))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		assembly = W
	if(istype(W, /obj/item/prefabs/complex/action/simple))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		actionsimple = W
	if(istype(W, /obj/item/prefabs/complex/action/auto))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		actionauto = W
	if(istype(W, /obj/item/prefabs/complex/trigger))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		trigger = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m556))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m556barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/mm9))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		mm9barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/mm10))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		mm10barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m357))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m357barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m44))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m44barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m762))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m762barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m4570))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m4570barrel = W
	if(istype(W, /obj/item/prefabs/complex/bolt/simple))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		boltsimple = W
	if(istype(W, /obj/item/prefabs/complex/bolt/high))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		boltadvanced = W
	if(istype(W, /obj/item/prefabs/complex/stock/mid))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		stockplastic = W
	if(istype(W, /obj/item/prefabs/complex/stock/low))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		stockwood = W
	if(istype(W, /obj/item/prefabs/complex/screw))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		screw = W

/obj/item/prefabs/complex/complexWeaponFrame//todo me more recipes

	var/obj/item/prefabs/complex/action/simple/actionsimple
	var/obj/item/prefabs/complex/action/auto/actionauto

	var/obj/item/prefabs/complex/barrel/m556/m556barrel
	var/obj/item/prefabs/complex/barrel/mm10/mm10barrel
	var/obj/item/prefabs/complex/barrel/m357/m357barrel
	var/obj/item/prefabs/complex/barrel/mm9/mm9barrel
	var/obj/item/prefabs/complex/barrel/m44/m44barrel
	var/obj/item/prefabs/complex/barrel/m45/m45barrel
	var/obj/item/prefabs/complex/barrel/m762/m762barrel
	var/obj/item/prefabs/complex/barrel/m4570/m4570barrel

	var/obj/item/prefabs/complex/trigger/trigger

	var/obj/item/prefabs/complex/bolt/simple/boltsimple
	var/obj/item/prefabs/complex/bolt/high/boltadvanced

	var/obj/item/prefabs/complex/stock/mid/stockplastic
	var/obj/item/prefabs/complex/stock/low/stockwood
	var/obj/item/prefabs/complex/screw/screw

	var/obj/item/advanced_crafting_components/alloys/alloys
	var/obj/item/advanced_crafting_components/receiver/receiver
	var/obj/item/advanced_crafting_components/assembly/assembly
	name = "Complex Weapon Frame"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/complexWeaponFrame/attackby(obj/item/W, mob/user, params)//todo me more recipes
	if(istype(W, /obj/item/screwdriver))
		if(src.contents.len > 0)			
			to_chat(usr,"You remove the [src.contents[1]] from the [src].")
			usr.transferItemToLoc(src.contents[1],usr.loc)
		else
			to_chat(usr,"The weapon frame does not contain anything.")
	if(istype(W, /obj/item/wrench))
		if(screw&&trigger&&boltsimple&&actionsimple&&m556barrel&&stockplastic)//service
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/marksman/servicerifle
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/marksman/servicerifle/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/marksman/servicerifle/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionsimple&&m556barrel&&stockwood)//varmint
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionsimple&&m44barrel&&stockwood)//trail carbine
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionauto&&mm9barrel&&stockwood&&receiver)//pps
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/pps
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/pps/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/pps/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionauto&&mm9barrel&&stockplastic&&receiver)//uzi
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/mini_uzi
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/mini_uzi/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/mini_uzi/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionauto&&mm10barrel&&stockplastic&&receiver)//10mmsmg
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/smg10mm
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/smg10mm/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/smg10mm/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltsimple&&actionauto&&m45barrel&&stockplastic&&receiver)//grease gun
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/greasegun
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/greasegun/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/greasegun/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltadvanced&&actionsimple&&m762barrel&&stockplastic&&receiver&&assembly)//rangemaster
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/rangemaster/scoped
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/rangemaster/scoped/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/rangemaster/scoped/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else if(screw&&trigger&&boltadvanced&&actionauto&&m556barrel&&stockplastic&&receiver&&assembly)//assault rifle
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/low))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/assault_rifle
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/mid))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/assault_rifle/mid
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
			if(istype(src,/obj/item/prefabs/complex/complexWeaponFrame/high))
				var/obj/item/B = new /obj/item/gun/ballistic/automatic/assault_rifle/high
				B.forceMove(usr.loc)
				to_chat(usr,"You make a [B]")
				qdel(src)
		else
			to_chat(usr,"This isn't quite right...")
	if(istype(W, /obj/item/advanced_crafting_components/alloys))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		alloys = W
	if(istype(W, /obj/item/advanced_crafting_components/receiver))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		receiver = W
	if(istype(W, /obj/item/advanced_crafting_components/assembly))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		assembly = W
	if(istype(W, /obj/item/prefabs/complex/action/simple))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		actionsimple = W
	if(istype(W, /obj/item/prefabs/complex/action/auto))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		actionauto = W
	if(istype(W, /obj/item/prefabs/complex/trigger))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		trigger = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m556))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m556barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/mm10))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		mm10barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/mm9))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		mm9barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m357))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m357barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m44))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m44barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m762))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m762barrel = W
	if(istype(W, /obj/item/prefabs/complex/barrel/m4570))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		m4570barrel = W
	if(istype(W, /obj/item/prefabs/complex/bolt/simple))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		boltsimple = W
	if(istype(W, /obj/item/prefabs/complex/bolt/high))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		boltadvanced = W
	if(istype(W, /obj/item/prefabs/complex/stock/mid))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		stockplastic = W
	if(istype(W, /obj/item/prefabs/complex/stock/low))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		stockwood = W
	if(istype(W, /obj/item/prefabs/complex/screw))
		usr.transferItemToLoc(W,src)
		to_chat(usr,"You install the [W] into the [src]")
		screw = W

/obj/item/prefabs/complex/simpleWeaponFrame/low
	name = "Simple Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/complexWeaponFrame/low
	name = "Complex Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/simpleWeaponFrame/mid
	name = "Simple Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/mid
	name = "Complex Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/simpleWeaponFrame/high
	name = "Simple Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/high
	name = "Complex Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""

//moulds

/obj/item/prefabs/mould
	name = "Mould"
	desc = ""
	icon_state = "mould"

/obj/item/prefabs/mould/action/simple
	name = "Simple Action Mould"
	desc = ""

/obj/item/prefabs/mould/actionauto
	name = "Automatic Action Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m357
	name = ".357 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/mm10
	name = "10mm Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/mm9
	name = "9mm Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m44
	name = ".44 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m45
	name = ".45 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m4570
	name = ".45-70 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m556
	name = "556 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/barrel/m762
	name = "762 Barrel Mould"
	desc = ""

/obj/item/prefabs/mould/bolt/simple
	name = "Simple Bolt Mould"
	desc = ""

/obj/item/prefabs/mould/bolt/high
	name = "Advanced Bolt Mould"
	desc = ""

/obj/item/prefabs/mould/trigger
	name = "Trigger Mould"
	desc = ""

/obj/item/prefabs/mould/stock
	name = "Stock Mould"
	desc = ""

/obj/item/prefabs/mould/screw
	name = "Screw Mould"
	desc = ""

/obj/item/prefabs/mould/simpleWeaponFrame
	name = "Simple Weapon Frame Mould"
	desc = ""

/obj/item/prefabs/mould/complexWeaponFrame
	name = "Complex Weapon Frame Mould"
	desc = ""

//components
/obj/item/prefabs/complex/action/simple
	name = "Simple Action"
	desc = ""
	icon_state = "action"

/obj/item/prefabs/complex/action/auto
	name = "Automatic Action"
	desc = ""
	icon_state = "action"

/obj/item/prefabs/complex/barrel
	name = "Barrel"
	desc = ""
	icon_state = "barrel"

/obj/item/prefabs/complex/barrel/mm10
	name = "10mm Barrel"
	desc = ""
	icon_state = "barrel"

/obj/item/prefabs/complex/barrel/mm9
	name = "9mm Barrel"
	desc = ""
	icon_state = "barrel"

/obj/item/prefabs/complex/barrel/m357
	name = ".357 Barrel"
	desc = ""

/obj/item/prefabs/complex/barrel/m44
	name = ".44 Barrel"
	desc = ""

/obj/item/prefabs/complex/barrel/m45
	name = ".45 Barrel"
	desc = ""

/obj/item/prefabs/complex/barrel/m4570
	name = ".45-70 Barrel"
	desc = ""

/obj/item/prefabs/complex/barrel/m556
	name = "556 Barrel"
	desc = ""

/obj/item/prefabs/complex/barrel/m762
	name = "762 Barrel"
	desc = ""

/obj/item/prefabs/complex/bolt
	name = "Bolt"
	desc = ""
	icon_state = "bolt"

/obj/item/prefabs/complex/bolt/simple
	name = "Simple Bolt"
	desc = ""
	icon_state = "bolt"

/obj/item/prefabs/complex/bolt/high
	name = "Advanced Bolt"
	desc = ""

/obj/item/prefabs/complex/trigger
	name = "Trigger"
	desc = ""
	icon_state = "trigger"

/obj/item/prefabs/complex/stock
	name = "Stock"
	desc = ""
	icon_state = "stockwood"

/obj/item/prefabs/complex/stock/low
	name = "Wooden Stock"
	desc = ""
	icon_state = "stockwood"

/obj/item/prefabs/complex/stock/mid
	name = "Plastic Stock"
	desc = ""
	icon_state = "stock"

/obj/item/prefabs/complex/screw
	name = "Screw"
	desc = ""
	icon_state = "screw"

//plasma
/obj/item/advanced_crafting_components/flux
	name = "Flux capacitator"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "flux"

//lasers
/obj/item/advanced_crafting_components/lenses
	name = "Focused crystal lenses"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "lenses"

//general energy
/obj/item/advanced_crafting_components/conductors
	name = "Superconductor coil"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "conductor"

//general ballistics
/obj/item/advanced_crafting_components/receiver
	name = "Advanced modular receiver"
	desc = "A ballistic weapon part, a craftsman might want to have this."
	icon_state = "receiver"

//rifles
/obj/item/advanced_crafting_components/assembly
	name = "Pre-war weapon assembly"
	desc = "A ballistic weapon part, a craftsman might want to have this."
	icon_state = "weapon_parts_1"

//general
/obj/item/advanced_crafting_components/alloys
	name = "Superlight alloys"
	desc = "A general crafting part, a craftsman might want to have this."
	icon_state = "alloys"

/obj/item/attachments
    name = "attachment"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "alloys"
    w_class = WEIGHT_CLASS_TINY

/obj/item/attachments/scope
	name = "Weapon Optics"
	desc = "A long-range scope, attach to a compatible weapon. Remove with a screwdriver. Makes the weapon slightly slower to fire."
	icon_state = "scope"

/obj/item/attachments/recoil_decrease
	name = "Recoil Compensator"
	desc = "Improves stability and recoil, attach to a compatible weapon. Cannot be removed."
	icon_state = "recoilcomp"

/obj/item/attachments/bullet_speed
	name = "Improved Barrel"
	desc = "Improves bullet speed, attach to a compatible weapon. Cannot be removed."
	icon_state = "barrel"

/obj/item/attachments/burst_improvement
	name = "Burst Cam"
	desc = "Increases burst size, attach to a compatible weapon. Cannot be removed."
	icon_state = "burstcam"