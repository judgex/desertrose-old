
///////////////////////////////////////////////Alchohol bottles! -Agouri //////////////////////////
//Functionally identical to regular drinks. The only difference is that the default bottle size is 100. - Darem
//Bottles now knockdown and break when smashed on people's heads. - Giacom

/obj/item/reagent_containers/food/drinks/bottle
	amount_per_transfer_from_this = 10
	volume = 100
	throwforce = 15
	item_state = "broken_beer" //Generic held-item sprite until unique ones are made.
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	var/const/duration = 13 //Directly relates to the 'knockdown' duration. Lowered by armor (i.e. helmets)
	isGlass = TRUE
	foodtype = ALCOHOL


/obj/item/reagent_containers/food/drinks/bottle/smash(mob/living/target, mob/thrower, ranged = FALSE)
	//Creates a shattering noise and replaces the bottle with a broken_bottle
	if(bartender_check(target) && ranged)
		return
	var/obj/item/broken_bottle/B = new (loc)
	if(!ranged)
		thrower.put_in_hands(B)
	B.icon_state = icon_state

	var/icon/I = new('icons/obj/drinks.dmi', src.icon_state)
	I.Blend(B.broken_outline, ICON_OVERLAY, rand(5), 1)
	I.SwapColor(rgb(255, 0, 220, 255), rgb(0, 0, 0, 0))
	B.icon = I

	if(isGlass)
		if(prob(33))
			new/obj/item/shard(drop_location())
		playsound(src, "shatter", 70, 1)
	else
		B.force = 0
		B.throwforce = 0
		B.desc = "A carton with the bottom half burst open. Might give you a papercut."
	B.name = "broken [name]"
	transfer_fingerprints_to(B)

	qdel(src)

/obj/item/reagent_containers/food/drinks/bottle/attack(mob/living/target, mob/living/user)

	if(!target)
		return

	if(user.a_intent != INTENT_HARM || !isGlass)
		return ..()

	if(user.has_trait(TRAIT_PACIFISM))
		to_chat(user, "<span class='warning'>You don't want to harm [target]!</span>")
		return

	force = 15 //Smashing bottles over someoen's head hurts.

	var/obj/item/bodypart/affecting = user.zone_selected //Find what the player is aiming at

	var/armor_block = 0 //Get the target's armor values for normal attack damage.
	var/armor_duration = 0 //The more force the bottle has, the longer the duration.

	//Calculating duration and calculating damage.
	if(ishuman(target))

		var/mob/living/carbon/human/H = target
		var/headarmor = 0 // Target's head armor
		armor_block = H.run_armor_check(affecting, "melee","","",armour_penetration) // For normal attack damage

		//If they have a hat/helmet and the user is targeting their head.
		if(istype(H.head, /obj/item/clothing/head) && affecting == BODY_ZONE_HEAD)
			headarmor = H.head.armor.melee
		else
			headarmor = 0

		//Calculate the knockdown duration for the target.
		armor_duration = (duration - headarmor) + force

	else
		//Only humans can have armor, right?
		armor_block = target.run_armor_check(affecting, "melee")
		if(affecting == BODY_ZONE_HEAD)
			armor_duration = duration + force

	//Apply the damage!
	armor_block = min(90,armor_block)
	target.apply_damage(force, BRUTE, affecting, armor_block)

	// You are going to knock someone out for longer if they are not wearing a helmet.
	var/head_attack_message = ""
	if(affecting == BODY_ZONE_HEAD && istype(target, /mob/living/carbon/))
		head_attack_message = " on the head"
		//Knockdown the target for the duration that we calculated and divide it by 5.
		if(armor_duration)
			target.apply_effect(min(armor_duration, 200) , EFFECT_KNOCKDOWN) // Never knockdown more than a flash!

	//Display an attack message.
	if(target != user)
		target.visible_message("<span class='danger'>[user] has hit [target][head_attack_message] with a bottle of [src.name]!</span>", \
				"<span class='userdanger'>[user] has hit [target][head_attack_message] with a bottle of [src.name]!</span>")
	else
		user.visible_message("<span class='danger'>[target] hits [target.p_them()]self with a bottle of [src.name][head_attack_message]!</span>", \
				"<span class='userdanger'>[target] hits [target.p_them()]self with a bottle of [src.name][head_attack_message]!</span>")

	//Attack logs
	add_logs(user, target, "attacked", src)

	//The reagents in the bottle splash all over the target, thanks for the idea Nodrak
	SplashReagents(target)

	//Finally, smash the bottle. This kills (del) the bottle.
	smash(target, user)

	return

