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

/obj/item/reagent_containers/food/snacks/meat/slab/wolf
	name = "dog meat"
	desc = "Some Asians love this stuff.<br>It does not taste too bad actually."
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	bitesize = 4 //Average animal
	filling_color = "#FA8072"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/wolf
	slice_path = null
	
/obj/item/reagent_containers/food/snacks/meat/slab/squirrel
    name = "squirrel meat"
    desc = "Squirrel meat, the staple of many wasteland dishes."
    list_reagents = list("nutriment" = 6, "vitamin" = 2)
    bitesize = 2
    filling_color = "#FA8072"
    cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/squirrel
    slice_path = null	
	
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

/obj/item/reagent_containers/food/snacks/meat/steak/wolf
	name = "dog steak"
	desc = "A dog steak does not look attractive, but some people eat worse things when it comes to survival.<br>What did you expect from roasted dog?"

/obj/item/reagent_containers/food/snacks/meat/steak/squirrel
    name = "squirrel steak"
    desc = "A steak made from a small slab of squirrel meat. It is, unsurprisingly, small."
    list_reagents = list("nutriment" = 9)
    bonus_reagents = list("vitamin" = 4)
	
/obj/item/reagent_containers/food/snacks/meat/steak/deathclaw
	name = "deathclaw steak"
	desc = "A piece of hot spicy meat, eaten by only the most worthy hunters - or the most rich clients."
	list_reagents = list("nutriment" = 10)
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10) //It wouldn't make sense for it to be worse than the normal


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

//WASTELAND JUNK FOOD

/obj/item/reagent_containers/food/snacks/f13
	name = "ERROR"
	desc = "Badmins spawn shit!"
	icon = 'icons/obj/food/food.dmi'

/obj/item/reagent_containers/food/snacks/f13/bubblegum
	name = "Bubblegum"
	desc = "A Big Pops branded bubblegum."
	icon_state = "bubblegum"
	bonus_reagents = list("radium" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 2, "sugar" = 2)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/bubblegum

/obj/item/reagent_containers/food/snacks/f13/bubblegum/large
	name = "big Bubblegum"
	desc = "A large \"Extra\" Big Pops branded bubblegum."
	icon_state = "bubblegum_large"
	bonus_reagents = list("radium" = 4, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "sugar" = 4)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/bubblegum_large

/obj/item/reagent_containers/food/snacks/f13/cram
	name = "Cram"
	desc = "A blue labeled tin of processed meat, primarily used as rations for soldiers during the pre-War times."
	icon_state = "cram"
	bonus_reagents = list("radium" = 2, "vitamin" = 5)
	list_reagents = list("nutriment" = 20)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/cram

/obj/item/reagent_containers/food/snacks/f13/cram/large
	name = "big Cram"
	desc = "A large blue labeled tin of processed meat, primarily used as rations for soldiers during the pre-War times."
	icon_state = "cram_large"
	bonus_reagents = list("radium" = 2, "vitamin" = 10)
	list_reagents = list("nutriment" = 40)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/cram_large

/obj/item/reagent_containers/food/snacks/f13/yumyum
	name = "YumYum"
	desc = "YumYum was a pre-War company in the United States, producing packaged foods.<br>YumYum Deviled Eggs was their major product."
	icon_state = "yumyum"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/yumyum

/obj/item/reagent_containers/food/snacks/f13/fancylads
	name = "Fancy Lads"
	desc = "The presence of snack cakes is a nod to the urban myth that Twinkies and other similar foods would survive a nuclear war.<br>The slogan is \"A big delight in every bite\"."
	icon_state = "fancylads"
	bonus_reagents = list("radium" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 20)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/fancylads

/obj/item/reagent_containers/food/snacks/f13/sugarbombs
	name = "Sugar Bombs"
	desc = "Sugar Bombs is a pre-War breakfast cereal that can be found all around the wasteland, packaged in white and blue boxes with a red ovoid logo at the top, fully labeled as \"Sugar Bombs breakfast cereal\"."
	icon_state = "sugarbombs"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 10, "sugar" = 10)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/sugarbombs

/obj/item/reagent_containers/food/snacks/f13/crisps
	name = "Crisps"
	desc = "Potato Crisps are packaged in a small red and green box, with a yellow bubble encouraging the purchaser to \"See Moon Map Offer on Back!\"."
	icon_state = "crisps"
	bonus_reagents = list("radium" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 5)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/crisps

/obj/item/reagent_containers/food/snacks/f13/steak
	name = "Salisbury Steak"
	desc = "A worn, red box displaying a picture of steak with the words \"Salisbury Steak\" at the top and \"now with Gravy!\" at the bottom."
	icon_state = "steak"
	bonus_reagents = list("radium" = 2, "vitamin" = 5)
	list_reagents = list("nutriment" = 50)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/steak

