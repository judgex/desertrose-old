//////////////////////////////////////////////////
///////////// DR FOOD COMPILATION //////////////// 
//////////////////////////////////////////////////

//////////////////////////////////////////////////
/////////////////// BURGER /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/burger
	filling_color = "#CD853F"
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "hburger"
	bitesize = 3
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	tastes = list("bun" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/plain
	name = "burger"
	desc = "The cornerstone of every nutritious breakfast."
	bonus_reagents = list("vitamin" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/plain/Initialize()
	. = ..()
	if(prob(1))
		new/obj/effect/particle_effect/smoke(get_turf(src))
		playsound(src, 'sound/effects/smoke.ogg', 50, TRUE)
		visible_message("<span class='warning'>Oh, ye gods! [src] is ruined! But what if...?</span>")
		name = "steamed ham"
		desc = pick("Ahh, Head of Personnel, welcome. I hope you're prepared for an unforgettable luncheon!",
		"And you call these steamed hams despite the fact that they are obviously microwaved?",
		"Aurora Station 13? At this time of shift, in this time of year, in this sector of space, localized entirely within your freezer?",
		"You know, these hamburgers taste quite similar to the ones they have at the Maltese Falcon.")
		tastes = list("fast food hamburger" = 1)

/obj/item/reagent_containers/food/snacks/burger/human
	var/subjectname = ""
	var/subjectjob = null
	name = "human burger"
	desc = "A bloody burger."
	bonus_reagents = list("vitamin" = 4)
	foodtype = MEAT | GRAIN | GROSS

/obj/item/reagent_containers/food/snacks/burger/human/CheckParts(list/parts_list)
	..()
	var/obj/item/reagent_containers/food/snacks/meat/M = locate(/obj/item/reagent_containers/food/snacks/meat/steak/plain/human) in contents
	if(M)
		subjectname = M.subjectname
		subjectjob = M.subjectjob
		if(subjectname)
			name = "[subjectname] burger"
		else if(subjectjob)
			name = "[subjectjob] burger"
		qdel(M)


/obj/item/reagent_containers/food/snacks/burger/corgi
	name = "corgi burger"
	desc = "You monster."
	bonus_reagents = list("vitamin" = 1)
	foodtype = GRAIN | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/burger/appendix
	name = "appendix burger"
	desc = "Tastes like appendicitis."
	bonus_reagents = list("nutriment" = 6, "vitamin" = 6)
	icon_state = "appendixburger"
	tastes = list("bun" = 4, "grass" = 2)
	foodtype = GRAIN | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/burger/fish
	name = "fillet -o- carp sandwich"
	desc = "Almost like a carp is yelling somewhere... Give me back that fillet -o- carp, give me that carp."
	icon_state = "fishburger"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	tastes = list("bun" = 4, "fish" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/tofu
	name = "tofu burger"
	desc = "What.. is that meat?"
	icon_state = "tofuburger"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	tastes = list("bun" = 4, "tofu" = 4)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/burger/roburger
	name = "roburger"
	desc = "The lettuce is the only organic component. Beep."
	icon_state = "roburger"
	bonus_reagents = list("nutriment" = 2, "nanomachines" = 2, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "nanomachines" = 5, "vitamin" = 1)
	tastes = list("bun" = 4, "lettuce" = 2, "sludge" = 1)
	foodtype = GRAIN | TOXIC

/obj/item/reagent_containers/food/snacks/burger/roburgerbig
	name = "roburger"
	desc = "This massive patty looks like poison. Beep."
	icon_state = "roburger"
	volume = 120
	bonus_reagents = list("nutriment" = 5, "nanomachines" = 70, "vitamin" = 10)
	list_reagents = list("nutriment" = 6, "nanomachines" = 70, "vitamin" = 5)
	tastes = list("bun" = 4, "lettuce" = 2, "sludge" = 1)
	foodtype = GRAIN | TOXIC

/obj/item/reagent_containers/food/snacks/burger/xeno
	name = "mutant burger"
	desc = "Smells caustic. Tastes like mutation."
	icon_state = "xburger"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 6)
	tastes = list("bun" = 4, "acid" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/bearger
	name = "bearger"
	desc = "Best served rawr."
	icon_state = "bearger"
	bonus_reagents = list("nutriment" = 3, "vitamin" = 6)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/clown
	name = "clown burger"
	desc = "This tastes funny..."
	icon_state = "clownburger"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 6, "banana" = 6)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/burger/mime
	name = "mime burger"
	desc = "Its taste defies language."
	icon_state = "mimeburger"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 6, "nothing" = 6)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/burger/brain
	name = "brainburger"
	desc = "A strange looking burger. It looks almost sentient."
	icon_state = "brainburger"
	bonus_reagents = list("nutriment" = 6, "mannitol" = 6, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "mannitol" = 5, "vitamin" = 1)
	tastes = list("bun" = 4, "brains" = 2)
	foodtype = GRAIN | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/burger/ghost
	name = "ghost burger"
	desc = "Too Spooky!"
	alpha = 125
	bonus_reagents = list("nutriment" = 5, "vitamin" = 12)
	tastes = list("bun" = 4, "ectoplasm" = 2)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/burger/red
	name = "red burger"
	desc = "Perfect for hiding the fact it's burnt to a crisp."
	icon_state = "cburger"
	color = "#DA0000FF"
	bonus_reagents = list("redcrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/orange
	name = "orange burger"
	desc = "Contains 0% juice."
	icon_state = "cburger"
	color = "#FF9300FF"
	bonus_reagents = list("orangecrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/yellow
	name = "yellow burger"
	desc = "Bright to the last bite."
	icon_state = "cburger"
	color = "#FFF200FF"
	bonus_reagents = list("yellowcrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/green
	name = "green burger"
	desc = "It's not tainted meat, it's painted meat!"
	icon_state = "cburger"
	color = "#A8E61DFF"
	bonus_reagents = list("greencrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/blue
	name = "blue burger"
	desc = "Is this blue rare?"
	icon_state = "cburger"
	color = "#00B7EFFF"
	bonus_reagents = list("bluecrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/purple
	name = "purple burger"
	desc = "Regal and low class at the same time."
	icon_state = "cburger"
	color = "#DA00FFFF"
	bonus_reagents = list("purplecrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/black
	name = "black burger"
	desc = "This is overcooked."
	icon_state = "cburger"
	color = "#1C1C1C"
	bonus_reagents = list("blackcrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/white
	name = "white burger"
	desc = "Delicous Titanium!"
	icon_state = "cburger"
	color = "#FFFFFF"
	bonus_reagents = list("whitecrayonpowder" = 10, "vitamin" = 5)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/spell
	name = "spell burger"
	desc = "This is absolutely Ei Nath."
	icon_state = "spellburger"
	bonus_reagents = list("nutriment" = 6, "vitamin" = 10)
	tastes = list("bun" = 4, "magic" = 2)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/bigbite
	name = "big bite burger"
	desc = "Forget the Big Mac. THIS is the future!"
	icon_state = "bigbiteburger"
	bonus_reagents = list("vitamin" = 6)
	list_reagents = list("nutriment" = 10, "vitamin" = 2)
	w_class = WEIGHT_CLASS_NORMAL
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/jelly
	name = "jelly burger"
	desc = "Culinary delight..?"
	icon_state = "jellyburger"
	tastes = list("bun" = 4, "jelly" = 2)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/jelly/slime
	bonus_reagents = list("slimejelly" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "slimejelly" = 5, "vitamin" = 1)
	foodtype = GRAIN | TOXIC

/obj/item/reagent_containers/food/snacks/burger/jelly/cherry
	bonus_reagents = list("cherryjelly" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "cherryjelly" = 5, "vitamin" = 1)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/burger/superbite
	name = "super bite burger"
	desc = "This is a mountain of a burger. FOOD!"
	icon_state = "superbiteburger"
	bonus_reagents = list("vitamin" = 10)
	list_reagents = list("nutriment" = 40, "vitamin" = 5)
	w_class = WEIGHT_CLASS_NORMAL
	bitesize = 7
	volume = 100
	tastes = list("bun" = 4, "type two diabetes" = 10)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/fivealarm
	name = "five alarm burger"
	desc = "HOT! HOT!"
	icon_state = "fivealarmburger"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "capsaicin" = 5, "condensedcapsaicin" = 5, "vitamin" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/burger/rat
	name = "rat burger"
	desc = "Pretty much what you'd expect..."
	icon_state = "ratburger"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	foodtype = GRAIN | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/burger/baseball
	name = "home run baseball burger"
	desc = "It's still warm. The steam coming off of it looks like baseball."
	icon_state = "baseball"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	foodtype = GRAIN | GROSS

/obj/item/reagent_containers/food/snacks/burger/baconburger
	name = "bacon burger"
	desc = "The perfect combination of all things American."
	icon_state = "baconburger"
	bonus_reagents = list("nutriment" = 8, "vitamin" = 1)
	tastes = list("bun" = 4, "bacon" = 2)
	foodtype = GRAIN | MEAT

//////////////////////////////////////////////////
/////////////////// BREAD /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/store/bread
	icon = 'icons/obj/food/burgerbread.dmi'
	volume = 80
	slices_num = 5
	tastes = list("bread" = 10)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/breadslice
	icon = 'icons/obj/food/burgerbread.dmi'
	bitesize = 2
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/sandwich
	filling_color = "#FFA500"
	list_reagents = list("nutriment" = 2)
	slot_flags = ITEM_SLOT_HEAD
	customfoodfilling = 0 //to avoid infinite bread-ception
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/store/bread/plain
	name = "bread"
	desc = "Some plain old bread."
	icon_state = "bread"
	bonus_reagents = list("nutriment" = 7)
	list_reagents = list("nutriment" = 10)
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/bread
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/plain
	tastes = list("bread" = 10)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/breadslice/plain
	name = "bread slice"
	desc = "A slice of home."
	icon_state = "breadslice"
	customfoodfilling = 1
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/store/bread/meat
	name = "meatbread loaf"
	desc = "The culinary base of every self-respecting sandwich."
	icon_state = "meatbread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/meat
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10)
	list_reagents = list("nutriment" = 30, "vitamin" = 5)
	tastes = list("bread" = 10, "meat" = 10)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/breadslice/meat
	name = "meatbread slice"
	desc = "A slice of delicious meatbread."
	icon_state = "meatbreadslice"
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/store/bread/xenomeat
	name = "mutant meatloaf"
	desc = "The culinary base of every self-respecting sandwich. Extra mutated."
	icon_state = "xenomeatbread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/xenomeat
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10)
	list_reagents = list("nutriment" = 30, "vitamin" = 5)
	tastes = list("bread" = 10, "acid" = 10)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/breadslice/xenomeat
	name = "mutant meatloaf slice"
	desc = "A slice of delicious meatbread. Extra mutated."
	icon_state = "xenobreadslice"
	filling_color = "#32CD32"
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/store/bread/spidermeat
	name = "spider meatloaf"
	desc = "Reassuringly green meatloaf made from spider meat."
	icon_state = "spidermeatbread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/spidermeat
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10)
	list_reagents = list("nutriment" = 30, "toxin" = 15, "vitamin" = 5)
	tastes = list("bread" = 10, "cobwebs" = 5)
	foodtype = GRAIN | MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/breadslice/spidermeat
	name = "spider meatloaf slice"
	desc = "A slice of meatloaf made from an animal that most likely still wants you dead."
	icon_state = "xenobreadslice"
	filling_color = "#7CFC00"
	list_reagents = list("nutriment" = 6, "toxin" = 3, "vitamin" = 1)
	foodtype = GRAIN | MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/store/bread/banana
	name = "banana-nut bread"
	desc = "A heavenly and filling treat."
	icon_state = "bananabread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/banana
	bonus_reagents = list("nutriment" = 5, "banana" = 20)
	list_reagents = list("nutriment" = 20, "banana" = 20)
	tastes = list("bread" = 10) // bananjuice will also flavour
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/breadslice/banana
	name = "banana-nut bread slice"
	desc = "A slice of delicious banana bread."
	icon_state = "bananabreadslice"
	filling_color = "#FFD700"
	list_reagents = list("nutriment" = 4, "banana" = 4)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/store/bread/tofu
	name = "Tofubread"
	desc = "Like meatloaf but for vegetarians."
	icon_state = "tofubread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/tofu
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10)
	list_reagents = list("nutriment" = 20, "vitamin" = 5)
	tastes = list("bread" = 10, "tofu" = 10)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/breadslice/tofu
	name = "tofubread slice"
	desc = "A slice of delicious tofubread."
	icon_state = "tofubreadslice"
	filling_color = "#FF8C00"
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/store/bread/creamcheese
	name = "cream cheese bread"
	desc = "Yum yum yum!"
	icon_state = "creamcheesebread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/creamcheese
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 20, "vitamin" = 5)
	tastes = list("bread" = 10, "cheese" = 10)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/breadslice/creamcheese
	name = "cream cheese bread slice"
	desc = "A slice of yum!"
	icon_state = "creamcheesebreadslice"
	filling_color = "#FF8C00"
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/store/bread/mimana
	name = "mimana bread"
	desc = "Best eaten in silence."
	icon_state = "mimanabread"
	slice_path = /obj/item/reagent_containers/food/snacks/breadslice/mimana
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 20, "mutetoxin" = 5, "nothing" = 5, "vitamin" = 5)
	tastes = list("bread" = 10, "silence" = 10)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/breadslice/mimana
	name = "mimana bread slice"
	desc = "A slice of silence!"
	icon_state = "mimanabreadslice"
	filling_color = "#C0C0C0"
	list_reagents = list("nutriment" = 2, "mutetoxin" = 1, "nothing" = 1, "vitamin" = 1)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/breadslice/custom
	name = "bread slice"
	icon_state = "tofubreadslice"
	filling_color = "#FFFFFF"
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/baguette
	name = "baguette"
	desc = "Bon appetit!"
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "baguette"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	bitesize = 3
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("bread" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/butteredtoast
	name = "buttered toast"
	desc = "Butter lightly spread over a piece of toast."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "butteredtoast"
	bitesize = 3
	filling_color = "#FFA500"
	list_reagents = list("nutriment" = 4)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	tastes = list("butter" = 1, "toast" = 1)

/obj/item/reagent_containers/food/snacks/butterbiscuit
	name = "butter biscuit"
	desc = "Well butter my biscuit!"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "butterbiscuit"
	filling_color = "#F0E68C"
	list_reagents = list("nutriment" = 5)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	tastes = list("butter" = 1, "biscuit" = 1)

/obj/item/reagent_containers/food/snacks/butterdog
	name = "butterdog"
	desc = "Made from exotic butters."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "butterdog"
	bitesize = 1
	filling_color = "#F1F49A"
	list_reagents = list("nutriment" = 5)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	tastes = list("butter", "exotic butter")

//////////////////////////////////////////////////
/////////////////// CAKE /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/store/cake
	icon = 'icons/obj/food/piecake.dmi'
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/plain
	slices_num = 5
	bitesize = 3
	volume = 80
	list_reagents = list("nutriment" = 20, "vitamin" = 5)
	tastes = list("cake" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/cakeslice
	icon = 'icons/obj/food/piecake.dmi'
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	customfoodfilling = 0 //to avoid infinite cake-ception
	tastes = list("cake" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/store/cake/plain
	name = "vanilla cake"
	desc = "A plain cake, not a lie."
	icon_state = "plaincake"
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/cake
	bonus_reagents = list("nutriment" = 10, "vitamin" = 2)
	tastes = list("vanilla" = 1, "sweetness" = 2,"cake" = 5)
	foodtype = GRAIN | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/plain
	name = "vanilla cake slice"
	desc = "Just a slice of cake, it is enough for everyone."
	icon_state = "plaincake_slice"
	filling_color = "#FFD700"
	customfoodfilling = 1
	tastes = list("vanilla" = 1, "sweetness" = 2,"cake" = 5)
	foodtype = GRAIN | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/carrot
	name = "carrot cake"
	desc = "A favorite desert of a certain wascally wabbit. Not a lie."
	icon_state = "carrotcake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/carrot
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "oculine" = 5, "vitamin" = 10)
	list_reagents = list("nutriment" = 20, "oculine" = 10, "vitamin" = 5)
	tastes = list("cake" = 5, "sweetness" = 2, "carrot" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/carrot
	name = "carrot cake slice"
	desc = "Carrotty slice of Carrot Cake, carrots are good for your eyes! Also not a lie."
	icon_state = "carrotcake_slice"
	filling_color = "#FFA500"
	list_reagents = list("nutriment" = 4, "oculine" = 2, "vitamin" = 1)
	tastes = list("cake" = 5, "sweetness" = 2, "carrot" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES | SUGAR


/obj/item/reagent_containers/food/snacks/store/cake/brain
	name = "brain cake"
	desc = "A squishy cake-thing."
	icon_state = "braincake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/brain
	slices_num = 5
	bonus_reagents = list("nutriment" = 5, "mannitol" = 10, "vitamin" = 10)
	list_reagents = list("nutriment" = 20, "mannitol" = 10, "vitamin" = 5)
	tastes = list("cake" = 5, "sweetness" = 2, "brains" = 1)
	foodtype = GRAIN | DAIRY | MEAT | GROSS | SUGAR


/obj/item/reagent_containers/food/snacks/cakeslice/brain
	name = "brain cake slice"
	desc = "Lemme tell you something about prions. THEY'RE DELICIOUS."
	icon_state = "braincakeslice"
	filling_color = "#FF69B4"
	list_reagents = list("nutriment" = 4, "mannitol" = 2, "vitamin" = 1)
	tastes = list("cake" = 5, "sweetness" = 2, "brains" = 1)
	foodtype = GRAIN | DAIRY | MEAT | GROSS | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/cheese
	name = "cheese cake"
	desc = "DANGEROUSLY cheesy."
	icon_state = "cheesecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/cheese
	slices_num = 5
	bonus_reagents = list("vitamin" = 10)
	tastes = list("cake" = 4, "cream cheese" = 3)
	foodtype = GRAIN | DAIRY


/obj/item/reagent_containers/food/snacks/cakeslice/cheese
	name = "cheese cake slice"
	desc = "Slice of pure cheestisfaction."
	icon_state = "cheesecake_slice"
	filling_color = "#FFFACD"
	tastes = list("cake" = 4, "cream cheese" = 3)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/store/cake/orange
	name = "orange cake"
	desc = "A cake with added orange."
	icon_state = "orangecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/orange
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 10)
	tastes = list("cake" = 5, "sweetness" = 2, "oranges" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/orange
	name = "orange cake slice"
	desc = "Just a slice of cake, it is enough for everyone."
	icon_state = "orangecake_slice"
	filling_color = "#FFA500"
	tastes = list("cake" = 5, "sweetness" = 2, "oranges" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/lime
	name = "lime cake"
	desc = "A cake with added lime."
	icon_state = "limecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/lime
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 10)
	tastes = list("cake" = 5, "sweetness" = 2, "unbearable sourness" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/lime
	name = "lime cake slice"
	desc = "Just a slice of cake, it is enough for everyone."
	icon_state = "limecake_slice"
	filling_color = "#00FF00"
	tastes = list("cake" = 5, "sweetness" = 2, "unbearable sourness" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/lemon
	name = "lemon cake"
	desc = "A cake with added lemon."
	icon_state = "lemoncake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/lemon
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 10)
	tastes = list("cake" = 5, "sweetness" = 2, "sourness" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/lemon
	name = "lemon cake slice"
	desc = "Just a slice of cake, it is enough for everyone."
	icon_state = "lemoncake_slice"
	filling_color = "#FFEE00"
	tastes = list("cake" = 5, "sweetness" = 2, "sourness" = 2)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/chocolate
	name = "chocolate cake"
	desc = "A cake with added chocolate."
	icon_state = "chocolatecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/chocolate
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 10)
	tastes = list("cake" = 5, "sweetness" = 1, "chocolate" = 4)
	foodtype = GRAIN | DAIRY | JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/chocolate
	name = "chocolate cake slice"
	desc = "Just a slice of cake, it is enough for everyone."
	icon_state = "chocolatecake_slice"
	filling_color = "#A0522D"
	tastes = list("cake" = 5, "sweetness" = 1, "chocolate" = 4)
	foodtype = GRAIN | DAIRY | JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/birthday
	name = "birthday cake"
	desc = "Happy Birthday little clown..."
	icon_state = "birthdaycake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/birthday
	slices_num = 5
	bonus_reagents = list("nutriment" = 7, "sprinkles" = 10, "vitamin" = 5)
	list_reagents = list("nutriment" = 20, "sprinkles" = 10, "vitamin" = 5)
	tastes = list("cake" = 5, "sweetness" = 1)
	foodtype = GRAIN | DAIRY | JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/birthday
	name = "birthday cake slice"
	desc = "A slice of your birthday."
	icon_state = "birthdaycakeslice"
	filling_color = "#DC143C"
	list_reagents = list("nutriment" = 4, "sprinkles" = 2, "vitamin" = 1)
	tastes = list("cake" = 5, "sweetness" = 1)
	foodtype = GRAIN | DAIRY | JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/apple
	name = "apple cake"
	desc = "A cake centred with Apple."
	icon_state = "applecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/apple
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 10)
	tastes = list("cake" = 5, "sweetness" = 1, "apple" = 1)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/apple
	name = "apple cake slice"
	desc = "A slice of heavenly cake."
	icon_state = "applecakeslice"
	filling_color = "#FF4500"
	tastes = list("cake" = 5, "sweetness" = 1, "apple" = 1)
	foodtype = GRAIN | DAIRY | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/custom
	name = "cake slice"
	icon_state = "plaincake_slice"
	filling_color = "#FFFFFF"
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/store/cake/slimecake
	name = "Slime cake"
	desc = "A cake made of slimes. Probably not electrified."
	icon_state = "slimecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/slimecake
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	tastes = list("cake" = 5, "sweetness" = 1, "slime" = 1)
	foodtype = GRAIN | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/slimecake
	name = "slime cake slice"
	desc = "A slice of slime cake."
	icon_state = "slimecake_slice"
	filling_color = "#00FFFF"
	tastes = list("cake" = 5, "sweetness" = 1, "slime" = 1)
	foodtype = GRAIN | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/store/cake/pumpkinspice
	name = "pumpkin spice cake"
	desc = "A hollow cake with real pumpkin."
	icon_state = "pumpkinspicecake"
	slice_path = /obj/item/reagent_containers/food/snacks/cakeslice/pumpkinspice
	bonus_reagents = list("nutriment" = 3, "vitamin" = 5)
	tastes = list("cake" = 5, "sweetness" = 1, "pumpkin" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/cakeslice/pumpkinspice
	name = "pumpkin spice cake slice"
	desc = "A spicy slice of pumpkin goodness."
	icon_state = "pumpkinspicecakeslice"
	filling_color = "#FFD700"
	tastes = list("cake" = 5, "sweetness" = 1, "pumpkin" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES | SUGAR

//////////////////////////////////////////////////
/////////////////// EGG /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/chocolateegg
	name = "chocolate egg"
	desc = "Such, sweet, fattening food."
	icon_state = "chocolateegg"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 4, "sugar" = 2, "cocoa" = 2)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 4, "sweetness" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/egg
	name = "egg"
	desc = "An egg. How eggsciting!"
	icon_state = "egg"
	list_reagents = list("eggyolk" = 5)
	cooked_type = /obj/item/reagent_containers/food/snacks/boiledegg
	filling_color = "#F0E68C"
	foodtype = MEAT
	grind_results = list()

/obj/item/reagent_containers/food/snacks/egg/gland
	desc = "An egg! It looks weird..."

/obj/item/reagent_containers/food/snacks/egg/gland/Initialize()
	. = ..()
	reagents.add_reagent(get_random_reagent_id(), 15)

	var/color = mix_color_from_reagents(reagents.reagent_list)
	add_atom_colour(color, FIXED_COLOUR_PRIORITY)

/obj/item/reagent_containers/food/snacks/egg/throw_impact(atom/hit_atom)
	if(!..()) //was it caught by a mob?
		var/turf/T = get_turf(hit_atom)
		new/obj/effect/decal/cleanable/egg_smudge(T)
		reagents.reaction(hit_atom, TOUCH)
		qdel(src)

/obj/item/reagent_containers/food/snacks/egg/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/toy/crayon))
		var/obj/item/toy/crayon/C = W
		var/clr = C.item_color

		if(!(clr in list("blue", "green", "mime", "orange", "purple", "rainbow", "red", "yellow")))
			to_chat(usr, "<span class='notice'>[src] refuses to take on this colour!</span>")
			return

		to_chat(usr, "<span class='notice'>You colour [src] with [W].</span>")
		icon_state = "egg-[clr]"
		item_color = clr
	else
		..()

/obj/item/reagent_containers/food/snacks/egg/blue
	icon_state = "egg-blue"
	item_color = "blue"

/obj/item/reagent_containers/food/snacks/egg/green
	icon_state = "egg-green"
	item_color = "green"

/obj/item/reagent_containers/food/snacks/egg/mime
	icon_state = "egg-mime"
	item_color = "mime"

/obj/item/reagent_containers/food/snacks/egg/orange
	icon_state = "egg-orange"
	item_color = "orange"

/obj/item/reagent_containers/food/snacks/egg/purple
	icon_state = "egg-purple"
	item_color = "purple"

/obj/item/reagent_containers/food/snacks/egg/rainbow
	icon_state = "egg-rainbow"
	item_color = "rainbow"

/obj/item/reagent_containers/food/snacks/egg/red
	icon_state = "egg-red"
	item_color = "red"

/obj/item/reagent_containers/food/snacks/egg/yellow
	icon_state = "egg-yellow"
	item_color = "yellow"

/obj/item/reagent_containers/food/snacks/friedegg
	name = "fried egg"
	desc = "A fried egg, with a touch of salt and pepper."
	icon_state = "friedegg"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	bitesize = 1
	filling_color = "#FFFFF0"
	list_reagents = list("nutriment" = 3)
	tastes = list("egg" = 4, "salt" = 1, "pepper" = 1)
	foodtype = MEAT | FRIED

/obj/item/reagent_containers/food/snacks/boiledegg
	name = "boiled egg"
	desc = "A hard boiled egg."
	icon_state = "egg"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	filling_color = "#FFFFF0"
	list_reagents = list("nutriment" = 2, "vitamin" = 1)
	tastes = list("egg" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/omelette
	name = "omelette du fromage"
	desc = "That's all you can say!"
	icon_state = "omelette"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 8, "vitamin" = 1)
	bitesize = 1
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("egg" = 1, "cheese" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/omelette/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/kitchen/fork))
		var/obj/item/kitchen/fork/F = W
		if(F.forkload)
			to_chat(user, "<span class='warning'>You already have omelette on your fork!</span>")
		else
			F.icon_state = "forkloaded"
			user.visible_message("[user] takes a piece of omelette with [user.p_their()] fork!", \
				"<span class='notice'>You take a piece of omelette with your fork.</span>")

			var/datum/reagent/R = pick(reagents.reagent_list)
			reagents.remove_reagent(R.id, 1)
			F.forkload = R
			if(reagents.total_volume <= 0)
				qdel(src)
		return
	..()

/obj/item/reagent_containers/food/snacks/benedict
	name = "eggs benedict"
	desc = "There is only one egg on this, how rude."
	icon_state = "benedict"
	bonus_reagents = list("vitamin" = 4)
	w_class = WEIGHT_CLASS_NORMAL
	list_reagents = list("nutriment" = 6, "vitamin" = 4)
	tastes = list("egg" = 1, "bacon" = 1, "bun" = 1)
	foodtype = MEAT

//////////////////////////////////////////////////
/////////////////// MEAT /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/meat
	var/subjectname = ""
	var/subjectjob = null

/obj/item/reagent_containers/food/snacks/meat/slab
	name = "meat"
	desc = "A slab of meat."
	icon_state = "meat"
	dried_type = /obj/item/reagent_containers/food/snacks/sosjerky/healthy
	bitesize = 3
	list_reagents = list("nutriment" = 3, "cooking_oil" = 2) //Meat has fats that a food processor can process into cooking oil
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/plain
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain
	slices_num = 3
	filling_color = "#FF0000"
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW


/obj/item/reagent_containers/food/snacks/meat/slab/initialize_slice(obj/item/reagent_containers/food/snacks/meat/rawcutlet/slice, reagents_per_slice)
	..()
	var/mutable_appearance/filling = mutable_appearance(icon, "rawcutlet_coloration")
	filling.color = filling_color
	slice.add_overlay(filling)
	slice.filling_color = filling_color
	slice.name = "raw [name] cutlet"
	slice.meat_type = name

/obj/item/reagent_containers/food/snacks/meat/slab/initialize_cooked_food(obj/item/reagent_containers/food/snacks/S, cooking_efficiency)
	..()
	S.name = "[name] steak"

///////////////////////////////////// HUMAN MEATS //////////////////////////////////////////////////////


/obj/item/reagent_containers/food/snacks/meat/slab/human
	name = "meat"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/plain/human
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain/human
	tastes = list("tender meat" = 1)
	foodtype = MEAT | RAW | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/initialize_slice(obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain/human/slice, reagents_per_slice)
	..()
	slice.subjectname = subjectname
	slice.subjectjob = subjectjob
	if(subjectname)
		slice.name = "raw [subjectname] cutlet"
	else if(subjectjob)
		slice.name = "raw [subjectjob] cutlet"

/obj/item/reagent_containers/food/snacks/meat/slab/human/initialize_cooked_food(obj/item/reagent_containers/food/snacks/meat/S, cooking_efficiency)
	..()
	S.subjectname = subjectname
	S.subjectjob = subjectjob
	if(subjectname)
		S.name = "[subjectname] meatsteak"
	else if(subjectjob)
		S.name = "[subjectjob] meatsteak"

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/slime
	icon_state = "slimemeat"
	desc = "Because jello wasn't offensive enough to vegans."
	list_reagents = list("nutriment" = 3, "slimejelly" = 3)
	filling_color = "#00FFFF"
	tastes = list("slime" = 1, "jelly" = 1)
	foodtype = MEAT | RAW | TOXIC

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/golem
	icon_state = "golemmeat"
	desc = "Edible rocks, welcome to the future."
	list_reagents = list("nutriment" = 3, "iron" = 3)
	filling_color = "#A9A9A9"
	tastes = list("rock" = 1)
	foodtype = MEAT | RAW | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/golem/adamantine
	icon_state = "agolemmeat"
	desc = "From the slime pen to the rune to the kitchen, science."
	filling_color = "#66CDAA"
	foodtype = MEAT | RAW | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	icon_state = "lizardmeat"
	desc = "Delicious dino damage."
	filling_color = "#6B8E23"
	tastes = list("meat" = 4, "scales" = 1)
	foodtype = MEAT | RAW

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/plant
	icon_state = "plantmeat"
	desc = "All the joys of healthy eating with all the fun of cannibalism."
	filling_color = "#E9967A"
	tastes = list("salad" = 1, "wood" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/shadow
	icon_state = "shadowmeat"
	desc = "Ow, the edge."
	filling_color = "#202020"
	tastes = list("darkness" = 1, "meat" = 1)
	foodtype = MEAT | RAW

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/fly
	icon_state = "flymeat"
	desc = "Nothing says tasty like maggot filled radioactive mutant flesh."
	list_reagents = list("nutriment" = 3, "uranium" = 3)
	tastes = list("maggots" = 1, "the inside of a reactor" = 1)
	foodtype = MEAT | RAW | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/moth
	icon_state = "mothmeat"
	desc = "Unpleasantly powdery and dry. Kind of pretty, though."
	filling_color = "#BF896B"
	tastes = list("dust" = 1, "powder" = 1, "meat" = 2)
	foodtype = MEAT | RAW

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/skeleton
	name = "bone"
	icon_state = "skeletonmeat"
	desc = "There's a point where this needs to stop, and clearly we have passed it."
	filling_color = "#F0F0F0"
	tastes = list("bone" = 1)
	slice_path = null  //can't slice a bone into cutlets
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/zombie
	name = " meat (rotten)"
	icon_state = "rottenmeat"
	desc = "Halfway to becoming fertilizer for your garden."
	filling_color = "#6B8E23"
	tastes = list("brains" = 1, "meat" = 1)
	foodtype = RAW | MEAT | TOXIC


////////////////////////////////////// WASTELAND MEATS ////////////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/meat/slab/deathclaw
	desc = "A chemical soaked slab of deathclaw meat."
	icon_state = "goliathmeat"
	list_reagents = list("nutriment" = 3, "cooking_oil" = 2, "bicaridine" = 10, "kelotane" = 10, "antitoxin" = 10, "tricordrazine" = 10)

/obj/item/reagent_containers/food/snacks/meat/slab/radroach_meat
	name = "radroach meat"
	desc = "A slab of radroach meat."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 2, "bad_food" = 3, "vitamin" = 1)
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/radroach_meat
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/radroach_meat
	name = "radroach steak"
	desc = "A juicy radroach steak, ew."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("cooked insect guts" = 1)

/obj/item/reagent_containers/food/snacks/meat/slab/ant_meat
	name = "ant meat"
	desc = "A slab of ant meat."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 2, "bad_food" = 3, "vitamin" = 1)
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/radroach_meat
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/ant_meat
	name = "ant steak"
	desc = "A chunk of fried ant flesh."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("cooked insect guts" = 1)

/obj/item/reagent_containers/food/snacks/meat/slab/radscorpion_meat
	name = "radscorpion meat"
	desc = "A slab of radscorpion meat."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 2, "bad_food" = 3, "vitamin" = 1)
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/radscorpion_meat
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/radscorpion_meat
	name = "radscorpion steak"
	desc = "A radscorpion steak. A dish for seasoned wastelanders."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("cooked insect guts" = 1)

/obj/item/reagent_containers/food/snacks/meat/slab/cazador_meat
	name = "cazador meat"
	desc = "A slab of cazador meat."
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 2, "carpotoxin" = 5, "vitamin" = 2)
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/cazador_meat
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/cazador_meat
	name = "cazador steak"
	desc = "A steak of cazador meat. If the poison did't finish the job, this might do... or not"
	icon_state = "mothmeat"
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("spicy cooked insect guts" = 1)

/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul
	name = "ghoul meat"
	icon_state = "flymeat"
	desc = "Nothing says tasty like necrotic, radioactive mutant flesh"
	list_reagents = list("nutriment" = 3, "radium" = 6, "bad_food" = 2)
	filling_color = "#FA8072"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/ghoul
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/ghoul
	name = "ghoul steak"
	desc = "Why would you even cook this?"
	list_reagents = list("nutriment" = 4)
	bonus_reagents = list("radium" = 3)

/obj/item/reagent_containers/food/snacks/meat/slab/gecko
	name = "gecko meat"
	desc = "Perfect for a Kebab."
	icon_state = "lizardmeat"
	list_reagents = list("nutriment" = 2, "vitamin" = 1)
	filling_color = "#6B8E23"
	tastes = list("meat" = 4, "scales" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/gecko
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/gecko
	name = "gecko steak"
	desc = "Perfect for a Kebab."
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("meat" = 4, "scales" = 1)

/obj/item/reagent_containers/food/snacks/meat/slab/molerat
	name = "molerat meat"
	desc = "A lot friendlier than the live thing."
	icon_state = "bearmeat"
	list_reagents = list("nutriment" = 2, "vitamin" = 2)
	filling_color = "#6B8E23"
	tastes = list("meat" = 3)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/molerat
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/molerat
	name = "molerat steak"
	desc = "Teeth and whiskers not included."
	list_reagents = list("nutriment" = 3, "vitamin" = 3)
	tastes = list("meat" = 3)

/obj/item/reagent_containers/food/snacks/meat/slab/human/centaur
	name = "centaur meat"
	icon_state = "flymeat"
	desc = "Absolutely disgusting"
	list_reagents = list("nutriment" = 3, "radium" = 10, "bad_food" = 4, "FEV_solution" = 6)
	filling_color = "#FA8072"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/centaur
	slice_path = null

/obj/item/reagent_containers/food/snacks/meat/steak/centaur
	name = "centaur steak"
	desc = "No matter how much you cook, it doesn't seem safe to eat."
	list_reagents = list("nutriment" = 4)
	bonus_reagents = list("radium" = 5, "FEV_solution" = 6)


////////////////////////////////////// OTHER MEATS ////////////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/meat/slab/synthmeat
	name = "synthmeat"
	desc = "A synthetic slab of meat."
	foodtype = RAW | MEAT //hurr durr chemicals we're harmed in the production of this meat thus its non-vegan.

/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct
	name = "meat product"
	desc = "A slab of station reclaimed and chemically processed meat product."
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/monkey
	name = "monkey meat"
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/corgi
	name = "corgi meat"
	desc = "Tastes like... well you know..."
	tastes = list("meat" = 4, "a fondness for wearing hats" = 1)
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/pug
	name = "pug meat"
	desc = "Tastes like... well you know..."
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/killertomato
	name = "killer tomato meat"
	desc = "A slice from a huge tomato."
	icon_state = "tomatomeat"
	list_reagents = list("nutriment" = 2)
	filling_color = "#FF0000"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/killertomato
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/killertomato
	tastes = list("tomato" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/meat/slab/bear
	name = "bear meat"
	desc = "A very manly slab of meat."
	icon_state = "bearmeat"
	list_reagents = list("nutriment" = 12, "morphine" = 5, "vitamin" = 2, "cooking_oil" = 6)
	filling_color = "#FFB6C1"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/bear
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/bear
	tastes = list("meat" = 1, "salmon" = 1)
	foodtype = RAW | MEAT


/obj/item/reagent_containers/food/snacks/meat/slab/xeno
	name = "xeno meat"
	desc = "A slab of meat."
	icon_state = "xenomeat"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	bitesize = 4
	filling_color = "#32CD32"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/xeno
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/xeno
	tastes = list("meat" = 1, "acid" = 1)
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/spider
	name = "spider meat"
	desc = "A slab of spider meat."
	icon_state = "spidermeat"
	list_reagents = list("nutriment" = 3, "toxin" = 3, "vitamin" = 1)
	filling_color = "#7CFC00"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/spider
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/spider
	tastes = list("cobwebs" = 1)
	foodtype = RAW | MEAT | TOXIC


/obj/item/reagent_containers/food/snacks/meat/slab/goliath
	name = "goliath meat"
	desc = "A slab of goliath meat. It's not very edible now, but it cooks great in lava."
	list_reagents = list("nutriment" = 3, "toxin" = 5, "cooking_oil" = 3)
	icon_state = "goliathmeat"
	tastes = list("meat" = 1)
	foodtype = RAW | MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/meat/slab/goliath/burn()
	visible_message("[src] finishes cooking!")
	new /obj/item/reagent_containers/food/snacks/meat/steak/goliath(loc)
	qdel(src)

/obj/item/reagent_containers/food/snacks/meat/slab/meatwheat
	name = "meatwheat clump"
	desc = "This doesn't look like meat, but your standards aren't <i>that</i> high to begin with."
	list_reagents = list("nutriment" = 3, "vitamin" = 2, "blood" = 5, "cooking_oil" = 1)
	filling_color = rgb(150, 0, 0)
	icon_state = "meatwheat_clump"
	bitesize = 4
	tastes = list("meat" = 1, "wheat" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/meat/slab/gorilla
	name = "gorilla meat"
	desc = "Much meatier than monkey meat."
	list_reagents = list("nutriment" = 5, "vitamin" = 1, "cooking_oil" = 5) //Plenty of fat!

/obj/item/reagent_containers/food/snacks/meat/rawbacon
	name = "raw piece of bacon"
	desc = "A raw piece of bacon."
	icon_state = "bacon"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/bacon
	bitesize = 2
	list_reagents = list("nutriment" = 1, "cooking_oil" = 3)
	filling_color = "#B22222"
	tastes = list("bacon" = 1)
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/bacon
	name = "piece of bacon"
	desc = "A delicious piece of bacon."
	icon_state = "baconcooked"
	list_reagents = list("nutriment" = 2)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1, "cooking_oil" = 2)
	filling_color = "#854817"
	tastes = list("bacon" = 1)
	foodtype = MEAT

////////////////////////////////////// MEAT STEAKS ///////////////////////////////////////////////////////////


/obj/item/reagent_containers/food/snacks/meat/steak
	name = "steak"
	desc = "A piece of hot spicy meat."
	icon_state = "meatsteak"
	list_reagents = list("nutriment" = 5)
	bonus_reagents = list("nutriment" = 2, "vitamin" = 1)
	trash = /obj/item/trash/plate
	filling_color = "#B22222"
	foodtype = MEAT
	tastes = list("meat" = 1)

/obj/item/reagent_containers/food/snacks/meat/steak/plain
    foodtype = MEAT

/obj/item/reagent_containers/food/snacks/meat/steak/plain/human
	tastes = list("tender meat" = 1)
	foodtype = MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/steak/killertomato
	name = "killer tomato steak"
	tastes = list("tomato" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/meat/steak/bear
	name = "bear steak"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/reagent_containers/food/snacks/meat/steak/xeno
	name = "xeno steak"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/reagent_containers/food/snacks/meat/steak/spider
	name = "spider steak"
	tastes = list("cobwebs" = 1)

/obj/item/reagent_containers/food/snacks/meat/steak/goliath
	name = "goliath steak"
	desc = "A delicious, lava cooked steak."
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	icon_state = "goliathsteak"
	trash = null
	tastes = list("meat" = 1, "rock" = 1)
	foodtype = MEAT


//////////////////////////////// MEAT CUTLETS ///////////////////////////////////////////////////////

//Raw cutlets

/obj/item/reagent_containers/food/snacks/meat/rawcutlet
	name = "raw cutlet"
	desc = "A raw meat cutlet."
	icon_state = "rawcutlet"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/plain
	bitesize = 2
	list_reagents = list("nutriment" = 1)
	filling_color = "#B22222"
	tastes = list("meat" = 1)
	var/meat_type = "meat"
	foodtype = MEAT | RAW

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/initialize_cooked_food(obj/item/reagent_containers/food/snacks/S, cooking_efficiency)
	..()
	S.name = "[meat_type] cutlet"


/obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain
    foodtype = MEAT

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain/human
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/plain/human
	tastes = list("tender meat" = 1)
	foodtype = MEAT | RAW | GROSS

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/plain/human/initialize_cooked_food(obj/item/reagent_containers/food/snacks/S, cooking_efficiency)
	..()
	if(subjectname)
		S.name = "[subjectname] [initial(S.name)]"
	else if(subjectjob)
		S.name = "[subjectjob] [initial(S.name)]"

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/killertomato
	name = "raw killer tomato cutlet"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/killertomato
	tastes = list("tomato" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/bear
	name = "raw bear cutlet"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/bear
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/xeno
	name = "raw xeno cutlet"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/xeno
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/spider
	name = "raw spider cutlet"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/cutlet/spider
	tastes = list("cobwebs" = 1)

//Cooked cutlets

/obj/item/reagent_containers/food/snacks/meat/cutlet
	name = "cutlet"
	desc = "A cooked meat cutlet."
	icon_state = "cutlet"
	bitesize = 2
	list_reagents = list("nutriment" = 2)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	filling_color = "#B22222"
	tastes = list("meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/meat/cutlet/plain

/obj/item/reagent_containers/food/snacks/meat/cutlet/plain/human
	tastes = list("tender meat" = 1)
	foodtype = MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/cutlet/killertomato
	name = "killer tomato cutlet"
	tastes = list("tomato" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/meat/cutlet/bear
	name = "bear cutlet"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/reagent_containers/food/snacks/meat/cutlet/xeno
	name = "xeno cutlet"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/reagent_containers/food/snacks/meat/cutlet/spider
	name = "spider cutlet"
	tastes = list("cobwebs" = 1)

//other meat

/obj/item/reagent_containers/food/snacks/cubancarp
	name = "\improper Cuban carp"
	desc = "A grifftastic sandwich that burns your tongue and then leaves it numb!"
	icon_state = "cubancarp"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list("nutriment" = 6, "capsaicin" = 1)
	tastes = list("fish" = 4, "batter" = 1, "hot peppers" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/carpmeat
	name = "carp fillet"
	desc = "A fillet of carp meat."
	icon_state = "fishfillet"
	list_reagents = list("nutriment" = 3, "vitamin" = 2)
	bitesize = 6
	filling_color = "#FA8072"
	tastes = list("fish" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/carpmeat/Initialize()
	. = ..()
	eatverb = pick("bite","chew","choke down","gnaw","swallow","chomp")

/obj/item/reagent_containers/food/snacks/carpmeat/imitation
	name = "imitation carp fillet"
	desc = "Almost just like the real thing, kinda."

/obj/item/reagent_containers/food/snacks/fishfingers
	name = "fish fingers"
	desc = "A finger of fish."
	icon_state = "fishfingers"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 4)
	bitesize = 1
	filling_color = "#CD853F"
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/fishandchips
	name = "fish and chips"
	desc = "I do say so myself chap."
	icon_state = "fishandchips"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6)
	filling_color = "#FA8072"
	tastes = list("fish" = 1, "chips" = 1)
	foodtype = MEAT | VEGETABLES | FRIED

/obj/item/reagent_containers/food/snacks/rawantbrain
	name = "Raw Ant Brain"
	desc = "Goppy reddish-grey flesh dug out of the brain case of a giant ant."
	icon_state = "AntBrain"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list("nutriment" = 3, "vitamin" = 2)
	tastes = list("fat" = 4, "bitter meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/rawbrahmintongue
	name = "Raw Brahmin Tongue"
	desc = "The raw tongue of a brahmin, a wastelander favorite"
	icon_state = "BrahminTongue"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list("nutriment" = 3, "vitamin" = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/cookedbrahmintongue
	tastes = list("beef" = 4, "tender meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/cookedbrahmintongue
	name = "Brahmin Tongue"
	desc = "A brahmin tongue slow roasted over an open fire and topped with a large amount of thick brown gravy"
	icon_state = "stewedsoymeat"
	bitesize = 3
	filling_color = "#CD853F"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 5)
	cooked_type = /obj/item/reagent_containers/food/snacks/cookedbrahmintongue
	tastes = list("top quality beef" = 4, "tender meat" = 1, "tasty gravy" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/rawbrahminliver
	name = "Raw Brahmin Liver"
	desc = "The raw tongue of a brahmin, a wastelander favorite"
	icon_state = "Brahmin Liver"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list("nutriment" = 3, "vitamin" = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/cookedbrahminliver
	tastes = list("beef" = 4, "tender meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/cookedbrahminliver
	name = "Charred Brahmin Liver"
	desc = "A fatty brahmin liver roasted in a cast iron pan over mesquite wood."
	icon_state = "Charred Brahmin Liver"
	bitesize = 3
	filling_color = "#CD853F"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 5)
	tastes = list("slow cooked liver" = 4, "delicious crunch" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/tofu
	name = "tofu"
	desc = "We all love tofu."
	icon_state = "tofu"
	list_reagents = list("nutriment" = 2)
	filling_color = "#F0E68C"
	tastes = list("tofu" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/spiderleg
	name = "spider leg"
	desc = "A still twitching leg of a giant spider... you don't really want to eat this, do you?"
	icon_state = "spiderleg"
	list_reagents = list("nutriment" = 2, "toxin" = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/boiledspiderleg
	filling_color = "#000000"
	tastes = list("cobwebs" = 1)
	foodtype = MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/cornedbeef
	name = "corned beef and cabbage"
	desc = "Now you can feel like a real tourist vacationing in Boston."
	icon_state = "cornedbeef"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 5)
	tastes = list("meat" = 1, "cabbage" = 1)
	foodtype = MEAT | VEGETABLES

/obj/item/reagent_containers/food/snacks/bearsteak
	name = "Filet migrawr"
	desc = "Because eating bear wasn't manly enough."
	icon_state = "bearsteak"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 6)
	list_reagents = list("nutriment" = 2, "vitamin" = 5,)
	tastes = list("meat" = 1, "salmon" = 1)
	foodtype = MEAT | ALCOHOL

/obj/item/reagent_containers/food/snacks/meatball
	name = "meatball"
	desc = "It's exactly what you'd expect from the name."
	icon_state = "meatball"
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	filling_color = "#800000"
	tastes = list("meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/sausage
	name = "sausage"
	desc = "A piece of mixed, long meat."
	icon_state = "sausage"
	filling_color = "#CD5C5C"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	tastes = list("meat" = 1)
	foodtype = MEAT
	var/roasted = FALSE

/obj/item/reagent_containers/food/snacks/sausage/Initialize()
	. = ..()
	eatverb = pick("bite","chew","nibble","deep throat","gobble","chomp")

/obj/item/reagent_containers/food/snacks/kebab
	trash = /obj/item/stack/rods
	icon_state = "kebab"
	w_class = WEIGHT_CLASS_NORMAL
	list_reagents = list("nutriment" = 8)
	tastes = list("meat" = 3, "metal" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/kebab/human
	name = "human-kebab"
	desc = "A human meat, on a stick."
	bonus_reagents = list("nutriment" = 1, "vitamin" = 6)
	tastes = list("tender meat" = 3, "metal" = 1)
	foodtype = MEAT | GROSS

/obj/item/reagent_containers/food/snacks/kebab/monkey
	name = "meat-kebab"
	desc = "Delicious meat, on a stick."
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	tastes = list("meat" = 3, "metal" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/kebab/tofu
	name = "tofu-kebab"
	desc = "Vegan meat, on a stick."
	bonus_reagents = list("nutriment" = 1)
	tastes = list("tofu" = 3, "metal" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/kebab/tail
	name = "lizard-tail kebab"
	desc = "Severed lizard tail on a stick."
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	tastes = list("meat" = 8, "metal" = 4, "scales" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/rawkhinkali
	name = "raw khinkali"
	desc = "One hundred khinkalis? Do I look like a pig?"
	icon_state = "khinkali"
	list_reagents = list("nutriment" = 1, "vitamin" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/khinkali
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/khinkali
	name = "khinkali"
	desc = "One hundred khinkalis? Do I look like a pig?"
	icon_state = "khinkali"
	list_reagents = list("nutriment" = 4, "vitamin" = 2)
	bitesize = 3
	filling_color = "#F0F0F0"
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/monkeycube
	name = "monkey cube"
	desc = "Just add water!"
	icon_state = "monkeycube"
	bitesize = 12
	list_reagents = list("nutriment" = 2)
	filling_color = "#CD853F"
	tastes = list("the jungle" = 1, "bananas" = 1)
	foodtype = MEAT | SUGAR

/obj/item/reagent_containers/food/snacks/monkeycube/proc/Expand()
	var/mob/spammer = get_mob_by_key(fingerprintslast)
	var/mob/living/carbon/monkey/bananas = new(drop_location(), TRUE, spammer)
	if (!QDELETED(bananas))
		visible_message("<span class='notice'>[src] expands!</span>")
		bananas.log_message("Spawned via [src] at [AREACOORD(src)], Last attached mob: [key_name(spammer)].", INDIVIDUAL_ATTACK_LOG)
	else if (!spammer) // Visible message in case there are no fingerprints
		visible_message("<span class='notice'>[src] fails to expand!</span>")
	qdel(src)

/obj/item/reagent_containers/food/snacks/enchiladas
	name = "enchiladas"
	desc = "Viva La Mexico!"
	icon_state = "enchiladas"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	bitesize = 4
	filling_color = "#FFA07A"
	list_reagents = list("nutriment" = 8, "capsaicin" = 6)
	tastes = list("hot peppers" = 1, "meat" = 3, "cheese" = 1, "sour cream" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/stewedsoymeat
	name = "stewed soy meat"
	desc = "Even non-vegetarians will LOVE this!"
	icon_state = "stewedsoymeat"
	bonus_reagents = list("nutriment" = 1)
	list_reagents = list("nutriment" = 8)
	filling_color = "#D2691E"
	tastes = list("soy" = 1, "vegetables" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/stewedsoymeat/Initialize()
	. = ..()
	eatverb = pick("slurp","sip","suck","inhale","drink")

/obj/item/reagent_containers/food/snacks/boiledspiderleg
	name = "boiled spider leg"
	desc = "A giant spider's leg that's still twitching after being cooked. Gross!"
	icon_state = "spiderlegcooked"
	bonus_reagents = list("nutriment" = 1, "capsaicin" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 3, "capsaicin" = 2)
	filling_color = "#000000"
	tastes = list("hot peppers" = 1, "cobwebs" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/spidereggsham
	name = "green eggs and ham"
	desc = "Would you eat them on a train? Would you eat them on a plane? Would you eat them on a state of the art corporate deathtrap floating through space?"
	icon_state = "spidereggsham"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 6)
	bitesize = 4
	filling_color = "#7FFF00"
	tastes = list("meat" = 1, "the colour green" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/sashimi
	name = "carp sashimi"
	desc = "Celebrate surviving attack from hostile sea life by hospitalising yourself."
	icon_state = "sashimi"
	bonus_reagents = list("nutriment" = 1, "capsaicin" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 6, "capsaicin" = 5)
	filling_color = "#FA8072"
	tastes = list("fish" = 1, "hot peppers" = 1)
	foodtype = MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/nugget
	name = "chicken nugget"
	filling_color = "#B22222"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 2)
	tastes = list("\"chicken\"" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/nugget/Initialize()
	. = ..()
	var/shape = pick("lump", "star", "lizard", "corgi")
	desc = "A 'chicken' nugget vaguely shaped like a [shape]."
	icon_state = "nugget_[shape]"

/obj/item/reagent_containers/food/snacks/pigblanket
	name = "pig in a blanket"
	desc = "A tiny sausage wrapped in a flakey, buttery roll. Free this pig from its blanket prison by eating it."
	icon_state = "pigblanket"
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	filling_color = "#800000"
	tastes = list("meat" = 1, "butter" = 1)

/obj/item/reagent_containers/food/snacks/kebab/rat
	name = "rat-kebab"
	desc = "Not so delicious rat meat, on a stick."
	icon_state = "ratkebab"
	w_class = WEIGHT_CLASS_NORMAL
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	tastes = list("rat meat" = 1, "metal" = 1)
	foodtype = MEAT | GROSS

/obj/item/reagent_containers/food/snacks/kebab/rat/double
	name = "double rat-kebab"
	icon_state = "doubleratkebab"
	tastes = list("rat meat" = 2, "metal" = 1)
	bonus_reagents = list("nutriment" = 6, "vitamin" = 2)

/obj/item/reagent_containers/food/snacks/pemmican
	name = "pemmican"
	desc = "A well-known food in survivalist circles, pemmican is a mixture of fat and protein from the meat of an animal."
	icon_state = "phelmbiscuit"
	list_reagents = list("nutriment" = 2, "vitamin" = 4)
	tastes = list("dried meat" = 8, "Sawdust" = 4, "Corn" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/friedbrahminskin
	name = "Brahmin cracklings"
	desc = "Cracklings are the solid material which remains after rendering animal fat and skin to produce lard, tallow, or schmaltz. It is often eaten as a snack food or made into animal feed. It is also used in cooking."
	icon_state = "Fried Brahmin Skin"
	filling_color = "#CD5C5C"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	tastes = list("crispy skin" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/brahminwellington
	name = "Brahmin wellington"
	desc = "A pie made of fillet steak coated with pâté and duxelles, which is then wrapped in molerat ham and puff pastry"
	icon_state = "Brahmin Wellington"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	bitesize = 4
	filling_color = "#FFA07A"
	list_reagents = list("nutriment" = 8)
	tastes = list("smokey meat" = 3, "cheese" = 1, "sour cream" = 1, "flaky crust" = 2)
	foodtype = MEAT | GRAIN

/obj/item/reagent_containers/food/snacks/deathclawwellington
	name = "Deathclaw wellington"
	desc = "A pie made of top grade steak coated with pâté and duxelles, which is then wrapped in molerat ham and buttery puff pastry"
	icon_state = "Deathclaw Wellington"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	bitesize = 4
	filling_color = "#FFA07A"
	list_reagents = list("nutriment" = 8)
	tastes = list("high grade meat" = 2, "smokey meat" = 3, "cheese" = 1, "sour cream" = 1, "flaky crust" = 2)
	foodtype = MEAT | GRAIN

//////////////////////////////////////////////////
/////////////////// PASTRY /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/donut
	name = "donut"
	desc = "Goes great with coffee."
	icon_state = "donut1"
	bitesize = 5
	bonus_reagents = list("sugar" = 1)
	list_reagents = list("nutriment" = 3, "sugar" = 2)
	var/extra_reagent = null
	filling_color = "#D2691E"
	tastes = list("donut" = 1)
	foodtype = JUNKFOOD | GRAIN | FRIED | SUGAR

/obj/item/reagent_containers/food/snacks/donut/Initialize()
	. = ..()
	if(prob(30))
		icon_state = "donut2"
		name = "frosted donut"
		reagents.add_reagent("sprinkles", 2)
		bonus_reagents = list("sprinkles" = 2, "sugar" = 1)
		filling_color = "#FF69B4"


/obj/item/reagent_containers/food/snacks/donut/checkLiked(fraction, mob/M)	//Sec officers always love donuts
	if(last_check_time + 50 < world.time)
		if(ishuman(M))
			var/mob/living/carbon/human/H = M
			if(H.mind && H.mind.assigned_role == "Security Officer" && !H.has_trait(TRAIT_AGEUSIA))
				to_chat(H,"<span class='notice'>I love this taste!</span>")
				H.adjust_disgust(-5 + -2.5 * fraction)
				GET_COMPONENT_FROM(mood, /datum/component/mood, H)
				if(mood)
					mood.add_event("fav_food", /datum/mood_event/favorite_food)
				last_check_time = world.time
				return
	..()

/obj/item/reagent_containers/food/snacks/donut/chaos
	name = "chaos donut"
	desc = "Like life, it never quite tastes the same."
	bitesize = 10
	tastes = list("donut" = 3, "chaos" = 1)

/obj/item/reagent_containers/food/snacks/donut/chaos/Initialize()
	. = ..()
	extra_reagent = pick("nutriment", "capsaicin", "frostoil", "krokodil", "plasma", "cocoa", "slimejelly", "banana", "berryjuice", "omnizine")
	reagents.add_reagent("[extra_reagent]", 3)
	bonus_reagents = list("[extra_reagent]" = 3, "sugar" = 1)
	if(prob(30))
		icon_state = "donut2"
		name = "frosted chaos donut"
		reagents.add_reagent("sprinkles", 2)
		bonus_reagents = list("sprinkles" = 2, "[extra_reagent]" = 3, "sugar" = 1)
		filling_color = "#FF69B4"

/obj/item/reagent_containers/food/snacks/donut/jelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	bonus_reagents = list("sugar" = 1, "vitamin" = 1)
	extra_reagent = "berryjuice"
	tastes = list("jelly" = 1, "donut" = 3)
	foodtype = JUNKFOOD | GRAIN | FRIED | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/donut/jelly/Initialize()
	. = ..()
	if(extra_reagent)
		reagents.add_reagent("[extra_reagent]", 3)
	if(prob(30))
		icon_state = "jdonut2"
		name = "frosted jelly Donut"
		reagents.add_reagent("sprinkles", 2)
		bonus_reagents = list("sprinkles" = 2, "sugar" = 1)
		filling_color = "#FF69B4"

/obj/item/reagent_containers/food/snacks/donut/jelly/slimejelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	extra_reagent = "slimejelly"
	foodtype = JUNKFOOD | GRAIN | FRIED | TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/donut/jelly/cherryjelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	extra_reagent = "cherryjelly"
	foodtype = JUNKFOOD | GRAIN | FRIED | FRUIT

////////////////////////////////////////////MUFFINS////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/muffin
	name = "muffin"
	desc = "A delicious and spongy little cake."
	icon_state = "muffin"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 6)
	filling_color = "#F4A460"
	tastes = list("muffin" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/muffin/berry
	name = "berry muffin"
	icon_state = "berrymuffin"
	desc = "A delicious and spongy little cake, with berries."
	tastes = list("muffin" = 3, "berry" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/muffin/booberry
	name = "booberry muffin"
	icon_state = "berrymuffin"
	alpha = 125
	desc = "My stomach is a graveyard! No living being can quench my bloodthirst!"
	tastes = list("muffin" = 3, "spookiness" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/chawanmushi
	name = "chawanmushi"
	desc = "A legendary egg custard that makes friends out of enemies. Probably too hot for a cat to eat."
	icon_state = "chawanmushi"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 5)
	filling_color = "#FFE4E1"
	tastes = list("custard" = 1)
	foodtype = GRAIN | MEAT | VEGETABLES

////////////////////////////////////////////WAFFLES////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/waffles
	name = "waffles"
	desc = "Mmm, waffles."
	icon_state = "waffles"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 8, "vitamin" = 1)
	filling_color = "#D2691E"
	tastes = list("waffles" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/soylentgreen
	name = "\improper Soylent Green"
	desc = "Not made of people. Honest." //Totally people.
	icon_state = "soylent_green"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 10, "vitamin" = 1)
	filling_color = "#9ACD32"
	tastes = list("waffles" = 7, "people" = 1)
	foodtype = GRAIN | GROSS | MEAT

/obj/item/reagent_containers/food/snacks/soylenviridians
	name = "\improper Soylent Virdians"
	desc = "Not made of people. Honest." //Actually honest for once.
	icon_state = "soylent_yellow"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 10, "vitamin" = 1)
	filling_color = "#9ACD32"
	tastes = list("waffles" = 7, "the colour green" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/rofflewaffles
	name = "roffle waffles"
	desc = "Waffles from Roffle. Co."
	icon_state = "rofflewaffles"
	bitesize = 4
	bonus_reagents = list("vitamin" = 2)
	list_reagents = list("nutriment" = 8, "mushroomhallucinogen" = 2, "vitamin" = 2)
	filling_color = "#00BFFF"
	tastes = list("waffle" = 1, "mushrooms" = 1)
	foodtype = GRAIN | VEGETABLES | TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/cookie
	name = "cookie"
	desc = "COOKIE!!!"
	icon_state = "COOKIE!!!"
	bitesize = 1
	bonus_reagents = list("nutriment" = 1)
	list_reagents = list("nutriment" = 1)
	filling_color = "#F0E68C"
	tastes = list("cookie" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/donkpocket
	name = "\improper Donk-pocket"
	desc = "The food of choice for the seasoned bandit."
	icon_state = "donkpocket"
	list_reagents = list("nutriment" = 4)
	cooked_type = /obj/item/reagent_containers/food/snacks/donkpocket/warm
	filling_color = "#CD853F"
	tastes = list("meat" = 2, "dough" = 2, "laziness" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/donkpocket/warm
	name = "warm Donk-pocket"
	desc = "The heated food of choice for the seasoned bandit."
	bonus_reagents = list("omnizine" = 3)
	list_reagents = list("nutriment" = 4, "omnizine" = 3)
	tastes = list("meat" = 2, "dough" = 2, "laziness" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/dankpocket
	name = "\improper Dank-pocket"
	desc = "The food of choice for the seasoned farmer"
	icon_state = "dankpocket"
	list_reagents = list("lipolicide" = 3, "space_drugs" = 3, "nutriment" = 4)
	filling_color = "#00FF00"
	tastes = list("meat" = 2, "dough" = 2)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/fortunecookie
	name = "fortune cookie"
	desc = "A true prophecy in each cookie!"
	icon_state = "fortune_cookie"
	bonus_reagents = list("nutriment" = 2)
	list_reagents = list("nutriment" = 3)
	filling_color = "#F4A460"
	tastes = list("cookie" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/poppypretzel
	name = "poppy pretzel"
	desc = "It's all twisted up!"
	icon_state = "poppypretzel"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 5)
	filling_color = "#F0E68C"
	tastes = list("pretzel" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/plumphelmetbiscuit
	name = "plump helmet biscuit"
	desc = "This is a finely-prepared plump helmet biscuit. The ingredients are exceptionally minced plump helmet, and well-minced dwarven wheat flour."
	icon_state = "phelmbiscuit"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5)
	filling_color = "#F0E68C"
	tastes = list("mushroom" = 1, "biscuit" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/plumphelmetbiscuit/Initialize()
	var/fey = prob(10)
	if(fey)
		name = "exceptional plump helmet biscuit"
		desc = "Microwave is taken by a fey mood! It has cooked an exceptional plump helmet biscuit!"
		bonus_reagents = list("omnizine" = 5, "nutriment" = 1, "vitamin" = 1)
	. = ..()
	if(fey)
		reagents.add_reagent("omnizine", 5)

/obj/item/reagent_containers/food/snacks/cracker
	name = "cracker"
	desc = "It's a salted cracker."
	icon_state = "cracker"
	bitesize = 1
	bonus_reagents = list("nutriment" = 1)
	list_reagents = list("nutriment" = 1)
	filling_color = "#F0E68C"
	tastes = list("cracker" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/hotdog
	name = "hotdog"
	desc = "Fresh footlong ready to go down on."
	icon_state = "hotdog"
	bitesize = 3
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 6, "ketchup" = 3, "vitamin" = 3)
	filling_color = "#8B0000"
	tastes = list("bun" = 3, "meat" = 2)
	foodtype = GRAIN | MEAT | VEGETABLES

/obj/item/reagent_containers/food/snacks/meatbun
	name = "meat bun"
	desc = "Has the potential to not be Dog."
	icon_state = "meatbun"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	filling_color = "#8B0000"
	tastes = list("bun" = 3, "meat" = 2)
	foodtype = GRAIN | MEAT | VEGETABLES

/obj/item/reagent_containers/food/snacks/khachapuri
	name = "khachapuri"
	desc = "Bread with egg and cheese?"
	icon_state = "khachapuri"
	list_reagents = list("nutriment" = 12, "vitamin" = 2)
	filling_color = "#FFFF4D"
	tastes = list("bread" = 1, "egg" = 1, "cheese" = 1)
	foodtype = GRAIN | MEAT | DAIRY


/obj/item/reagent_containers/food/snacks/sugarcookie
	name = "sugar cookie"
	desc = "Just like your little sister used to make."
	icon_state = "sugarcookie"
	bonus_reagents = list("nutriment" = 1, "sugar" = 3)
	list_reagents = list("nutriment" = 3, "sugar" = 3)
	filling_color = "#CD853F"
	tastes = list("sweetness" = 1)
	foodtype = GRAIN | JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chococornet
	name = "chocolate cornet"
	desc = "Which side's the head, the fat end or the thin end?"
	icon_state = "chococornet"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#FFE4C4"
	tastes = list("biscuit" = 3, "chocolate" = 1)
	foodtype = GRAIN | JUNKFOOD

/obj/item/reagent_containers/food/snacks/oatmealcookie
	name = "oatmeal cookie"
	desc = "The best of both cookie and oat."
	icon_state = "oatmealcookie"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#D2691E"
	tastes = list("cookie" = 2, "oat" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/raisincookie
	name = "raisin cookie"
	desc = "Why would you put raisins on a cookie?"
	icon_state = "raisincookie"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#F0E68C"
	tastes = list("cookie" = 1, "raisins" = 1)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/cherrycupcake
	name = "cherry cupcake"
	desc = "A sweet cupcake with cherry bits."
	icon_state = "cherrycupcake"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#F0E68C"
	tastes = list("cake" = 3, "cherry" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/bluecherrycupcake
	name = "blue cherry cupcake"
	desc = "Blue cherries inside a delicious cupcake."
	icon_state = "bluecherrycupcake"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#F0E68C"
	tastes = list("cake" = 3, "blue cherry" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/honeybun
	name = "honey bun"
	desc = "A sticky pastry bun glazed with honey."
	icon_state = "honeybun"
	bonus_reagents = list("nutriment" = 1, "honey" = 1)
	list_reagents = list("nutriment" = 5, "honey" = 5)
	filling_color = "#F2CE91"
	tastes = list("pastry" = 1, "sweetness" = 1)
	foodtype = GRAIN

#define PANCAKE_MAX_STACK 10

/obj/item/reagent_containers/food/snacks/pancakes
	name = "pancake"
	desc = "A fluffy pancake. The softer, superior relative of the waffle."
	icon_state = "pancakes_1"
	item_state = "pancakes"
	bonus_reagents = list("vitamin" = 1)
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	filling_color = "#D2691E"
	tastes = list("pancakes" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/pancakes/blueberry
	name = "blueberry pancake"
	desc = "A fluffy and delicious blueberry pancake."
	icon_state = "bbpancakes_1"
	item_state = "bbpancakes"
	bonus_reagents = list("vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 3)
	tastes = list("pancakes" = 1, "blueberries" = 1)

/obj/item/reagent_containers/food/snacks/pancakes/chocolatechip
	name = "chocolate chip pancake"
	desc = "A fluffy and delicious chocolate chip pancake."
	icon_state = "ccpancakes_1"
	item_state = "ccpancakes"
	bonus_reagents = list("vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 3)
	tastes = list("pancakes" = 1, "chocolate" = 1)

/obj/item/reagent_containers/food/snacks/pancakes/Initialize()
	. = ..()
	update_icon()

/obj/item/reagent_containers/food/snacks/pancakes/update_icon()
	if(contents.len)
		name = "stack of pancakes"
	else
		name = initial(name)
	if(contents.len < LAZYLEN(overlays))
		overlays-=overlays[overlays.len]

/obj/item/reagent_containers/food/snacks/pancakes/examine(mob/user)
	var/ingredients_listed = ""
	var/pancakeCount = contents.len
	switch(pancakeCount)
		if(0)
			desc = initial(desc)
		if(1 to 2)
			desc = "A stack of fluffy pancakes."
		if(3 to 6)
			desc = "A fat stack of fluffy pancakes!"
		if(7 to 9)
			desc = "A grand tower of fluffy, delicious pancakes!"
		if(PANCAKE_MAX_STACK to INFINITY)
			desc = "A massive towering spire of fluffy, delicious pancakes. It looks like it could tumble over!"
	var/originalBites = bitecount
	if (pancakeCount)
		var/obj/item/reagent_containers/food/snacks/S = contents[pancakeCount]
		bitecount = S.bitecount
	..()
	if (pancakeCount)
		for(var/obj/item/reagent_containers/food/snacks/pancakes/ING in contents)
			ingredients_listed += "[ING.name], "
		to_chat(user, "It contains [contents.len?"[ingredients_listed]":"no ingredient, "]on top of a [initial(name)].")
	bitecount = originalBites

/obj/item/reagent_containers/food/snacks/pancakes/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/reagent_containers/food/snacks/pancakes/))
		var/obj/item/reagent_containers/food/snacks/pancakes/P = I
		if((contents.len >= PANCAKE_MAX_STACK) || ((P.contents.len + contents.len) > PANCAKE_MAX_STACK) || (reagents.total_volume >= volume))
			to_chat(user, "<span class='warning'>You can't add that many pancakes to [src]!</span>")
		else
			if(!user.transferItemToLoc(I, src))
				return
			to_chat(user, "<span class='notice'>You add the [I] to the [name].</span>")
			P.name = initial(P.name)
			contents += P
			update_overlays(P)
			if (P.contents.len)
				for(var/V in P.contents)
					P = V
					P.name = initial(P.name)
					contents += P
					update_overlays(P)
			P = I
			clearlist(P.contents)
		return
	else if(contents.len)
		var/obj/O = contents[contents.len]
		return O.attackby(I, user, params)
	..()

/obj/item/reagent_containers/food/snacks/pancakes/update_overlays(obj/item/reagent_containers/food/snacks/P)
	var/mutable_appearance/pancake = mutable_appearance(icon, "[P.item_state]_[rand(1,3)]")
	pancake.pixel_x = rand(-1,1)
	pancake.pixel_y = 3 * contents.len - 1
	add_overlay(pancake)
	update_icon()

/obj/item/reagent_containers/food/snacks/pancakes/attack(mob/M, mob/user, def_zone, stacked = TRUE)
	if(user.a_intent == INTENT_HARM || !contents.len || !stacked)
		return ..()
	var/obj/item/O = contents[contents.len]
	. = O.attack(M, user, def_zone, FALSE)
	update_icon()

#undef PANCAKE_MAX_STACK

//////////////////////////////////////////////////
/////////////////// PIE /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/pie
	icon = 'icons/obj/food/piecake.dmi'
	bitesize = 3
	w_class = WEIGHT_CLASS_NORMAL
	volume = 80
	list_reagents = list("nutriment" = 10, "vitamin" = 2)
	tastes = list("pie" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/pie/plain
	name = "plain pie"
	desc = "A simple pie, still delicious."
	icon_state = "pie"
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/pie
	bonus_reagents = list("nutriment" = 8, "vitamin" = 1)
	tastes = list("pie" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/pie/cream
	name = "banana cream pie"
	desc = "Just like back home in the circus! HONK!"
	icon_state = "pie"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "banana" = 5, "vitamin" = 2)
	tastes = list("pie" = 1)
	foodtype = GRAIN | DAIRY | SUGAR
	var/stunning = FALSE //why are banana cream pies being used for combat.

/obj/item/reagent_containers/food/snacks/pie/cream/throw_impact(atom/hit_atom)
	. = ..()
	if(!.) //if we're not being caught
		splat(hit_atom)

/obj/item/reagent_containers/food/snacks/pie/cream/proc/splat(atom/movable/hit_atom)
	if(isliving(loc)) //someone caught us!
		return
	var/turf/T = get_turf(hit_atom)
	new/obj/effect/decal/cleanable/pie_smudge(T)
	if(reagents && reagents.total_volume)
		reagents.reaction(hit_atom, TOUCH)
	if(ishuman(hit_atom))
		var/mob/living/carbon/human/H = hit_atom
		var/mutable_appearance/creamoverlay = mutable_appearance('icons/effects/creampie.dmi')
		if(H.dna.species.limbs_id == "lizard")
			creamoverlay.icon_state = "creampie_lizard"
		else
			creamoverlay.icon_state = "creampie_human"
		if(stunning)
			H.Knockdown(20) //splat!
		H.adjust_blurriness(1)
		H.visible_message("<span class='warning'>[H] is creamed by [src]!</span>", "<span class='userdanger'>You've been creamed by [src]!</span>")
		playsound(H, "desceration", 50, TRUE)
		if(!H.creamed) // one layer at a time
			H.add_overlay(creamoverlay)
			H.creamed = TRUE
			SEND_SIGNAL(H, COMSIG_ADD_MOOD_EVENT, "creampie", /datum/mood_event/creampie)
	qdel(src)

/obj/item/reagent_containers/food/snacks/pie/cream/nostun
	stunning = FALSE

/obj/item/reagent_containers/food/snacks/pie/berryclafoutis
	name = "berry clafoutis"
	desc = "No black birds, this is a good sign."
	icon_state = "berryclafoutis"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 10, "berryjuice" = 5, "vitamin" = 2)
	tastes = list("pie" = 1, "blackberries" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/pie/bearypie
	name = "beary pie"
	desc = "No brown bears, this is a good sign."
	icon_state = "bearypie"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 2, "vitamin" = 3)
	tastes = list("pie" = 1, "meat" = 1, "salmon" = 1)
	foodtype = GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/pie/meatpie
	name = "meat-pie"
	icon_state = "meatpie"
	desc = "An old barber recipe, very delicious!"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	tastes = list("pie" = 1, "meat" = 1)
	foodtype = GRAIN | MEAT


/obj/item/reagent_containers/food/snacks/pie/tofupie
	name = "tofu-pie"
	icon_state = "meatpie"
	desc = "A delicious tofu pie."
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	tastes = list("pie" = 1, "tofu" = 1)
	foodtype = GRAIN


/obj/item/reagent_containers/food/snacks/pie/amanita_pie
	name = "amanita pie"
	desc = "Sweet and tasty poison pie."
	icon_state = "amanita_pie"
	bitesize = 4
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 6, "amatoxin" = 3, "mushroomhallucinogen" = 1, "vitamin" = 4)
	tastes = list("pie" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES | TOXIC | GROSS


/obj/item/reagent_containers/food/snacks/pie/plump_pie
	name = "plump pie"
	desc = "I bet you love stuff made out of plump helmets!"
	icon_state = "plump_pie"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	tastes = list("pie" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES


/obj/item/reagent_containers/food/snacks/pie/plump_pie/Initialize()
	. = ..()
	var/fey = prob(10)
	if(fey)
		name = "exceptional plump pie"
		desc = "Microwave is taken by a fey mood! It has cooked an exceptional plump pie!"
		bonus_reagents = list("nutriment" = 1, "omnizine" = 5, "vitamin" = 4)
	if(fey)
		reagents.add_reagent("omnizine", 5)


/obj/item/reagent_containers/food/snacks/pie/xemeatpie
	name = "mutant pie"
	icon_state = "xenomeatpie"
	desc = "A delicious meatpie. Probably mutagenic."
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	tastes = list("pie" = 1, "meat" = 1, "acid" = 1)
	foodtype = GRAIN | MEAT


/obj/item/reagent_containers/food/snacks/pie/applepie
	name = "apple pie"
	desc = "A pie containing sweet sweet love...or apple."
	icon_state = "applepie"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	tastes = list("pie" = 1, "apple" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/pie/cherrypie
	name = "cherry pie"
	desc = "Taste so good, make a grown man cry."
	icon_state = "cherrypie"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	tastes = list("pie" = 7, "Nicole Paige Brooks" = 2)
	foodtype = GRAIN | FRUIT | SUGAR


/obj/item/reagent_containers/food/snacks/pie/pumpkinpie
	name = "pumpkin pie"
	desc = "A delicious treat for the autumn months."
	icon_state = "pumpkinpie"
	slice_path = /obj/item/reagent_containers/food/snacks/pumpkinpieslice
	slices_num = 5
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	tastes = list("pie" = 1, "pumpkin" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pumpkinpieslice
	name = "pumpkin pie slice"
	desc = "A slice of pumpkin pie, with whipped cream on top. Perfection."
	icon = 'icons/obj/food/piecake.dmi'
	icon_state = "pumpkinpieslice"
	filling_color = "#FFA500"
	list_reagents = list("nutriment" = 2)
	tastes = list("pie" = 1, "pumpkin" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pie/appletart
	name = "golden apple streusel tart"
	desc = "A tasty dessert that won't make it through a metal detector."
	icon_state = "gappletart"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 8, "gold" = 5, "vitamin" = 4)
	tastes = list("pie" = 1, "apple" = 1, "expensive metal" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/pie/grapetart
	name = "grape tart"
	desc = "A tasty dessert that reminds you of the wine you didn't make."
	icon_state = "grapetart"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 4, "vitamin" = 4)
	tastes = list("pie" = 1, "grape" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/pie/blumpkinpie
	name = "blumpkin pie"
	desc = "An odd blue pie made with toxic blumpkin."
	icon_state = "blumpkinpie"
	slice_path = /obj/item/reagent_containers/food/snacks/blumpkinpieslice
	slices_num = 5
	bonus_reagents = list("nutriment" = 3, "vitamin" = 6)
	tastes = list("pie" = 1, "a mouthful of pool water" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/blumpkinpieslice
	name = "blumpkin pie slice"
	desc = "A slice of blumpkin pie, with whipped cream on top. Is this edible?"
	icon = 'icons/obj/food/piecake.dmi'
	icon_state = "blumpkinpieslice"
	filling_color = "#1E90FF"
	list_reagents = list("nutriment" = 2)
	tastes = list("pie" = 1, "a mouthful of pool water" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pie/dulcedebatata
	name = "dulce de batata"
	desc = "A delicious jelly made with sweet potatoes."
	icon_state = "dulcedebatata"
	slice_path = /obj/item/reagent_containers/food/snacks/dulcedebatataslice
	slices_num = 5
	bonus_reagents = list("nutriment" = 4, "vitamin" = 8)
	tastes = list("jelly" = 1, "sweet potato" = 1)
	foodtype = GRAIN | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/dulcedebatataslice
	name = "dulce de batata slice"
	desc = "A slice of sweet dulce de batata jelly."
	icon = 'icons/obj/food/piecake.dmi'
	icon_state = "dulcedebatataslice"
	filling_color = "#8B4513"
	list_reagents = list("nutriment" = 2)
	tastes = list("jelly" = 1, "sweet potato" = 1)
	foodtype = GRAIN | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/pie/frostypie
	name = "frosty pie"
	desc = "Tastes like blue and cold."
	icon_state = "frostypie"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 6)
	tastes = list("mint" = 1, "pie" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/pie/brahminpotpie
	name = "Brahmin potpie"
	icon_state = "Brahmin Pot Pie"
	desc = "A pot pie is a type of pie with a top pie crust, sometimes a bottom pie crust, consisting of flaky pastry This is filled with stewed brahmin tongue"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	tastes = list("pie" = 1, "meat" = 1, "gravy" = 1)
	bitesize = 4
	foodtype = GRAIN | MEAT

//////////////////////////////////////////////////
/////////////////// PIZZA /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/pizza
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	slices_num = 6
	volume = 80
	list_reagents = list("nutriment" = 30, "tomatojuice" = 6, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizzaslice
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	list_reagents = list("nutriment" = 5)
	foodtype = GRAIN | DAIRY | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizza/margherita
	name = "pizza margherita"
	desc = "The most cheezy pizza in America."
	icon_state = "pizzamargherita"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/margherita
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizzaslice/margherita
	name = "margherita slice"
	desc = "A slice of the most cheezy pizza in America."
	icon_state = "pizzamargheritaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizza/meat
	name = "meatpizza"
	desc = "Greasy pizza with delicious meat."
	icon_state = "meatpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/meat
	bonus_reagents = list("nutriment" = 5, "vitamin" = 8)
	list_reagents = list("nutriment" = 30, "tomatojuice" = 6, "vitamin" = 8)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES| DAIRY | MEAT

/obj/item/reagent_containers/food/snacks/pizzaslice/meat
	name = "meatpizza slice"
	desc = "A nutritious slice of meatpizza."
	icon_state = "meatpizzaslice"
	filling_color = "#A52A2A"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT

/obj/item/reagent_containers/food/snacks/pizza/mushroom
	name = "mushroom pizza"
	desc = "Very special pizza."
	icon_state = "mushroompizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mushroom
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 30, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/mushroom
	name = "mushroom pizza slice"
	desc = "Maybe it is the last slice of pizza in your life."
	icon_state = "mushroompizzaslice"
	filling_color = "#FFE4C4"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/vegetable
	name = "vegetable pizza"
	desc = "No one of Tomatos Sapiens were harmed during making this pizza."
	icon_state = "vegetablepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/vegetable
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 25, "tomatojuice" = 6, "oculine" = 12, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 2, "cheese" = 1, "carrot" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/vegetable
	name = "vegetable pizza slice"
	desc = "A slice of the most green pizza of all pizzas not containing green ingredients."
	icon_state = "vegetablepizzaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 2, "cheese" = 1, "carrot" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/donkpocket
	name = "donkpocket pizza"
	desc = "Who thought this would be a good idea?"
	icon_state = "donkpocketpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/donkpocket
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 25, "tomatojuice" = 6, "omnizine" = 10, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1, "laziness" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | JUNKFOOD

/obj/item/reagent_containers/food/snacks/pizzaslice/donkpocket
	name = "donkpocket pizza slice"
	desc = "Smells like donkpocket."
	icon_state = "donkpocketpizzaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1, "laziness" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | JUNKFOOD

/obj/item/reagent_containers/food/snacks/pizza/dank
	name = "dank pizza"
	desc = "The hippie's pizza of choice."
	icon_state = "dankpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/dank
	bonus_reagents = list("nutriment" = 2, "vitamin" = 6)
	list_reagents = list("nutriment" = 25, "doctorsdelight" = 5, "tomatojuice" = 6, "vitamin" = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | FRUIT | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/dank
	name = "dank pizza slice"
	desc = "So good, man..."
	icon_state = "dankpizzaslice"
	filling_color = "#2E8B57"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | FRUIT | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/sassysage
	name = "sassysage pizza"
	desc = "You can really smell the sassiness."
	icon_state = "sassysagepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/sassysage
	bonus_reagents = list("nutriment" = 6, "vitamin" = 6)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/sassysage
	name = "sassysage pizza slice"
	desc = "Deliciously sassy."
	icon_state = "sassysagepizzaslice"
	filling_color = "#FF4500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/pineapple
	name = "\improper Hawaiian pizza"
	desc = "The pizza equivalent of Einstein's riddle."
	icon_state = "pineapplepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/pineapple
	bonus_reagents = list("nutriment" = 6, "vitamin" = 6)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 2, "ham" = 2)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | FRUIT | PINEAPPLE

/obj/item/reagent_containers/food/snacks/pizzaslice/pineapple
	name = "\improper Hawaiian pizza slice"
	desc = "A slice of delicious controversy."
	icon_state = "pineapplepizzaslice"
	filling_color = "#FF4500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 2, "ham" = 2)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | FRUIT | PINEAPPLE

/obj/item/reagent_containers/food/snacks/pizzaslice/custom
	name = "pizza slice"
	icon_state = "pizzamargheritaslice"
	filling_color = "#FFFFFF"
	foodtype = GRAIN | VEGETABLES

//////////////////////////////////////////////////
/////////////////// SALAD /////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/salad
	icon = 'icons/obj/food/soupsalad.dmi'
	trash = /obj/item/reagent_containers/glass/bowl
	bitesize = 3
	w_class = WEIGHT_CLASS_NORMAL
	list_reagents = list("nutriment" = 7, "vitamin" = 2)
	tastes = list("leaves" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/salad/Initialize()
	. = ..()
	eatverb = pick("crunch","devour","nibble","gnaw","gobble","chomp") //who the fuck gnaws and devours on a salad

/obj/item/reagent_containers/food/snacks/salad/aesirsalad
	name = "\improper Aesir salad"
	desc = "Probably too incredible for mortal men to fully enjoy."
	icon_state = "aesirsalad"
	bonus_reagents = list("omnizine" = 2, "vitamin" = 6)
	list_reagents = list("nutriment" = 8, "omnizine" = 8, "vitamin" = 6)
	tastes = list("leaves" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/salad/herbsalad
	name = "herb salad"
	desc = "A tasty salad with apples on top."
	icon_state = "herbsalad"
	bonus_reagents = list("vitamin" = 4)
	list_reagents = list("nutriment" = 8, "vitamin" = 2)
	tastes = list("leaves" = 1, "apple" = 1)
	foodtype = VEGETABLES | FRUIT

/obj/item/reagent_containers/food/snacks/salad/validsalad
	name = "valid salad"
	desc = "It's just an herb salad with meatballs and fried potato slices. Nothing suspicious about it."
	icon_state = "validsalad"
	bonus_reagents = list("doctorsdelight" = 5, "vitamin" = 4)
	list_reagents = list("nutriment" = 8, "doctorsdelight" = 5, "vitamin" = 2)
	tastes = list("leaves" = 1, "potato" = 1, "meat" = 1, "valids" = 1)
	foodtype = VEGETABLES | MEAT | FRIED | JUNKFOOD | FRUIT

/obj/item/reagent_containers/food/snacks/salad/oatmeal
	name = "oatmeal"
	desc = "A nice bowl of oatmeal."
	icon_state = "oatmeal"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 7, "milk" = 10, "vitamin" = 2)
	tastes = list("oats" = 1, "milk" = 1)
	foodtype = DAIRY | GRAIN

/obj/item/reagent_containers/food/snacks/salad/fruit
	name = "fruit salad"
	desc = "Your standard fruit salad."
	icon_state = "fruitsalad"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 4)
	tastes = list("fruit" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/salad/jungle
	name = "jungle salad"
	desc = "Exotic fruits in a bowl."
	icon_state = "junglesalad"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 7, "banana" = 5, "vitamin" = 4)
	tastes = list("fruit" = 1, "the jungle" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/salad/citrusdelight
	name = "citrus delight"
	desc = "Citrus overload!"
	icon_state = "citrusdelight"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 7, "vitamin" = 5)
	tastes = list("sourness" = 1, "leaves" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/salad/ricebowl
	name = "ricebowl"
	desc = "A bowl of raw rice."
	icon_state = "ricebowl"
	cooked_type = /obj/item/reagent_containers/food/snacks/salad/boiledrice
	list_reagents = list("nutriment" = 4)
	tastes = list("rice" = 1)
	foodtype = GRAIN | RAW

/obj/item/reagent_containers/food/snacks/salad/boiledrice
	name = "boiled rice"
	desc = "A warm bowl of rice."
	icon_state = "boiledrice"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	tastes = list("rice" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/salad/ricepudding
	name = "rice pudding"
	desc = "Everybody loves rice pudding!"
	icon_state = "ricepudding"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 2)
	tastes = list("rice" = 1, "sweetness" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/salad/ricepork
	name = "rice and pork"
	desc = "Well, it looks like pork..."
	icon_state = "riceporkbowl"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 4)
	tastes = list("rice" = 1, "meat" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/salad/eggbowl
	name = "egg bowl"
	desc = "A bowl of rice with a fried egg."
	icon_state = "eggbowl"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 4)
	tastes = list("rice" = 1, "egg" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/salad/tatosalad
	name = "tato salad"
	desc = "Strips of fried brahmin meat and fried tato slices on a bed of razorgrain grits. It has grated xander root sprinkled on top."
	icon_state = "Tato Salad"
	bonus_reagents = list("vitamin" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 8, "vitamin" = 6)
	tastes = list("leaves" = 1, "old ketchup" = 1, "fatty meat" = 1, "salty Turnip" = 1)
	foodtype = VEGETABLES | MEAT | GRAIN

/obj/item/reagent_containers/food/snacks/salad/desertsalad
	name = "desert salad"
	desc = "A tasty cactus salad topped with brahamin bits and roasted nuts."
	icon_state = "Desert Salad"
	bonus_reagents = list("vitamin" = 4)
	list_reagents = list("nutriment" = 8, "vitamin" = 2)
	tastes = list("tender meat" = 1, "acidic cactus" = 3, "crunchy nuts" = 1)
	foodtype = VEGETABLES | FRUIT | MEAT

//////////////////////////////////////////////////
///////////////// SANDWICH  //////////////////////
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/sandwich
	name = "sandwich"
	desc = "A grand creation of meat, cheese, bread, and several leaves of lettuce! Arthur Dent would be proud."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "sandwich"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "vitamin" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/toastedsandwich
	tastes = list("meat" = 2, "cheese" = 1, "bread" = 2, "lettuce" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/toastedsandwich
	name = "toasted sandwich"
	desc = "Now if you only had a pepper bar."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "toastedsandwich"
	bonus_reagents = list("nutriment" = 1, "carbon" = 2)
	list_reagents = list("nutriment" = 6, "carbon" = 2)
	tastes = list("toast" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/grilledcheese
	name = "grilled cheese sandwich"
	desc = "Goes great with Tomato soup!"
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "toastedsandwich"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 7, "vitamin" = 1)
	tastes = list("toast" = 1, "cheese" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/jellysandwich
	name = "jelly sandwich"
	desc = "You wish you had some peanut butter to go with this..."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "jellysandwich"
	bitesize = 3
	tastes = list("bread" = 1, "jelly" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/jellysandwich/slime
	bonus_reagents = list("slimejelly" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 2, "slimejelly" = 5, "vitamin" = 2)
	foodtype  = GRAIN | TOXIC

/obj/item/reagent_containers/food/snacks/jellysandwich/cherry
	bonus_reagents = list("cherryjelly" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 2, "cherryjelly" = 5, "vitamin" = 2)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/icecreamsandwich
	name = "icecream sandwich"
	desc = "Portable Ice-cream in its own packaging."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "icecreamsandwich"
	bonus_reagents = list("nutriment" = 1, "ice" = 2)
	list_reagents = list("nutriment" = 2, "ice" = 2)
	tastes = list("ice cream" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/notasandwich
	name = "not-a-sandwich"
	desc = "Something seems to be wrong with this, you can't quite figure what. Maybe it's his moustache."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "notasandwich"
	bonus_reagents = list("vitamin" = 6)
	list_reagents = list("nutriment" = 6, "vitamin" = 6)
	tastes = list("nothing suspicious" = 1)
	foodtype = GRAIN | GROSS

/obj/item/reagent_containers/food/snacks/jelliedtoast
	name = "jellied toast"
	desc = "A slice of toast covered with delicious jam."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "jellytoast"
	bitesize = 3
	tastes = list("toast" = 1, "jelly" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/jelliedtoast/cherry
	bonus_reagents = list("cherryjelly" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 1, "cherryjelly" = 5, "vitamin" = 2)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/jelliedtoast/slime
	bonus_reagents = list("slimejelly" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 1, "slimejelly" = 5, "vitamin" = 2)
	foodtype = GRAIN | TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/twobread
	name = "two bread"
	desc = "This seems awfully bitter."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "twobread"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 2, "vitamin" = 2)
	tastes = list("bread" = 2)
	foodtype = GRAIN

//////////////////////////////////////////////////
/////////////////// SPHAG/NOOD ///////////////////
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/spaghetti
	name = "spaghetti"
	desc = "Now that's a nic'e pasta!"
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "spaghetti"
	list_reagents = list("nutriment" = 1, "vitamin" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/boiledspaghetti
	filling_color = "#F0E68C"
	tastes = list("pasta" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/boiledspaghetti
	name = "boiled spaghetti"
	desc = "A plain dish of noodles, this needs more ingredients."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "spaghettiboiled"
	bonus_reagents = list("nutriment" = 2)
	list_reagents = list("nutriment" = 2, "vitamin" = 1)
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/pasta
	filling_color = "#F0E68C"
	tastes = list("pasta" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/pastatomato
	name = "spaghetti"
	desc = "Spaghetti and crushed tomatoes. Just like your abusive father used to make!"
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "pastatomato"
	bitesize = 4
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 10, "vitamin" = 4)
	list_reagents = list("nutriment" = 6, "tomatojuice" = 10, "vitamin" = 4)
	filling_color = "#DC143C"
	tastes = list("pasta" = 1, "tomato" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/copypasta
	name = "copypasta"
	desc = "You probably shouldn't try this, you always hear people talking about how bad it is..."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "copypasta"
	bitesize = 4
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 12, "tomatojuice" = 20, "vitamin" = 8)
	filling_color = "#DC143C"
	tastes = list("pasta" = 1, "tomato" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/meatballspaghetti
	name = "spaghetti and meatballs"
	desc = "Now that's a nic'e meatball!"
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "meatballspaghetti"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	list_reagents = list("nutriment" = 8, "vitamin" = 4)
	filling_color = "#F0E68C"
	tastes = list("pasta" = 1, "tomato" = 1, "meat" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/spesslaw
	name = "spesslaw"
	desc = "A lawyers favourite."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "spesslaw"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 6)
	list_reagents = list("nutriment" = 8, "vitamin" = 6)
	filling_color = "#F0E68C"
	tastes = list("pasta" = 1, "tomato" = 1, "meat" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/chowmein
	name = "chow mein"
	desc = "A nice mix of noodles and fried vegetables."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "chowmein"
	trash = /obj/item/reagent_containers/glass/bowl
	bonus_reagents = list("nutriment" = 3, "vitamin" = 4)
	list_reagents = list("nutriment" = 7, "vitamin" = 6)
	tastes = list("noodle" = 1, "tomato" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/beefnoodle
	name = "beef noodle"
	desc = "Nutritious, beefy and noodly."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "beefnoodle"
	trash = /obj/item/reagent_containers/glass/bowl
	bonus_reagents = list("nutriment" = 5, "vitamin" = 6, "liquidgibs" = 3)
	tastes = list("noodle" = 1, "meat" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/butternoodles
	name = "butter noodles"
	desc = "Noodles covered in savory butter. Simple and slippery, but delicious."
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "butternoodles"
	bonus_reagents = list("nutriment" = 8, "vitamin" = 1)
	tastes = list("noodle" = 1, "butter" = 1)
	foodtype = GRAIN | DAIRY

//////////////////////////////////////////////////
/////////////////// SOUP ///////////////////////// 
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/soup
	w_class = WEIGHT_CLASS_NORMAL
	icon = 'icons/obj/food/soupsalad.dmi'
	trash = /obj/item/reagent_containers/glass/bowl
	bitesize = 5
	volume = 80
	list_reagents = list("nutriment" = 8, "water" = 5, "vitamin" = 4)
	tastes = list("tasteless soup" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/Initialize()
	. = ..()
	eatverb = pick("slurp","sip","suck","inhale","drink")

/obj/item/reagent_containers/food/snacks/soup/wish
	name = "wish soup"
	desc = "I wish this was soup."
	icon_state = "wishsoup"
	list_reagents = list("water" = 10)
	tastes = list("wishes" = 1)

/obj/item/reagent_containers/food/snacks/soup/wish/Initialize()
	. = ..()
	var/wish_true = prob(25)
	if(wish_true)
		desc = "A wish come true!"
		bonus_reagents = list("nutriment" = 9, "vitamin" = 1)
	if(wish_true)
		reagents.add_reagent("nutriment", 9)
		reagents.add_reagent("vitamin", 1)
		foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/meatball
	name = "meatball soup"
	desc = "You've got balls kid, BALLS!"
	icon_state = "meatballsoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	tastes = list("meat" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/soup/slime
	name = "slime soup"
	desc = "If no water is available, you may substitute tears."
	icon_state = "slimesoup"
	bonus_reagents = list("nutriment" = 1, "slimejelly" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 5, "slimejelly" = 5, "water" = 5, "vitamin" = 4)
	tastes = list("slime" = 1)
	foodtype = TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/soup/blood
	name = "tomato soup"
	desc = "Smells like copper."
	icon_state = "tomatosoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 6)
	list_reagents = list("nutriment" = 2, "blood" = 10, "water" = 5, "vitamin" = 4)
	tastes = list("iron" = 1)
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/soup/wingfangchu
	name = "wing fang chu"
	desc = "A savory dish of alien wing wang in soy."
	icon_state = "wingfangchu"
	trash = /obj/item/reagent_containers/glass/bowl
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "soysauce" = 5, "vitamin" = 2)
	tastes = list("soy" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/soup/clownstears
	name = "clown's tears"
	desc = "Not very funny."
	icon_state = "clownstears"
	bonus_reagents = list("nutriment" = 1, "banana" = 5, "vitamin" = 8, "clownstears" = 10)
	list_reagents = list("nutriment" = 4, "banana" = 5, "water" = 5, "vitamin" = 8, "clownstears" = 10)
	tastes = list("a bad joke" = 1)
	foodtype = FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/soup/vegetable
	name = "vegetable soup"
	desc = "A true vegan meal."
	icon_state = "vegetablesoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 4)
	tastes = list("vegetables" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/nettle
	name = "nettle soup"
	desc = "To think, the botanist would've beat you to death with one of these."
	icon_state = "nettlesoup"
	bonus_reagents = list("nutriment" = 1, "omnizine" = 5, "vitamin" = 5)
	tastes = list("nettles" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/mystery
	name = "mystery soup"
	desc = "The mystery is, why aren't you eating it?"
	icon_state = "mysterysoup"
	var/extra_reagent = null
	list_reagents = list("nutriment" = 6)
	tastes = list("chaos" = 1)

/obj/item/reagent_containers/food/snacks/soup/mystery/Initialize()
	. = ..()
	extra_reagent = pick("capsaicin", "frostoil", "omnizine", "banana", "blood", "slimejelly", "toxin", "banana", "carbon", "oculine")
	bonus_reagents = list("[extra_reagent]" = 5, "nutriment" = 6)
	reagents.add_reagent("[extra_reagent]", 5)

/obj/item/reagent_containers/food/snacks/soup/hotchili
	name = "hot chili"
	desc = "A five alarm Texan Chili!"
	icon_state = "hotchili"
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 5, "capsaicin" = 1, "tomatojuice" = 2, "vitamin" = 2)
	tastes = list("hot peppers" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/coldchili
	name = "cold chili"
	desc = "This slush is barely a liquid!"
	icon_state = "coldchili"
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 5, "frostoil" = 1, "tomatojuice" = 2, "vitamin" = 2)
	tastes = list("tomato" = 1, "mint" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/monkeysdelight
	name = "monkey's delight"
	desc = "A delicious soup with dumplings and hunks of monkey meat simmered to perfection, in a broth that tastes faintly of bananas."
	icon_state = "monkeysdelight"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 10, "banana" = 5, "vitamin" = 5)
	tastes = list("the jungle" = 1, "banana" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/soup/tomato
	name = "tomato soup"
	desc = "Drinking this feels like being a vampire! A tomato vampire..."
	icon_state = "tomatosoup"
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 10, "vitamin" = 3)
	list_reagents = list("nutriment" = 5, "tomatojuice" = 10, "vitamin" = 3)
	tastes = list("tomato" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/tomato/eyeball
	name = "eyeball soup"
	desc = "It looks back at you..."
	icon_state = "eyeballsoup"
	bonus_reagents = list("nutriment" = 1, "liquidgibs" = 3)
	tastes = list("tomato" = 1, "squirming" = 1)
	foodtype = MEAT | GROSS

/obj/item/reagent_containers/food/snacks/soup/milo
	name = "milosoup"
	desc = "The universes best soup! Yum!!!"
	icon_state = "milosoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	tastes = list("milo" = 1) // wtf is milo
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/soup/mushroom
	name = "chantrelle soup"
	desc = "A delicious and hearty mushroom soup."
	icon_state = "mushroomsoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 8, "vitamin" = 4)
	tastes = list("mushroom" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/beet
	name = "beet soup"
	desc = "Wait, how do you spell it again..?"
	icon_state = "beetsoup"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/beet/Initialize()
	. = ..()
	name = pick("borsch","bortsch","borstch","borsh","borshch","borscht")
	tastes = list(name = 1)


/obj/item/reagent_containers/food/snacks/soup/spacylibertyduff
	name = "liberty duff"
	desc = "Jello gelatin, from Alfred Hubbard's cookbook."
	icon_state = "spacylibertyduff"
	bitesize = 3
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "mushroomhallucinogen" = 6)
	tastes = list("jelly" = 1, "mushroom" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/amanitajelly
	name = "amanita jelly"
	desc = "Looks curiously toxic."
	icon_state = "amanitajelly"
	bitesize = 3
	bonus_reagents = list("nutriment" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 6, "mushroomhallucinogen" = 3, "amatoxin" = 6)
	tastes = list("jelly" = 1, "mushroom" = 1)
	foodtype = VEGETABLES | TOXIC

/obj/item/reagent_containers/food/snacks/soup/stew
	name = "stew"
	desc = "A nice and warm stew. Healthy and strong."
	icon_state = "stew"
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 10, "oculine" = 5, "tomatojuice" = 5, "vitamin" = 5)
	bitesize = 7
	volume = 100
	tastes = list("tomato" = 1, "carrot" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/soup/sweetpotato
	name = "sweet potato soup"
	desc = "Delicious sweet potato in soup form."
	icon_state = "sweetpotatosoup"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 5)
	tastes = list("sweet potato" = 1)
	foodtype = VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/soup/beet/red
	name = "red beet soup"
	desc = "Quite a delicacy."
	icon_state = "redbeetsoup"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 6)
	tastes = list("beet" = 1)
	foodtype = VEGETABLES

//SOPA DO MACACO SOPA DO MACACO FALLOUT 13
/obj/item/reagent_containers/food/snacks/soup/macaco
	name = "Macaco soup"
	desc = "To think, the monkey would've beat you to death and steal your gun."
	icon_state = "macaco"
	bonus_reagents = list("nutriment" = 1, "omnizine" = 5, "vitamin" = 5)
	tastes = list("Monkey" = 1)
	foodtype = MEAT | VEGETABLES


/obj/item/reagent_containers/food/snacks/soup/moleratstew
	name = "molerat stew"
	desc = "A nice and warm stew. Healthy and strong."
	icon_state = "stew"
	bonus_reagents = list("nutriment" = 1, "tomatojuice" = 5, "vitamin" = 5)
	list_reagents = list("nutriment" = 10, "oculine" = 5, "tomatojuice" = 5, "vitamin" = 5)
	bitesize = 7
	volume = 100
	tastes = list("gamey meat" = 1, "herbal notes" = 1, "filling stew" = 1)
	foodtype = VEGETABLES | MEAT

/obj/item/reagent_containers/food/snacks/grown/buffalogourd
	name = "Buffalo gourd soup"
	desc = "A tasty soup made with roasted gourd"
	icon_state = "Gourd Soup"
	bonus_reagents = list("nutriment" = 4, "vitamin" = 6)
	tastes = list("buttery flesh" = 1, "creamy soup" = 1)
	foodtype = VEGETABLES
	
//////////////////////////////////////////////////
/////////////////// VENDING //////////////////////
//////////////////////////////////////////////////
////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/candy
	name = "candy"
	desc = "Nougat love it or hate it."
	icon_state = "candy"
	list_reagents = list("nutriment" = 1, "sugar" = 3)
	junkiness = 25
	filling_color = "#D2691E"
	tastes = list("candy" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/sosjerky
	name = " Dunton House Beef Jerky"
	icon_state = "sosjerky"
	desc = "Pre-war beef jerky made from the finest cows."
	list_reagents = list("nutriment" = 1, "sugar" = 3, "sodiumchloride" = 2)
	junkiness = 25
	filling_color = "#8B0000"
	tastes = list("dried meat" = 1)
	foodtype = JUNKFOOD | MEAT | SUGAR

/obj/item/reagent_containers/food/snacks/sosjerky/healthy
	name = "homemade jerky"
	desc = "These smoked and dried chunks of beast-flesh remain chewy-licous and even somewhat nutritious for years, and years.."
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	junkiness = 0

/obj/item/reagent_containers/food/snacks/chips
    name = "potato crisps"
    desc = "A bag of spring valley potato crisps."
    icon_state = "chips"
    bitesize = 1
    list_reagents = list("nutriment" = 1, "sugar" = 3, "sodiumchloride" = 1)
    junkiness = 20
    filling_color = "#FFD700"
    tastes = list("salt" = 1, "crisps" = 1)
    foodtype = JUNKFOOD | FRIED

/obj/item/reagent_containers/food/snacks/no_raisin
	name = "4no raisins"
	icon_state = "4no_raisins"
	desc = "The best raisins in United States of America."
	list_reagents = list("nutriment" = 2, "sugar" = 4)
	junkiness = 25
	filling_color = "#8B0000"
	tastes = list("dried raisins" = 1)
	foodtype = JUNKFOOD | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/no_raisin/healthy
	name = "homemade raisins"
	desc = "Homemade raisins, the best in all of wasteland."
	list_reagents = list("nutriment" = 3, "vitamin" = 2)
	junkiness = 0
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/spacetwinkie
	name = "twinkie"
	icon_state = "space_twinkie"
	desc = "Guaranteed to survive longer than you will."
	list_reagents = list("sugar" = 4)
	junkiness = 25
	filling_color = "#FFD700"
	foodtype = JUNKFOOD | GRAIN | SUGAR

/obj/item/reagent_containers/food/snacks/cheesiehonkers
	name = "cheezy poofs"
	desc = "They're yummy, they're nutritious (well sort of), and they last forever without going stale - they're scrum-diddle-icious Cheezy Poofs, and giant mole rats just love 'em."
	icon_state = "cheesie_honkers"
	list_reagents = list("nutriment" = 1, "sugar" = 3)
	junkiness = 25
	filling_color = "#FFD700"
	tastes = list("cheese" = 5, "crisps" = 2)
	foodtype = JUNKFOOD | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/syndicake
	name = "funnel cake"
	icon_state = "syndi_cakes"
	desc = "An extremely moist snack cake that tastes just as good after being nuked."
	list_reagents = list("nutriment" = 4, "doctorsdelight" = 5)
	filling_color = "#F5F5DC"
	tastes = list("sweetness" = 3, "cake" = 1)
	foodtype = GRAIN | FRUIT | VEGETABLES

//////////////////////////////////////////////////
/////////////////// OTHER   //////////////////////
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/store/cheesewheel
	name = "cheese wheel"
	desc = "A big wheel of delcious Cheddar."
	icon_state = "cheesewheel"
	slice_path = /obj/item/reagent_containers/food/snacks/cheesewedge
	slices_num = 5
	list_reagents = list("nutriment" = 15, "vitamin" = 5)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("cheese" = 1)
	foodtype = DAIRY

/obj/item/reagent_containers/food/snacks/cheesewedge
	name = "cheese wedge"
	desc = "A wedge of delicious Cheddar. The cheese wheel it was cut from can't have gone far."
	icon_state = "cheesewedge"
	filling_color = "#FFD700"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	tastes = list("cheese" = 1)
	foodtype = DAIRY

/obj/item/reagent_containers/food/snacks/watermelonslice
	name = "watermelon slice"
	desc = "A slice of watery goodness."
	icon_state = "watermelonslice"
	filling_color = "#FF1493"
	tastes = list("watermelon" = 1)
	foodtype = FRUIT
	juice_results = list("watermelonjuice" = 5)

/obj/item/reagent_containers/food/snacks/candy_corn
	name = "candy corn"
	desc = "It's a handful of candy corn. Can be stored in a detective's hat."
	icon_state = "candy_corn"
	list_reagents = list("nutriment" = 4, "sugar" = 2)
	filling_color = "#FF8C00"
	tastes = list("candy corn" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chocolatebar
	name = "chocolate bar"
	desc = "Such, sweet, fattening food."
	icon_state = "chocolatebar"
	list_reagents = list("nutriment" = 2, "sugar" = 2, "cocoa" = 2)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/hugemushroomslice
	name = "huge mushroom slice"
	desc = "A slice from a huge mushroom."
	icon_state = "hugemushroomslice"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	tastes = list("mushroom" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/popcorn
	name = "popcorn"
	desc = "Now let's find some cinema."
	icon_state = "popcorn"
	list_reagents = list("nutriment" = 2)
	bitesize = 0.1 //this snack is supposed to be eating during looooong time. And this it not dinner food! --rastaf0
	filling_color = "#FFEFD5"
	tastes = list("popcorn" = 3, "butter" = 1)
	foodtype = JUNKFOOD

/obj/item/reagent_containers/food/snacks/popcorn/Initialize()
	. = ..()
	eatverb = pick("bite","crunch","nibble","gnaw","gobble","chomp")

/obj/item/reagent_containers/food/snacks/loadedbakedpotato
	name = "loaded baked potato"
	desc = "Totally baked."
	icon_state = "loadedbakedpotato"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6)
	filling_color = "#D2B48C"
	tastes = list("potato" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/tatofries
	name = "tao fries"
	desc = "Tato fries are served hot, either soft or crispy, and are generally eaten through out the wasteland as part of lunch or dinner or by themselves as a snack."
	icon_state = "fries"
	list_reagents = list("nutriment" = 4)
	filling_color = "#FFD700"
	tastes = list("fries" = 1, "salt" = 1, "spoiled ketchup"=2)
	foodtype = VEGETABLES | GRAIN | FRIED

/obj/item/reagent_containers/food/snacks/tatotoot
	name = "tato toot"
	desc = "A large fried tato nugget."
	icon_state = "tatortot"
	list_reagents = list("nutriment" = 4)
	filling_color = "FFD700"
	tastes = list("tato" = 1, "spoiled ketchup" = 2)
	foodtype = FRIED | VEGETABLES

/obj/item/reagent_containers/food/snacks/fries
	name = "fries"
	desc = "Freedom fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack."
	icon_state = "fries"
	list_reagents = list("nutriment" = 4)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "salt" = 1)
	foodtype = VEGETABLES | GRAIN | FRIED

/obj/item/reagent_containers/food/snacks/tatortot
	name = "tator tot"
	desc = "A large fried potato nugget."
	icon_state = "tatortot"
	list_reagents = list("nutriment" = 4)
	filling_color = "FFD700"
	tastes = list("potato" = 3)
	foodtype = FRIED | VEGETABLES

/obj/item/reagent_containers/food/snacks/soydope
	name = "soy dope"
	desc = "Dope from a soy."
	icon_state = "soydope"
	list_reagents = list("nutriment" = 2)
	filling_color = "#DEB887"
	tastes = list("soy" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	icon_state = "cheesyfries"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "cheese" = 1)
	foodtype = VEGETABLES | GRAIN

/obj/item/reagent_containers/food/snacks/badrecipe
	name = "burned mess"
	desc = "Someone should be fired from cook for this."
	icon_state = "badrecipe"
	list_reagents = list("bad_food" = 25, "carbon" = 5)
	filling_color = "#8B4513"
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/carrotfries
	name = "carrot fries"
	desc = "Tasty fries from fresh Carrots."
	icon_state = "carrotfries"
	list_reagents = list("nutriment" = 3, "oculine" = 3, "vitamin" = 2)
	filling_color = "#FFA500"
	tastes = list("carrots" = 3, "salt" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/candiedapple
	name = "candied apple"
	desc = "An apple coated in sugary sweetness."
	icon_state = "candiedapple"
	bitesize = 3
	bonus_reagents = list("nutriment" = 2, "sugar" = 3)
	list_reagents = list("nutriment" = 3, "sugar" = 2)
	filling_color = "#FF4500"
	tastes = list("apple" = 2, "sweetness" = 2)
	foodtype = JUNKFOOD | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/mint
	name = "mint"
	desc = "It is only wafer thin."
	icon_state = "mint"
	bitesize = 1
	list_reagents = list("minttoxin" = 1)
	filling_color = "#800000"
	foodtype = TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/eggwrap
	name = "egg wrap"
	desc = "The precursor to Pigs in a Blanket."
	icon_state = "eggwrap"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 5)
	filling_color = "#F0E68C"
	tastes = list("egg" = 1)
	foodtype = MEAT | GRAIN

/obj/item/reagent_containers/food/snacks/beans
	name = "can of beans"
	desc = "A faded pre-war can of Greasy's baked beans."
	icon_state = "beans"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"
	tastes = list("beans" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/spidereggs
	name = "spider eggs"
	desc = "A cluster of juicy spider eggs. A great side dish for when you care not for your health."
	icon_state = "spidereggs"
	list_reagents = list("nutriment" = 2, "toxin" = 2)
	filling_color = "#008000"
	tastes = list("cobwebs" = 1)
	foodtype = MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/spiderling
	name = "spiderling"
	desc = "It's slightly twitching in your hand. Ew..."
	icon_state = "spiderling"
	list_reagents = list("nutriment" = 1, "toxin" = 4)
	filling_color = "#00800"
	tastes = list("cobwebs" = 1, "guts" = 2)
	foodtype = MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/spiderlollipop
	name = "spider lollipop"
	desc = "Still gross, but at least it has a mountain of sugar on it."
	icon_state = "spiderlollipop"
	list_reagents = list("nutriment" = 1, "toxin" = 1, "iron" = 10, "sugar" = 5, "omnizine" = 2) //lollipop, but vitamins = toxins
	filling_color = "#00800"
	tastes = list("cobwebs" = 1, "sugar" = 2)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chococoin
	name = "chocolate coin"
	desc = "A completely edible but nonflippable festive coin."
	icon_state = "chococoin"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "cocoa" = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/fudgedice
	name = "fudge dice"
	desc = "A little cube of chocolate that tends to have a less intense taste if you eat too many at once."
	icon_state = "chocodice"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "cocoa" = 1)
	filling_color = "#A0522D"
	tastes = list("fudge" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chocoorange
	name = "chocolate orange"
	desc = "A festive chocolate orange."
	icon_state = "chocoorange"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "sugar" = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 3, "oranges" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	icon_state = "eggplantparm"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	filling_color = "#BA55D3"
	tastes = list("eggplant" = 3, "cheese" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/tortilla
	name = "tortilla"
	desc = "The base for all your burritos."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "tortilla"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	filling_color = "#FFEFD5"
	tastes = list("tortilla" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/burrito
	name = "burrito"
	desc = "Tortilla wrapped goodness."
	icon_state = "burrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	filling_color = "#FFEFD5"
	tastes = list("torilla" = 2, "meat" = 3)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/cheesyburrito
	name = "cheesy burrito"
	desc = "It's a burrito filled with cheese."
	icon_state = "cheesyburrito"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "vitamin" = 2)
	filling_color = "#FFD800"
	tastes = list("torilla" = 2, "meat" = 3, "cheese" = 1)
	foodtype = GRAIN | MEAT | DAIRY

/obj/item/reagent_containers/food/snacks/carneburrito
	name = "carne asada burrito"
	desc = "The best burrito for meat lovers."
	icon_state = "carneburrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#A0522D"
	tastes = list("torilla" = 2, "meat" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/fuegoburrito
	name = "fuego lava burrito"
	desc = "A super spicy burrito."
	icon_state = "fuegoburrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 4, "capsaicin" = 5, "vitamin" = 3)
	filling_color = "#FF2000"
	tastes = list("torilla" = 2, "meat" = 3, "hot peppers" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/yakiimo
	name = "yaki imo"
	desc = "Made with roasted sweet potatoes!"
	icon_state = "yakiimo"
	list_reagents = list("nutriment" = 5, "vitamin" = 4)
	filling_color = "#8B1105"
	tastes = list("sweet potato" = 1)
	foodtype = GRAIN | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/roastparsnip
	name = "roast parsnip"
	desc = "Sweet and crunchy."
	icon_state = "roastparsnip"
	list_reagents = list("nutriment" = 3, "vitamin" = 4)
	filling_color = "#FF5500"
	tastes = list("parsnip" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/melonfruitbowl
	name = "melon fruit bowl"
	desc = "For people who wants edible fruit bowls."
	icon_state = "melonfruitbowl"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 4)
	filling_color = "#FF5500"
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("melon" = 1)
	foodtype = FRUIT

/obj/item/reagent_containers/food/snacks/spacefreezy
	name = "freezy"
	desc = "The best icecream in America."
	icon_state = "spacefreezy"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "bluecherryjelly" = 5, "vitamin" = 4)
	filling_color = "#87CEFA"
	tastes = list("blue cherries" = 2, "ice cream" = 2)
	foodtype = FRUIT | DAIRY

/obj/item/reagent_containers/food/snacks/sundae
	name = "sundae"
	desc = "A classic dessert."
	icon_state = "sundae"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "banana" = 5, "vitamin" = 2)
	filling_color = "#FFFACD"
	tastes = list("ice cream" = 1, "banana" = 1)
	foodtype = FRUIT | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/honkdae
	name = "honkdae"
	desc = "The clown's favorite dessert."
	icon_state = "honkdae"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "banana" = 10, "vitamin" = 4)
	filling_color = "#FFFACD"
	tastes = list("ice cream" = 1, "banana" = 1, "a bad joke" = 1)
	foodtype = FRUIT | DAIRY | SUGAR

/obj/item/reagent_containers/food/snacks/nachos
	name = "nachos"
	desc = "Chips from Mexico."
	icon_state = "nachos"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	filling_color = "#F4A460"
	tastes = list("nachos" = 1)
	foodtype = VEGETABLES | FRIED

/obj/item/reagent_containers/food/snacks/cheesynachos
	name = "cheesy nachos"
	desc = "The delicious combination of nachos and melting cheese."
	icon_state = "cheesynachos"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 3)
	filling_color = "#FFD700"
	tastes = list("nachos" = 2, "cheese" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/cubannachos
	name = "Cuban nachos"
	desc = "That's some dangerously spicy nachos."
	icon_state = "cubannachos"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 7, "capsaicin" = 8, "vitamin" = 4)
	filling_color = "#DC143C"
	tastes = list("nachos" = 2, "hot pepper" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/melonkeg
	name = "melon keg"
	desc = "Who knew vodka was a fruit?"
	icon_state = "melonkeg"
	bonus_reagents = list("nutriment" = 3, "vitamin" = 3)
	list_reagents = list("nutriment" = 9, "vodka" = 15, "vitamin" = 4)
	filling_color = "#FFD700"
	volume = 80
	bitesize = 5
	tastes = list("grain alcohol" = 1, "fruit" = 1)
	foodtype = FRUIT | ALCOHOL

/obj/item/reagent_containers/food/snacks/honeybar
	name = "honey nut bar"
	desc = "Oats and nuts compressed together into a bar, held together with a honey glaze."
	icon_state = "honeybar"
	bonus_reagents = list("nutriment" = 2, "honey" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 5, "honey" = 5)
	filling_color = "#F2CE91"
	tastes = list("oats" = 3, "nuts" = 2, "honey" = 1)
	foodtype = FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/stuffedlegion
	name = "stuffed legion"
	desc = "The former skull of a damned human, filled with goliath meat. It has a decorative lava pool made of ketchup and hotsauce."
	icon_state = "stuffed_legion"
	bonus_reagents = list("vitamin" = 3, "capsaicin" = 1, "tricordrazine" = 5)
	list_reagents = list("nutriment" = 5, "vitamin" = 5, "capsaicin" = 2, "tricordrazine" = 10)
	tastes = list("death" = 2, "rock" = 1, "meat" = 1, "hot peppers" = 1)
	foodtype = MEAT


/obj/item/reagent_containers/food/snacks/powercrepe
	name = "Powercrepe"
	desc = "With great power, comes great crepes.  It looks like a pancake filled with jelly but packs quite a punch."
	icon_state = "powercrepe"
	bonus_reagents = list("nutriment" = 5, "vitamin" = 3, "iron" = 10)
	list_reagents = list("nutriment" = 10, "vitamin" = 5, "cherryjelly" = 5)
	force = 20
	throwforce = 10
	block_chance = 50
	armour_penetration = 75
	attack_verb = list("slapped", "slathered")
	w_class = WEIGHT_CLASS_BULKY
	tastes = list("cherry" = 1, "crepe" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/lollipop
	name = "lollipop"
	desc = "A delicious lollipop. Makes for a great Valentine's present."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "lollipop_stick"
	list_reagents = list("nutriment" = 1, "vitamin" = 1, "iron" = 10, "sugar" = 5, "omnizine" = 2)	//Honk
	var/mutable_appearance/head
	var/headcolor = rgb(0, 0, 0)
	tastes = list("candy" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/lollipop/Initialize()
	. = ..()
	head = mutable_appearance('icons/obj/lollipop.dmi', "lollipop_head")
	change_head_color(rgb(rand(0, 255), rand(0, 255), rand(0, 255)))

/obj/item/reagent_containers/food/snacks/lollipop/proc/change_head_color(C)
	headcolor = C
	cut_overlay(head)
	head.color = C
	add_overlay(head)

/obj/item/reagent_containers/food/snacks/lollipop/throw_impact(atom/A)
	..(A)
	throw_speed = 1
	throwforce = 0

/obj/item/reagent_containers/food/snacks/lollipop/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/gumball
	name = "gumball"
	desc = "A colorful, sugary gumball."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "gumball"
	list_reagents = list("sugar" = 5, "bicaridine" = 2, "kelotane" = 2)	//Kek
	tastes = list("candy")
	foodtype = JUNKFOOD

/obj/item/reagent_containers/food/snacks/gumball/Initialize()
	. = ..()
	color = rgb(rand(0, 255), rand(0, 255), rand(0, 255))

/obj/item/reagent_containers/food/snacks/gumball/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/gumball/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/taco
	name = "taco"
	desc = "A traditional taco with meat, cheese, and lettuce."
	icon_state = "taco"
	bonus_reagents = list("nutriment" = 3, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "vitamin" = 2)
	filling_color = "F0D830"
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2, "lettuce" = 1)
	foodtype = MEAT | DAIRY | GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/taco/plain
	desc = "A traditional taco with meat and cheese, minus the rabbit food."
	icon_state = "taco_plain"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2)
	foodtype = MEAT | DAIRY | GRAIN

/obj/item/reagent_containers/food/snacks/branrequests
	name = "Bran Requests Cereal"
	desc = "A dry cereal that satiates your requests for bran. Tastes uniquely like raisins and salt."
	icon_state = "bran_requests"
	list_reagents = list("nutriment" = 3, "vitamin" = 2, "sodiumchloride" = 5)
	bonus_reagents = list("sodiumchloride" = 10)
	tastes = list("bran" = 4, "raisins" = 3, "salt" = 1)
	foodtype = GRAIN | FRUIT

/obj/item/reagent_containers/food/snacks/butter
	name = "stick of butter"
	desc = "A stick of delicious, golden, fatty goodness."
	icon_state = "butter"
	list_reagents = list("nutriment" = 5)
	filling_color = "#FFD700"
	tastes = list("butter" = 1)
	foodtype = DAIRY

/obj/item/reagent_containers/food/snacks/onionrings
	name = "onion rings"
	desc = "Onion slices coated in batter."
	icon_state = "onionrings"
	list_reagents = list("nutriment" = 3)
	filling_color = "#C0C9A0"
	gender = PLURAL
	tastes = list("batter" = 3, "onion" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/pineappleslice
	name = "pineapple slice"
	desc = "A sliced piece of juicy pineapple."
	icon_state = "pineapple_slice"
	filling_color = "#F6CB0B"
	tastes = list("pineapple" = 1)
	foodtype = FRUIT | PINEAPPLE

/obj/item/reagent_containers/food/snacks/tinychocolate
	name = "chocolate"
	desc = "A tiny and sweet chocolate."
	icon_state = "tiny_chocolate"
	list_reagents = list("nutriment" = 1, "sugar" = 1, "cocoa" = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/tallow
	name = "Tallow"
	desc = "A block of pale waxy fat."
	icon_state = "butter"
	list_reagents = list("cooking_oil" = 20)
	filling_color = "#FFD700"
	tastes = list("sickly fat" = 1)
	foodtype = MEAT | JUNKFOOD | GROSS

/obj/item/reagent_containers/food/snacks/crunchymutfruit	
	name = "Crunchy Mutfruit"
	desc = "A juicy mutfruit with a crispy exterior layer."
	icon_state = "scotchegg"
	list_reagents = list("nutriment" = 4, "vitamin" = 2)
	filling_color = "#FFD700"
	tastes = list("crunchy sweetness" = 1, "warm butter"=1)
	foodtype = FRUIT
	
//////////////////////////////////////////////////
/////////////////// DOUGH ////////////////////////
//////////////////////////////////////////////////

/////////////////// Dough Ingredients ////////////////////////

/obj/item/reagent_containers/food/snacks/dough
	name = "dough"
	desc = "A piece of dough."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "dough"
	cooked_type = /obj/item/reagent_containers/food/snacks/store/bread/plain
	list_reagents = list("nutriment" = 6)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("dough" = 1)
	foodtype = GRAIN


// Dough + rolling pin = flat dough
/obj/item/reagent_containers/food/snacks/dough/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/kitchen/rollingpin))
		if(isturf(loc))
			new /obj/item/reagent_containers/food/snacks/flatdough(loc)
			to_chat(user, "<span class='notice'>You flatten [src].</span>")
			qdel(src)
		else
			to_chat(user, "<span class='warning'>You need to put [src] on a surface to roll it out!</span>")
	else
		..()


// sliceable into 3xdoughslices
/obj/item/reagent_containers/food/snacks/flatdough
	name = "flat dough"
	desc = "A flattened dough."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "flat dough"
	slice_path = /obj/item/reagent_containers/food/snacks/doughslice
	slices_num = 3
	cooked_type = /obj/item/reagent_containers/food/snacks/pizzabread
	list_reagents = list("nutriment" = 6)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("dough" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/pizzabread
	name = "pizza bread"
	desc = "Add ingredients to make a pizza."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "pizzabread"
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/pizza
	list_reagents = list("nutriment" = 7)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("bread" = 1)
	foodtype = GRAIN


/obj/item/reagent_containers/food/snacks/doughslice
	name = "dough slice"
	desc = "A slice of dough. Can be cooked into a bun."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "doughslice"
	cooked_type = /obj/item/reagent_containers/food/snacks/bun
	filling_color = "#CD853F"
	tastes = list("dough" = 1)
	foodtype = GRAIN


/obj/item/reagent_containers/food/snacks/bun
	name = "bun"
	desc = "A base for any self-respecting burger."
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "bun"
	list_reagents = list("nutriment" = 1)
	custom_food_type = /obj/item/reagent_containers/food/snacks/customizable/burger
	filling_color = "#CD853F"
	tastes = list("bun" = 1) // the bun tastes of bun.
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/cakebatter
	name = "cake batter"
	desc = "Cook it to get a cake."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "cakebatter"
	cooked_type = /obj/item/reagent_containers/food/snacks/store/cake/plain
	list_reagents = list("nutriment" = 9)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("batter" = 1)
	foodtype = GRAIN | DAIRY

// Cake batter + rolling pin = pie dough
/obj/item/reagent_containers/food/snacks/cakebatter/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/kitchen/rollingpin))
		if(isturf(loc))
			new /obj/item/reagent_containers/food/snacks/piedough(loc)
			to_chat(user, "<span class='notice'>You flatten [src].</span>")
			qdel(src)
		else
			to_chat(user, "<span class='warning'>You need to put [src] on a surface to roll it out!</span>")
	else
		..()

/obj/item/reagent_containers/food/snacks/piedough
	name = "pie dough"
	desc = "Cook it to get a pie."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "piedough"
	slice_path = /obj/item/reagent_containers/food/snacks/rawpastrybase
	slices_num = 3
	cooked_type = /obj/item/reagent_containers/food/snacks/pie/plain
	list_reagents = list("nutriment" = 9)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("dough" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/rawpastrybase
	name = "raw pastry base"
	desc = "Must be cooked before use."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "rawpastrybase"
	cooked_type = /obj/item/reagent_containers/food/snacks/pastrybase
	filling_color = "#CD853F"
	list_reagents = list("nutriment" = 1)
	tastes = list("raw pastry" = 1)
	foodtype = GRAIN | DAIRY

/obj/item/reagent_containers/food/snacks/pastrybase
	name = "pastry base"
	desc = "A base for any self-respecting pastry."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "pastrybase"
	list_reagents = list("nutriment" = 1)
	filling_color = "#CD853F"
	tastes = list("pastry" = 1)
	foodtype = GRAIN | DAIRY

//////////////////////////////////////////////////
/////////////////// DEEP FRY CODE ////////////////
//////////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/deepfryholder
	name = "Deep Fried Foods Holder Obj"
	desc = "If you can see this description the code for the deep fryer fucked up."
	icon = 'icons/obj/food/food.dmi'
	icon_state = ""
	bitesize = 2

/obj/item/reagent_containers/food/snacks/deepfryholder/Initialize(mapload, obj/item/fried)
	. = ..()
	name = fried.name //We'll determine the other stuff when it's actually removed
	appearance = fried.appearance
	layer = initial(layer)
	plane = initial(plane)
	lefthand_file = fried.lefthand_file
	righthand_file = fried.righthand_file
	item_state = fried.item_state
	desc = fried.desc
	w_class = fried.w_class
	slowdown = fried.slowdown
	equip_delay_self = fried.equip_delay_self
	equip_delay_other = fried.equip_delay_other
	strip_delay = fried.strip_delay
	species_exception = fried.species_exception
	item_flags = fried.item_flags
	obj_flags = fried.obj_flags

	if(istype(fried, /obj/item/reagent_containers/food/snacks))
		fried.reagents.trans_to(src, fried.reagents.total_volume)
		qdel(fried)
	else
		fried.forceMove(src)
		trash = fried

/obj/item/reagent_containers/food/snacks/deepfryholder/Destroy()
	if(trash)
		QDEL_NULL(trash)
	. = ..()

/obj/item/reagent_containers/food/snacks/deepfryholder/On_Consume(mob/living/eater)
	if(trash)
		QDEL_NULL(trash)
	..()

/obj/item/reagent_containers/food/snacks/deepfryholder/proc/fry(cook_time = 30)
	switch(cook_time)
		if(0 to 15)
			add_atom_colour(rgb(166,103,54), FIXED_COLOUR_PRIORITY)
			name = "lightly-fried [name]"
			desc = "[desc] It's been lightly fried in a deep fryer."
		if(16 to 49)
			add_atom_colour(rgb(103,63,24), FIXED_COLOUR_PRIORITY)
			name = "fried [name]"
			desc = "[desc] It's been fried, increasing its tastiness value by [rand(1, 75)]%."
		if(50 to 59)
			add_atom_colour(rgb(63,23,4), FIXED_COLOUR_PRIORITY)
			name = "deep-fried [name]"
			desc = "[desc] Deep-fried to perfection."
		if(60 to INFINITY)
			add_atom_colour(rgb(33,19,9), FIXED_COLOUR_PRIORITY)
			name = "the physical manifestation of the very concept of fried foods"
			desc = "A heavily-fried...something.  Who can tell anymore?"
	filling_color = color
	foodtype |= FRIED