//Keeping this here for now, I'll ask if I should keep it here.
/obj/item/broken_bottle
	name = "broken bottle"
	desc = "A bottle with a sharp broken bottom."
	icon = 'icons/obj/drinks.dmi'
	icon_state = "broken_bottle"
	force = 9
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	w_class = WEIGHT_CLASS_TINY
	item_state = "beer"
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("stabbed", "slashed", "attacked")
	var/icon/broken_outline = icon('icons/obj/drinks.dmi', "broken")
	sharpness = IS_SHARP

/obj/item/broken_bottle/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 200, 55)

/obj/item/reagent_containers/food/drinks/bottle/gin
	name = "toxic gin"
	desc = "A faded pre-war bottle of fermented berry gin."
	icon_state = "ginbottle"
	list_reagents = list("gin" = 100)

/obj/item/reagent_containers/food/drinks/bottle/whiskey
	name = "Uncle Sam's special reserve"
	desc = "A premium faded pre-war bottle of /AMERICAN/ single-malt whiskey."
	icon_state = "whiskeybottle"
	list_reagents = list("whiskey" = 100)

/obj/item/reagent_containers/food/drinks/bottle/vodka
	name = "surkov vodka"
	desc = "A imported faded bottle of pre-war russian vodka. A scratched label states - Made in the Soviet union."
	icon_state = "vodkabottle"
	list_reagents = list("vodka" = 100)

/obj/item/reagent_containers/food/drinks/bottle/vodka/badminka
	name = "Badminka vodka"
	desc = "The label's written in Cyrillic. All you can make out is the name and a word that looks vaguely like 'Vodka'."
	icon_state = "badminka"
	list_reagents = list("vodka" = 100)

/obj/item/reagent_containers/food/drinks/bottle/tequila
	name = "tick blood tequila"
	desc = "A faded pre-war bottle of a distilled beverage, Allegedly made from agave brewed using tick blood and pure crimson flux."
	icon_state = "tequilabottle"
	list_reagents = list("tequila" = 100)

/obj/item/reagent_containers/food/drinks/bottle/bottleofnothing
	name = "bottle of nothing"
	desc = "A bottle filled with nothing."
	icon_state = "bottleofnothing"
	list_reagents = list("nothing" = 100)
	foodtype = NONE

/obj/item/reagent_containers/food/drinks/bottle/patron
	name = "Wrapp Artiste Patron"
	desc = "Silver laced tequila, served in space night clubs across the region."
	icon_state = "patronbottle"
	list_reagents = list("patron" = 100)

/obj/item/reagent_containers/food/drinks/bottle/rum
	name = "roentgen rum"
	desc = "A faded pre-war bottle of rum. The insides seem to be glowing slightly."
	icon_state = "rumbottle"
	list_reagents = list("rum" = 90, "radium" = 10)

/obj/item/reagent_containers/food/drinks/bottle/holywater
	name = "flask of holy water"
	desc = "A flask of the chaplain's holy water."
	icon_state = "holyflask"
	list_reagents = list("holywater" = 100)
	foodtype = NONE

/obj/item/reagent_containers/food/drinks/bottle/holywater/hell
	desc = "A flask of holy water...it's been sitting in the Necropolis a while though."
	list_reagents = list("hell_water" = 100)

/obj/item/reagent_containers/food/drinks/bottle/vermouth
	name = "lead champagne"
	desc = "A faded pre-war bottle of de-toxifying, tarberry champagne."
	icon_state = "vermouthbottle"
	list_reagents = list("champagne" = 90, "potass_iodide" = 10)

/obj/item/reagent_containers/food/drinks/bottle/kahlua
	name = "Coffee liqueur"
	desc = "A widely known, Mexican coffee-flavoured liqueur. In production since 1936."
	icon_state = "kahluabottle"
	list_reagents = list("kahlua" = 100)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/drinks/bottle/goldschlager
	name = "College Girl goldschlager"
	desc = "Because they are the only ones who will drink 100 proof cinnamon schnapps."
	icon_state = "goldschlagerbottle"
	list_reagents = list("goldschlager" = 100)