/obj/item/reagent_containers/food/snacks/f13/specialapples
	name = "Dandy Apples Special"
	desc = "Dandy Apples Special are a product from the pre-War company Dandy Boy. On the sides of the box there is some sort of apple mascot with a bowler hat, monocle and mustache."
	icon_state = "specialapples"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 10, "tricordrazine" = 10)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/specialapples

/obj/item/reagent_containers/food/snacks/f13/dandyapples
	name = "Dandy Boy Apples"
	desc = "Dandy Boy Apples are a product from the pre-War company Dandy Boy, consisting of candied apples packaged in a red cardboard box."
	icon_state = "dandyapples"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 10, "sugar" = 10)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/dandyapples

/obj/item/reagent_containers/food/snacks/f13/blamco
	name = "BlamCo"
	desc = "BlamCo was a pre-War company in the United States, producing packaged foods.<br>BlamCo Mac & Cheese was their major product.<br>Unlike other foods, like apples or eggs, wheat cannot be freeze-dried. How the macaroni remains edible is unclear."
	icon_state = "blamco"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 15)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/blamco

/obj/item/reagent_containers/food/snacks/f13/blamco/large
	name = "big BlamCo"
	desc = "BlamCo was a pre-War company in the United States, producing packaged foods.<br>BlamCo Mac & Cheese was their major product.<br>Unlike other foods, like apples or eggs, wheat cannot be freeze-dried. How the macaroni remains edible is unclear."
	icon_state = "blamco_large"
	bonus_reagents = list("radium" = 4, "vitamin" = 4)
	list_reagents = list("nutriment" = 30)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/blamco_large

/obj/item/reagent_containers/food/snacks/f13/mechanic
	name = "MechaMash"
	desc = "MechaMash is packaged in a white box with blue highlights, and a wrench logo printed on the front.<br>It appears to be a form of instant potatoes that smells like WD-40..."
	icon_state = "mechanist"
	bonus_reagents = list("radium" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 15)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/mechanist

/obj/item/reagent_containers/food/snacks/f13/instamash
	name = "InstaMash"
	desc = "InstaMash is packaged in a white box with blue highlights.<br>It appears to be a form of instant potatoes."
	icon_state = "instamash"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 15)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/instamash

/obj/item/reagent_containers/food/snacks/f13/porknbeans
	name = "Pork n' Beans"
	desc = "Pork n' Beans come in a small brown and orange tin, with a label that reads \"Greasy Prospector Improved Pork And Beans\".<br>Toward the bottom of the label is printed that the beans come \"With Hickory Smoked Pig Fat Chunks\"."
	icon_state = "porknbeans"
	bonus_reagents = list("radium" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 35)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/porknbeans

/obj/item/reagent_containers/food/snacks/f13/borscht
	name = "canned borscht"
	desc = "A faded label says something in Cyrillic, but you can't understand a thing.<br>\"KOHCEPBA BKYCHOTA TOMAT CMETAHA MOCKBA\"<br>\"cynep cyn!\"<br>An image of a plate with some red soup explains a lot."
	icon_state = "borscht"
	bonus_reagents = list("radium" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 35)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/borscht

/obj/item/reagent_containers/food/snacks/f13/dog //Max Rockatansky favorite
	name = "dog food"
	desc = "A can of greasy meat with a faded cartoon dog on the label.<br>Smells bad, tastes worse, but filling.<br>Not good enough to get bitten over, though." //Mad Max: Road Warrior 1981 dog food scene reference
	icon_state = "dog"
	bonus_reagents = list("radium" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 35)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/dog

/obj/item/reagent_containers/food/snacks/f13/mre
	name = "MRE"
	desc = "The Meal, Ready-to-Eat : commonly known as the MRE - is a self-contained, individual field ration in lightweight packaging.<br>It's commonly used by military groups for service members to use in combat or other field conditions where organized food facilities are not available."
	icon_state = "mre"
	bonus_reagents = list("silver_sulfadiazine" = 10, "tricordrazine" = 10, "vitamin" = 2)
	list_reagents = list("nutriment" = 30)
	filling_color = "#B22222"
	trash = /obj/item/trash/f13/mre

/obj/item/reagent_containers/food/snacks/f13/galette
	name = "dehydrated pea soup"
	desc = "A piece of military food ration.<br>Faded label on the front says: \"Dehydrated peas. Chew well, take with water. 60g.\""
	icon_state = "galette"
	bonus_reagents = list("sodiumchloride" = 2, "sugar" = 2, "tricordrazine" = 2)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"

//WASTELAND EGGS

/obj/item/reagent_containers/food/snacks/f13/deathclawegg
    name = "Deathclaw Egg"
    desc = "A deathclaw egg. It has a brownish-red shell. Look at this thing, it's as big as your torso!"
    icon_state = "deathclawegg"
    bonus_reagents = list("toxin" = 30)
    list_reagents = list("eggyolk" = 40)
    filling_color = "#F0E68C"

//WASTELAND PREPARED MEALS