/obj/item/reagent_containers/food/drinks/bottle/cognac
	name = "chateau de baton"
	desc = "A faded pre-war bottle of a sweet smelling spirit. A warped label on the side claims - Matured for 50 Years!"
	icon_state = "cognacbottle"
	list_reagents = list("cognac" = 100)

/obj/item/reagent_containers/food/drinks/bottle/wine
	name = "atomic claret wine"
	desc = "A faded pre-war bottle of a particularily good vintage."
	icon_state = "winebottle"
	list_reagents = list("wine" = 100)
	foodtype = FRUIT | ALCOHOL

/obj/item/reagent_containers/food/drinks/bottle/absinthe
	name = "wormwood absinthe"
	desc = "An faded bright green bottle of wormwood mash spirit."
	icon_state = "absinthebottle"
	list_reagents = list("absinthe" = 100)

/obj/item/reagent_containers/food/drinks/bottle/absinthe/premium
	name = "Gwyn's premium absinthe"
	desc = "A potent alcoholic beverage, almost makes you forget the ash in your lungs."
	icon_state = "absinthepremium"

/obj/item/reagent_containers/food/drinks/bottle/lizardwine
	name = "chateau montrose"
	desc = "A faded pre-war bottled alcoholic beverage from what was once Europe."
	icon_state = "lizardwine"
	list_reagents = list("wine" = 100)
	foodtype = FRUIT | ALCOHOL

/obj/item/reagent_containers/food/drinks/bottle/hcider
	name = "hard yucca cider"
	desc = "A small faded pre-war bottle of yellowish liquid. Smells sweet."
	icon_state = "hcider"
	volume = 50
	list_reagents = list("hcider" = 50)

/obj/item/reagent_containers/food/drinks/bottle/grappa
	name = "chateau lafayette"
	desc = "A faded pre-war bottled alcoholic beverage from what was once Europe. This one has a citric scent."
	icon_state = "grappabottle"
	list_reagents = list("grappa" = 100)

/obj/item/reagent_containers/food/drinks/bottle/sake
	name = "surkov sake"
	desc = "A faded pre-war bottle of spirit. The faded symbol is unreadable."
	icon_state = "sakebottle"
	list_reagents = list("sake" = 100)

/obj/item/reagent_containers/food/drinks/bottle/fernet
	name = "gamma gulp beer"
	desc = "A small pre-war faded bottle of spiced glowing beer."
	volume = 50
	icon_state = "fernetbottle"
	list_reagents = list("fernet" = 50)

//////////////////////////JUICES AND STUFF ///////////////////////

/obj/item/reagent_containers/food/drinks/bottle/orangejuice
	name = "orange juice"
	desc = "Full of vitamins and deliciousness!"
	icon_state = "orangejuice"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list("orangejuice" = 100)
	foodtype = FRUIT

/obj/item/reagent_containers/food/drinks/bottle/cream
	name = "canned cream"
	desc = "It's a can of cream. Made from milk. What else did you think you'd find in there?"
	icon_state = "cream"
	item_state = "carton"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = FALSE
	list_reagents = list("cream" = 100)
	foodtype = DAIRY

/obj/item/reagent_containers/food/drinks/bottle/tomatojuice
	name = "tomato juice"
	desc = "Well, at least it LOOKS like tomato juice. You can't tell with all that redness."
	icon_state = "tomatojuice"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list("tomatojuice" = 100)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/drinks/bottle/limejuice
	name = "lime juice"
	desc = "Sweet-sour goodness."
	icon_state = "limejuice"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list("limejuice" = 100)
	foodtype = FRUIT

/obj/item/reagent_containers/food/drinks/bottle/menthol
	name = "menthol"
	desc = "Tastes naturally minty, and imparts a very mild numbing sensation."
	icon_state = "mentholbox"
	item_state = "carton"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list("menthol" = 100)

/obj/item/reagent_containers/food/drinks/bottle/instacoffee
	name = "Silician Instacoffee"
	desc = "Pre-war powerdered canned coffee."
	icon_state = "instacoffee"
	list_reagents = list("coffeepowder" = 98, "radium" = 2)