/obj/item/reagent_containers/food/snacks/f13/molejerky
    name = "Molerat Wondermeat"
    desc = "Molerat meat cured with wonderglue in a metal container. Has a nutty aftertaste."
    icon_state = "baconcookedb"
    bonus_reagents = list("vitamin" = 5)
    list_reagents = list("nutriment" = 12)
    filling_color = "#B22222"

/obj/item/reagent_containers/food/snacks/f13/caravanlunch
    name = "Caravan Lunch"
    desc = "A collection of food with the radiation removed. Simple, fast and filling. Often eaten by merchants."
    icon_state = "lunchbox"
    bonus_reagents = list("vitamin" = 5)
    list_reagents = list("nutriment" = 50)
    filling_color = "B#22222"
    trash = /obj/item/crafting/lunchbox

/obj/item/reagent_containers/food/snacks/f13/wastelandwellington
    name = "Wasteland Wellington"
    desc = "Meat from wasteland critters wrapped in puffy pastry. Delicious, rich and certainly high class."
    icon_state = "meatbun"
    bonus_reagents = list("vitamin" = 5, "tricordrazine = 5")
    list_reagents = list("nutriment" = 30)
    filling_color = "B#22222"

/obj/item/reagent_containers/food/snacks/f13/deathclawomelette
    name = "Deathclaw Omelette"
    desc = "A delicious omelette made from one big deathclaw egg. Hope you're not allergic."
    icon_state = "deathclawomlette"
    bonus_reagents = list ("vitamin" = 5, "omnizine" = 40, "dexalin" = 10)
    list_reagents = list("nutriment" = 60)
    filling_color = "B#22222"

/obj/item/reagent_containers/food/snacks/f13/moleratstew
   name = "Molerat Stew"
   desc = "A hearty stew, simmered in beer with some vegetables. It's good, if you can get over the bitter taste of the meat."
   icon_state = "moleratstew"
   bonus_reagents = list("vitamin" = 5, "tricordrazine" = 5)
   list_reagents = list("nutriment" = 20)
   filling_color = "B#22222"

/obj/item/reagent_containers/food/snacks/f13/crispysquirrel
   name = "Crispy Squirrel Bits"
   desc = "Bits of squirrel meat roasted on a skewer. Tasty."
   icon_state = "squrrielbits"
   list_reagents = list("nutriment" = 12)
   filling_color = "B#22222"

/obj/item/reagent_containers/food/snacks/f13/squirrelstick
   name = "Squirrel on a Stick"
   desc = "It's a whole squirrel roasted on a stick. Tastes of home on the wastes."
   icon_state = "squrrielstick"
   list_reagents = list("nutriment" = 24)
   filling_color = "B#22222"

/obj/item/reagent_containers/food/snacks/f13/squirrelstew
   name = "Squirrel Stew"
   desc = "Stewed squirrel meat with veggies. There's more vegetable than meat."
   icon_state = "squrrielsoup"
   bonus_reagents = list("vitamin" = 6)
   list_reagents = list("nutriment" = 32)
   filling_color = "B#22222"

//Grownable
/*
/obj/item/reagent_containers/food/snacks/grown/broc
	seed = /obj/item/seeds/broc
	name = "broc flower"
	desc = "Broc flower grows on broc plants and can be used in the crafting of healing powder and stimpaks due to its mild healing properties."
	icon_state = "broc"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	//slot_flags = SLOT_HEAD
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/xander
	seed = /obj/item/seeds/xander
	name = "xander root"
	desc = "Xander root is a large, turnip-like root with mild healing properties.<br>It can easily be identified by its exposed head and tall green stalk protruding from a raised ring of dirt, resembling an onion.<br>Once collected, xander root can be used in the crafting of both healing powder and stimpaks."
	icon_state = "xander"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/mutfruit
	seed = /obj/item/seeds/mutfruit
	name = "mutfruit"
	desc = "Mutfruit provides both hydration and sustenance, and provides them at moderately higher levels than other fruits.<br>Be aware though - it gives a small amount of radiation to those who consume it."
	icon_state = "mutfruit"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/ferocactus
	seed = /obj/item/seeds/ferocactus
	name = "barrel cactus fruit"
	desc = "Barrel cactus fruit are found on ferocactus - a spherical cacti that can be encountered all over the wasteland.<br>They usually form in groups, with one large barrel cactus that contains the fruit surrounded by several smaller cacti."
	icon_state = "cactusfruit"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/shroom
	seed = /obj/item/seeds/shroom
	name = "shroom"
	desc = "An edible mushroom which has the ability to decrease radiation levels."
	icon_state = "shroom"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/glow
	seed = /obj/item/seeds/glow
	name = "glowing fungus"
	desc = "A cluster of small green mushrooms that exhibit a faint luminescence.<br>The fungus usually thrives in humid and radioactive locations, either on the floors of underground caves, or around pools of irradiated water."
	icon_state = "glow"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/agave
	seed = /obj/item/seeds/agave
	name = "agave"
	desc = "Strange grass. Looks safe."
	icon_state = "agave"
	icon = 'icons/fallout/objects/food&drinks/grown.dmi'
*/