/obj/item/reagent_containers/food/drinks/bottle/instatea
	name = "Silician Instatea"
	desc = "Pre-war powerdered canned tea powder."
	icon_state = "instatea"
	list_reagents = list("teapowder" = 98, "radium" = 2)

/obj/item/reagent_containers/food/drinks/bottle/instacocoa
	name = "Silician Instacocoa"
	desc = "Pre-war powerdered canned dried chocolate mix."
	icon_state = "instachoc"
	list_reagents = list("cocoa" = 98, "radium" = 2)

/obj/item/reagent_containers/food/drinks/bottle/grenadine
	name = "Jester Grenadine"
	desc = "Contains 0% real cherries!"
	icon_state = "grenadine"
	isGlass = TRUE
	list_reagents = list("grenadine" = 100)
	foodtype = FRUIT

/obj/item/reagent_containers/food/drinks/bottle/lemonjuice
	name = "lemon juice"
	desc = "Whew! Thats some sour pre-war lemon juice! You know what they say about..."
	icon_state = "lemonjuice"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	isGlass = TRUE
	list_reagents = list("limejuice" = 100)
	foodtype = FRUIT

////////////////////////// MOLOTOV ///////////////////////
/obj/item/reagent_containers/food/drinks/bottle/molotov
	name = "molotov cocktail"
	desc = "A throwing weapon used to ignite things, typically filled with an accelerant. Recommended highly by rioters and revolutionaries. Light and toss."
	icon_state = "vodkabottle"
	list_reagents = list()
	var/list/accelerants = list(	/datum/reagent/consumable/ethanol, /datum/reagent/fuel, /datum/reagent/clf3, /datum/reagent/phlogiston,
							/datum/reagent/napalm, /datum/reagent/hellwater, /datum/reagent/toxin/plasma, /datum/reagent/toxin/spore_burning)
	var/active = 0

/obj/item/reagent_containers/food/drinks/bottle/molotov/CheckParts(list/parts_list)
	..()
	var/obj/item/reagent_containers/food/drinks/bottle/B = locate() in contents
	if(B)
		icon_state = B.icon_state
		B.reagents.copy_to(src,100)
		if(!B.isGlass)
			desc += " You're not sure if making this out of a carton was the brightest idea."
			isGlass = FALSE
	return

/obj/item/reagent_containers/food/drinks/bottle/molotov/throw_impact(atom/target,datum/thrownthing/throwdata)
	var/firestarter = 0
	for(var/datum/reagent/R in reagents.reagent_list)
		for(var/A in accelerants)
			if(istype(R,A))
				firestarter = 1
				break
	if(firestarter && active)
		target.fire_act()
		new /obj/effect/hotspot(get_turf(target))
	..()

/obj/item/reagent_containers/food/drinks/bottle/molotov/attackby(obj/item/I, mob/user, params)
	if(I.is_hot() && !active)
		active = 1
		var/message = "[ADMIN_LOOKUP(user)] has primed a [name] for detonation at [ADMIN_VERBOSEJMP(user)]."
		GLOB.bombers += message
		message_admins(message)
		log_game("[key_name(user)] has primed a [name] for detonation at [AREACOORD(user)].")

		to_chat(user, "<span class='info'>You light [src] on fire. You're not sure this was a good idea.</span>")
		add_overlay(GLOB.fire_overlay)

		spawn(rand(10,50)) //Throw. And pray.
			if(active)
				var/counter
				var/target = src.loc
				for(counter = 0, counter<2, counter++)
					if(istype(target, /obj/item/storage))
						var/obj/item/storage/S = target
						target = S.loc
				if(istype(target, /atom))
					var/atom/A = target
					SplashReagents(A)
					A.fire_act()
					visible_message("<span class='danger'>The molotov cocktail explodes!</span>")
				qdel(src)

/obj/item/reagent_containers/food/drinks/bottle/molotov/attack_self(mob/user)
	if(active)
		if(!isGlass)
			to_chat(user, "<span class='danger'>The flame's spread too far on it!</span>")
			return
		to_chat(user, "<span class='info'>You snuff out the flame on [src].</span>")
		cut_overlay(GLOB.fire_overlay)
		active = 0