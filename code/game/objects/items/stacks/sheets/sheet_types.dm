/* Different misc types of sheets
 * Contains:
 * Metal
 * Plasteel
 * Wood
 * Cloth
 * Plastic
 * Cardboard
 * Paper Frames
 * Runed Metal (cult)
 * Brass (clockwork cult)
 * Bronze (bake brass)
 */

/*
 * Metal
 */
GLOBAL_LIST_INIT(metal_recipes, list ( \
	new/datum/stack_recipe("stool", /obj/item/chair/stool, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("chair", /obj/structure/chair, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("bed", /obj/structure/bed, 2, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new/datum/stack_recipe_list("bar stools", list( \
		new/datum/stack_recipe("classic bar stool", /obj/item/chair/stool/bar, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("red bar stool", /obj/item/chair/stool/retro, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("black bar stool", /obj/item/chair/stool/retro/black, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("tan bar stool", /obj/item/chair/stool/retro/tan, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("backed red bar stool", /obj/item/chair/stool/retro/backed, one_per_turf = TRUE, on_floor = TRUE), \
		)), \
	new/datum/stack_recipe_list("office chairs", list( \
		new/datum/stack_recipe("dark office chair", /obj/structure/chair/office/dark, 5, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("light office chair", /obj/structure/chair/office/light, 5, one_per_turf = TRUE, on_floor = TRUE), \
		)), \
	new/datum/stack_recipe_list("comfy chairs", list( \
		new/datum/stack_recipe("beige comfy chair", /obj/structure/chair/comfy/beige, 2, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("black comfy chair", /obj/structure/chair/comfy/black, 2, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("brown comfy chair", /obj/structure/chair/comfy/brown, 2, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("lime comfy chair", /obj/structure/chair/comfy/lime, 2, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("teal comfy chair", /obj/structure/chair/comfy/teal, 2, one_per_turf = TRUE, on_floor = TRUE), \
		)), \
	new/datum/stack_recipe_list("diner chairs", list( \
		new/datum/stack_recipe("single booth", /obj/structure/chair/booth, 2, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("right end booth", /obj/structure/chair/right, 3, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("middle booth", /obj/structure/chair/middle, 3, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("left end booth", /obj/structure/chair/left, 3, one_per_turf = TRUE, on_floor = TRUE), \
		)), \
	null, \
	new/datum/stack_recipe("shelf parts", /obj/item/rack_parts), \
	new/datum/stack_recipe("closet", /obj/structure/closet, 2, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new/datum/stack_recipe("canister", /obj/machinery/portable_atmospherics/canister, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new/datum/stack_recipe("floor tile", /obj/item/stack/tile/plasteel, 1, 4, 20), \
	new/datum/stack_recipe("metal rod", /obj/item/stack/rods, 1, 2, 60), \
	null, \
	new/datum/stack_recipe("wall girders", /obj/structure/girder, 2, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new/datum/stack_recipe("computer frame", /obj/structure/frame/computer, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("modular console", /obj/machinery/modular_computer/console/buildable/, 10, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("machine frame", /obj/structure/frame/machine, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new /datum/stack_recipe_list("airlock assemblies", list( \
		new /datum/stack_recipe("standard airlock assembly", /obj/structure/door_assembly, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("public airlock assembly", /obj/structure/door_assembly/door_assembly_public, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("command airlock assembly", /obj/structure/door_assembly/door_assembly_com, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("security airlock assembly", /obj/structure/door_assembly/door_assembly_sec, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("engineering airlock assembly", /obj/structure/door_assembly/door_assembly_eng, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("mining airlock assembly", /obj/structure/door_assembly/door_assembly_min, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("atmospherics airlock assembly", /obj/structure/door_assembly/door_assembly_atmo, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("research airlock assembly", /obj/structure/door_assembly/door_assembly_research, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("freezer airlock assembly", /obj/structure/door_assembly/door_assembly_fre, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("science airlock assembly", /obj/structure/door_assembly/door_assembly_science, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("medical airlock assembly", /obj/structure/door_assembly/door_assembly_med, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("virology airlock assembly", /obj/structure/door_assembly/door_assembly_viro, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("maintenance airlock assembly", /obj/structure/door_assembly/door_assembly_mai, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("external airlock assembly", /obj/structure/door_assembly/door_assembly_ext, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("external maintenance airlock assembly", /obj/structure/door_assembly/door_assembly_extmai, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("airtight hatch assembly", /obj/structure/door_assembly/door_assembly_hatch, 4, time = 50, one_per_turf = 1, on_floor = 1), \
		new /datum/stack_recipe("maintenance hatch assembly", /obj/structure/door_assembly/door_assembly_mhatch, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	)), \
	null, \
	new/datum/stack_recipe("firelock frame", /obj/structure/firelock_frame, 3, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("turret frame", /obj/machinery/porta_turret_construct, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("meatspike frame", /obj/structure/kitchenspike_frame, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("reflector frame", /obj/structure/reflector, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
	new/datum/stack_recipe("light fixture frame", /obj/item/wallframe/light_fixture, 2), \
	new/datum/stack_recipe("small light fixture frame", /obj/item/wallframe/light_fixture/small, 1), \
	null, \
	new/datum/stack_recipe("apc frame", /obj/item/wallframe/apc, 2), \
	new/datum/stack_recipe("air alarm frame", /obj/item/wallframe/airalarm, 2), \
	new/datum/stack_recipe("fire alarm frame", /obj/item/wallframe/firealarm, 2), \
	new/datum/stack_recipe("extinguisher cabinet frame", /obj/item/wallframe/extinguisher_cabinet, 2), \
	new/datum/stack_recipe("button frame", /obj/item/wallframe/button, 1), \
	null, \
	new/datum/stack_recipe("iron door", /obj/structure/simple_door/metal/store, 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("lock", /obj/item/lock_construct, 1), \
	new/datum/stack_recipe("key", /obj/item/key, 1), \
	new/datum/stack_recipe("key chain", /obj/item/storage/keys_set, 1), \
	new/datum/stack_recipe("metal parts", /obj/item/stack/crafting/metalparts, 5), \
	null, \
	new /datum/stack_recipe_list("racks", list( \
		new/datum/stack_recipe("garden toolrack", /obj/machinery/smartfridge/bottlerack/gardentool, 20), \
	)), \
	null, \
	null, \
	new/datum/stack_recipe("floodlight frame", /obj/structure/floodlight_frame, 5, one_per_turf = TRUE, on_floor = TRUE), \
))

/obj/item/stack/sheet/metal
	name = "metal"
	desc = "Sheets made out of metal."
	singular_name = "metal sheet"
	icon_state = "sheet-metal"
	item_state = "sheet-metal"
	materials = list(MAT_METAL=MINERAL_MATERIAL_AMOUNT)
	throwforce = 10
	flags_1 = CONDUCT_1
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/metal
	grind_results = list("iron" = 20)

/obj/item/stack/sheet/metal/ratvar_act()
	new /obj/item/stack/tile/brass(loc, amount)
	qdel(src)

/obj/item/stack/sheet/metal/narsie_act()
	new /obj/item/stack/sheet/runed_metal(loc, amount)
	qdel(src)

/obj/item/stack/sheet/metal/fifty
	amount = 50

/obj/item/stack/sheet/metal/twenty
	amount = 20

/obj/item/stack/sheet/metal/ten
	amount = 10

/obj/item/stack/sheet/metal/five
	amount = 5

/obj/item/stack/sheet/metal/cyborg
	materials = list()
	is_cyborg = 1
	cost = 500

/obj/item/stack/sheet/metal/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.metal_recipes
	return ..()

/obj/item/stack/sheet/metal/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins whacking [user.p_them()]self over the head with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/*
 * Plasteel
 */
GLOBAL_LIST_INIT(plasteel_recipes, list ( \
	new/datum/stack_recipe("AI core", /obj/structure/AIcore, 4, time = 50, one_per_turf = TRUE), \
	new/datum/stack_recipe("bomb assembly", /obj/machinery/syndicatebomb/empty, 10, time = 50), \
	null, \
	new /datum/stack_recipe_list("airlock assemblies", list( \
		new/datum/stack_recipe("high security airlock assembly", /obj/structure/door_assembly/door_assembly_highsecurity, 6, time = 50, one_per_turf = 1, on_floor = 1), \
		new/datum/stack_recipe("vault door assembly", /obj/structure/door_assembly/door_assembly_vault, 8, time = 50, one_per_turf = 1, on_floor = 1), \
	)), \
))

/obj/item/stack/sheet/plasteel
	name = "plasteel"
	singular_name = "plasteel sheet"
	desc = "This sheet is an matrix of iron and treated graphite."
	icon_state = "sheet-plasteel"
	item_state = "sheet-metal"
	materials = list(MAT_METAL=2000, MAT_PLASMA=2000)
	throwforce = 10
	flags_1 = CONDUCT_1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 80)
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/plasteel
	grind_results = list("iron" = 20, "plasma" = 20)

/obj/item/stack/sheet/plasteel/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.plasteel_recipes
	return ..()

/obj/item/stack/sheet/plasteel/twenty
	amount = 20

/obj/item/stack/sheet/plasteel/five
	amount = 5

/obj/item/stack/sheet/plasteel/fifty
	amount = 50

/*
 * Wood
 */
GLOBAL_LIST_INIT(wood_recipes, list ( \
	new/datum/stack_recipe("wooden sandals", /obj/item/clothing/shoes/sandal, 1), \
	new/datum/stack_recipe("wood floor tile", /obj/item/stack/tile/wood, 1, 4, 20), \
	new/datum/stack_recipe("wood table frame", /obj/structure/table_frame/wood, 2, time = 10), \
	new/datum/stack_recipe("rifle stock", /obj/item/weaponcrafting/stock, 10, time = 40), \
	new/datum/stack_recipe("rolling pin", /obj/item/kitchen/rollingpin, 2, time = 30), \
	new/datum/stack_recipe("chopping block", /obj/item/chopping_block, 2, time = 30), \
	new/datum/stack_recipe("wooden chair", /obj/structure/chair/wood/, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("fancy chair", /obj/structure/chair/wood/fancy, 3, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden bench", /obj/structure/chair/bench, 4, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("winged wooden chair", /obj/structure/chair/wood/wings, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden barricade", /obj/structure/barricade/wooden, 5, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden door", /obj/structure/simple_door/wood, 10, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("coffin", /obj/structure/closet/crate/coffin, 5, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("book case", /obj/structure/bookcase, 4, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("drying rack", /obj/machinery/smartfridge/drying_rack, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("dog bed", /obj/structure/bed/dogbed, 10, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("dresser", /obj/structure/dresser, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("picture frame", /obj/item/wallframe/picture, 1, time = 10),\
	new/datum/stack_recipe("display case chassis", /obj/structure/displaycase_chassis, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden buckler", /obj/item/shield/legion/buckler, 20, time = 40), \
	new/datum/stack_recipe("apiary", /obj/structure/beebox, 40, time = 50),\
	new/datum/stack_recipe("tiki mask", /obj/item/clothing/mask/gas/tiki_mask, 2), \
	new/datum/stack_recipe("honey frame", /obj/item/honey_frame, 5, time = 10),\
	new/datum/stack_recipe("cross", /obj/structure/kitchenspike/cross, 10, time = 10),\
	new/datum/stack_recipe("ore box", /obj/structure/ore_box, 4, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("wooden crate", /obj/structure/closet/crate/wooden, 6, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("baseball bat", /obj/item/twohanded/baseball, 5, time = 15),\
	new/datum/stack_recipe("bonfire", /obj/structure/bonfire, 30, time = 300, one_per_turf = TRUE),\
	new/datum/stack_recipe("loom", /obj/machinery/loom, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("grave marker", /obj/structure/statue/wood/headstonewood, 3, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	null, \
		new /datum/stack_recipe_list("booth tables", list( \
		new/datum/stack_recipe("booth table end", /obj/structure/booth, 2, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("booth table middle", /obj/structure/booth/middle, 2, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("booth table solo", /obj/structure/booth/single, 2, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	)), \
		new /datum/stack_recipe_list("racks", list( \
		new/datum/stack_recipe("bottle rack", /obj/machinery/smartfridge/bottlerack, 25, one_per_turf = TRUE, on_floor = TRUE), \
		new/datum/stack_recipe("seed bin", /obj/machinery/smartfridge/bottlerack/seedbin, 15, one_per_turf = TRUE, on_floor = TRUE), \
	)), \
	null, \
	new/datum/stack_recipe("seed extractor", /obj/structure/legion_extractor, 25, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("compost bin", /obj/structure/reagent_dispensers/compostbin, 25, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	))

/obj/item/stack/sheet/mineral/wood
	name = "wooden plank"
	desc = "One can only guess that this is a bunch of wood."
	singular_name = "wood plank"
	icon_state = "sheet-wood"
	item_state = "sheet-wood"
	icon = 'icons/obj/stack_objects.dmi'
	sheettype = "wood"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0)
	resistance_flags = FLAMMABLE
	merge_type = /obj/item/stack/sheet/mineral/wood
	grind_results = list("carbon" = 20)

/obj/item/stack/sheet/mineral/wood/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.wood_recipes
	return ..()

/obj/item/stack/sheet/mineral/wood/fifty
	amount = 50


/obj/item/stack/sheet/mineral/wood/twenty
    amount = 20


/obj/item/stack/sheet/mineral/wood/five
	amount = 5

/*
 * Cloths
 */
GLOBAL_LIST_INIT(cloth_recipes, list ( \
	new/datum/stack_recipe("jumpsuit", /obj/item/clothing/under/color/white, 3), \
	/*new/datum/stack_recipe("slave rags", /obj/item/clothing/under/f13/slaverags, 2), \ */ //uncomment when slave rags get a sprite
	new/datum/stack_recipe("shoes", /obj/item/clothing/shoes/sneakers/white, 2), \
	new/datum/stack_recipe("scarf", /obj/item/clothing/neck/scarf, 1), \
	new/datum/stack_recipe("bandana", /obj/item/clothing/mask/bandana/white, 2), \
	null, \
	new/datum/stack_recipe("backpack", /obj/item/storage/backpack, 4), \
	new/datum/stack_recipe("duffel bag", /obj/item/storage/backpack/duffelbag, 6), \
	null, \
	new/datum/stack_recipe("plant bag", /obj/item/storage/bag/plants, 4), \
	new/datum/stack_recipe("book bag", /obj/item/storage/bag/books, 4), \
	new/datum/stack_recipe("mining satchel", /obj/item/storage/bag/ore, 4), \
	new/datum/stack_recipe("chemistry bag", /obj/item/storage/bag/chemistry, 4), \
	new/datum/stack_recipe("bio bag", /obj/item/storage/bag/bio, 4), \
	null, \
	new/datum/stack_recipe("improvised gauze", /obj/item/stack/medical/gauze/improvised, 1, 2, 6), \
	new/datum/stack_recipe("rag", /obj/item/reagent_containers/glass/rag, 1), \
	null, \
	new /datum/stack_recipe_list("bedsheets", list( \
		new /datum/stack_recipe("White Bedsheet", /obj/item/bedsheet, 3), \
		new /datum/stack_recipe("Black Bedsheet", /obj/item/bedsheet/black, 3), \
		new /datum/stack_recipe("Blue Bedsheet", /obj/item/bedsheet/blue, 3), \
		new /datum/stack_recipe("Brown Bedsheet", /obj/item/bedsheet/brown, 3), \
		new /datum/stack_recipe("Green Bedsheet", /obj/item/bedsheet/green, 3), \
		new /datum/stack_recipe("Grey Bedsheet", /obj/item/bedsheet/grey, 3), \
		new /datum/stack_recipe("Orange Bedsheet", /obj/item/bedsheet/orange, 3), \
		new /datum/stack_recipe("Purple Bedsheet", /obj/item/bedsheet/purple, 3), \
		new /datum/stack_recipe("Red Bedsheet", /obj/item/bedsheet/red, 3), \
		new /datum/stack_recipe("Yellow Bedsheet", /obj/item/bedsheet/yellow, 3), \
		new /datum/stack_recipe("Central Command Bedsheet", /obj/item/bedsheet/centcom, 3), \
		new /datum/stack_recipe("Nanotrasen Bedsheet", /obj/item/bedsheet/nanotrasen, 3), \
		new /datum/stack_recipe("Syndicate Bedsheet", /obj/item/bedsheet/syndie, 3), \
		new /datum/stack_recipe("Captain's Bedsheet", /obj/item/bedsheet/captain, 3), \
		new /datum/stack_recipe("Head of Personnel's Bedsheet", /obj/item/bedsheet/hop, 3), \
		new /datum/stack_recipe("Head of Security's Bedsheet", /obj/item/bedsheet/hos, 3), \
		new /datum/stack_recipe("Chief Engineer's Bedsheet", /obj/item/bedsheet/ce, 3), \
		new /datum/stack_recipe("Chief Medical Officer's Bedsheet", /obj/item/bedsheet/cmo, 3), \
		new /datum/stack_recipe("Quartermaster's Bedsheet", /obj/item/bedsheet/qm, 3), \
		new /datum/stack_recipe("Research Director's Bedsheet", /obj/item/bedsheet/rd, 3), \
		new /datum/stack_recipe("Clown's Bedsheet", /obj/item/bedsheet/clown, 3), \
		new /datum/stack_recipe("Rainbow Bedsheet", /obj/item/bedsheet/rainbow, 3), \
		new /datum/stack_recipe("Mime's Bedsheet", /obj/item/bedsheet/mime, 3), \
		new /datum/stack_recipe("Cosmic Bedsheet", /obj/item/bedsheet/cosmos, 3), \
		new /datum/stack_recipe("Wizard's Bedsheet", /obj/item/bedsheet/wiz, 3), \
		new /datum/stack_recipe("Patriot's Bedsheet", /obj/item/bedsheet/patriot, 3), \
		new /datum/stack_recipe("Ian's Bedsheet", /obj/item/bedsheet/ian, 3), \
	)), \
	null, \
	new/datum/stack_recipe("empty sandbag", /obj/item/stack/sheet/emptysandbag, 4), \
	null, \
	new/datum/stack_recipe("fingerless gloves", /obj/item/clothing/gloves/fingerless, 1), \
	new/datum/stack_recipe("gloves", /obj/item/clothing/gloves/color/white, 3), \
	new/datum/stack_recipe("softcap", /obj/item/clothing/head/soft/mime, 2), \
	new/datum/stack_recipe("beanie", /obj/item/clothing/head/beanie, 2), \
	new/datum/stack_recipe("armband", /obj/item/clothing/accessory/armband/white, 1), \
	new/datum/stack_recipe("black beret", /obj/item/clothing/head/HoS/beret/syndicate, 4), \
	null, \
	new/datum/stack_recipe("blindfold", /obj/item/clothing/glasses/sunglasses/blindfold, 2), \
	new/datum/stack_recipe("muzzle", /obj/item/clothing/mask/muzzle, 2), \
	new/datum/stack_recipe("pet collar", /obj/item/clothing/neck/petcollar, 2), \
	new/datum/stack_recipe("money pouch", /obj/item/storage/bag/money/small, 5), \
	new/datum/stack_recipe("thread", /obj/item/stack/sheet/durathread/three, 1), \
	null, \
	))

/obj/item/stack/sheet/cloth
	name = "cloth"
	desc = "Is it cotton? Linen? Denim? Burlap? Canvas? You can't tell."
	singular_name = "cloth roll"
	icon_state = "sheet-cloth"
	item_state = "sheet-cloth"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cloth

/obj/item/stack/sheet/cloth/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.cloth_recipes
	return ..()

/obj/item/stack/sheet/cloth/ten
	amount = 10

/obj/item/stack/sheet/cloth/five
	amount = 5

/obj/item/stack/sheet/cloth/three
	amount = 3

/obj/item/stack/sheet/cotton
	name = "raw cotton bundle"
	desc = "A bundle of raw cotton ready to be spun on the loom."
	singular_name = "raw cotton ball"
	icon_state = "sheet-cotton"
	is_fabric = TRUE
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cotton
	pull_effort = 30
	loom_result = /obj/item/stack/sheet/cloth

/*
 * Cardboard
 */
GLOBAL_LIST_INIT(cardboard_recipes, list ( \
	new/datum/stack_recipe("box", /obj/item/storage/box), \
	new/datum/stack_recipe("light tubes", /obj/item/storage/box/lights/tubes), \
	new/datum/stack_recipe("light bulbs", /obj/item/storage/box/lights/bulbs), \
	new/datum/stack_recipe("mouse traps", /obj/item/storage/box/mousetraps), \
	new/datum/stack_recipe("cardborg suit", /obj/item/clothing/suit/cardborg, 3), \
	new/datum/stack_recipe("cardborg helmet", /obj/item/clothing/head/cardborg), \
	new/datum/stack_recipe("pizza box", /obj/item/pizzabox), \
	new/datum/stack_recipe("folder", /obj/item/folder), \
	null, \
	new/datum/stack_recipe("shotgun slugs box", /obj/item/storage/box/slugshot, ), \
	new/datum/stack_recipe("shotgun buckshot box", /obj/item/storage/box/lethalshot, ), \
	new/datum/stack_recipe("shotgun rubbershot box", /obj/item/storage/box/rubbershot, ), \
	new/datum/stack_recipe("shotgun beanbag box", /obj/item/storage/box/beanbag, ), \
	null, \
	new/datum/stack_recipe("large box", /obj/structure/closet/cardboard, 4), \
	new/datum/stack_recipe("cardboard cutout", /obj/item/cardboard_cutout, 5), \
))

/obj/item/stack/sheet/cardboard	//BubbleWrap //it's cardboard you fuck
	name = "cardboard"
	desc = "Large sheets of card, like boxes folded flat."
	singular_name = "cardboard sheet"
	icon_state = "sheet-card"
	item_state = "sheet-card"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cardboard
	novariants = TRUE

/obj/item/stack/sheet/cardboard/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.cardboard_recipes
	return ..()

/obj/item/stack/sheet/cardboard/fifty
	amount = 50

/obj/item/stack/sheet/cardboard/twenty
	amount = 20

/obj/item/stack/sheet/cardboard/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stamp/clown) && !istype(loc, /obj/item/storage))
		var/atom/droploc = drop_location()
		if(use(1))
			playsound(I, 'sound/items/bikehorn.ogg', 50, 1, -1)
			to_chat(user, "<span class='notice'>You stamp the cardboard! Its a clown box! Honk!</span>")
			if (amount >= 0)
				new/obj/item/storage/box/clown(droploc) //bugfix
	else
		. = ..()


/*
 * Runed Metal
 */

GLOBAL_LIST_INIT(runed_metal_recipes, list ( \
	new/datum/stack_recipe("runed door", /obj/machinery/door/airlock/cult, 1, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("runed girder", /obj/structure/girder/cult, 1, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("pylon", /obj/structure/destructible/cult/pylon, 4, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("forge", /obj/structure/destructible/cult/forge, 3, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("archives", /obj/structure/destructible/cult/tome, 3, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("altar", /obj/structure/destructible/cult/talisman, 3, time = 40, one_per_turf = TRUE, on_floor = TRUE), \
	))

/obj/item/stack/sheet/runed_metal
	name = "runed metal"
	desc = "Sheets of cold metal with shifting inscriptions writ upon them."
	singular_name = "runed metal sheet"
	icon_state = "sheet-runed"
	item_state = "sheet-runed"
	icon = 'icons/obj/stack_objects.dmi'
	sheettype = "runed"
	merge_type = /obj/item/stack/sheet/runed_metal
	novariants = TRUE
	grind_results = list("iron" = 5, "blood" = 15)

/obj/item/stack/sheet/runed_metal/ratvar_act()
	new /obj/item/stack/tile/brass(loc, amount)
	qdel(src)

/obj/item/stack/sheet/runed_metal/attack_self(mob/living/user)
	if(!iscultist(user))
		to_chat(user, "<span class='warning'>Only one with forbidden knowledge could hope to work this metal...</span>")
		return
	var/turf/T = get_turf(user) //we may have moved. adjust as needed...
	var/area/A = get_area(user)
	if((!is_station_level(T.z) && !is_mining_level(T.z)) || (A && !A.blob_allowed))
		to_chat(user, "<span class='warning'>The veil is not weak enough here.</span>")
		return FALSE
	return ..()

/obj/item/stack/sheet/runed_metal/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.runed_metal_recipes
	return ..()

/obj/item/stack/sheet/runed_metal/fifty
	amount = 50

/obj/item/stack/sheet/runed_metal/ten
	amount = 10

/obj/item/stack/sheet/runed_metal/five
	amount = 5

/*
 * Brass
 */
GLOBAL_LIST_INIT(brass_recipes, list ( \
	new/datum/stack_recipe("wall gear", /obj/structure/destructible/clockwork/wall_gear, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	null,
	new/datum/stack_recipe("pinion airlock", /obj/machinery/door/airlock/clockwork, 5, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("brass pinion airlock", /obj/machinery/door/airlock/clockwork/brass, 5, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("brass windoor", /obj/machinery/door/window/clockwork, 2, time = 30, on_floor = TRUE, window_checks = TRUE), \
	null,
	new/datum/stack_recipe("directional brass window", /obj/structure/window/reinforced/clockwork/unanchored, time = 0, on_floor = TRUE, window_checks = TRUE), \
	new/datum/stack_recipe("fulltile brass window", /obj/structure/window/reinforced/clockwork/fulltile/unanchored, 2, time = 0, on_floor = TRUE, window_checks = TRUE), \
	new/datum/stack_recipe("brass chair", /obj/structure/chair/brass, 1, time = 0, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("brass table frame", /obj/structure/table_frame/brass, 1, time = 5, one_per_turf = TRUE, on_floor = TRUE), \
	null,
	new/datum/stack_recipe("sender - pressure sensor", /obj/structure/destructible/clockwork/trap/trigger/pressure_sensor, 2, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("sender - lever", /obj/structure/destructible/clockwork/trap/trigger/lever, 1, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("sender - repeater", /obj/structure/destructible/clockwork/trap/trigger/repeater, 2, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	null,
	new/datum/stack_recipe("receiver - brass skewer", /obj/structure/destructible/clockwork/trap/brass_skewer, 2, time = 20, one_per_turf = TRUE, on_floor = TRUE, placement_checks = STACK_CHECK_ADJACENT), \
	new/datum/stack_recipe("receiver - steam vent", /obj/structure/destructible/clockwork/trap/steam_vent, 3, time = 30, one_per_turf = TRUE, on_floor = TRUE, placement_checks = STACK_CHECK_CARDINALS), \
))

/obj/item/stack/tile/brass
	name = "brass"
	desc = "Sheets made out of brass."
	singular_name = "brass sheet"
	icon_state = "sheet-brass"
	item_state = "sheet-brass"
	icon = 'icons/obj/stack_objects.dmi'
	resistance_flags = FIRE_PROOF | ACID_PROOF
	throwforce = 10
	max_amount = 50
	throw_speed = 1
	throw_range = 3
	turf_type = /turf/open/floor/clockwork
	novariants = FALSE
	grind_results = list("iron" = 5, "teslium" = 15)
	merge_type = /obj/item/stack/tile/brass

/obj/item/stack/tile/brass/narsie_act()
	new /obj/item/stack/sheet/runed_metal(loc, amount)
	qdel(src)

/obj/item/stack/tile/brass/attack_self(mob/living/user)
	if(!is_servant_of_ratvar(user))
		to_chat(user, "<span class='danger'>[src] seems far too fragile and rigid to build with.</span>") //haha that's because it's actually replicant alloy you DUMMY
		return
	..()

/obj/item/stack/tile/brass/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.brass_recipes
	. = ..()
	pixel_x = 0
	pixel_y = 0

/obj/item/stack/tile/brass/fifty
	amount = 50

/*
 * Bronze
 */

GLOBAL_LIST_INIT(bronze_recipes, list ( \
	new/datum/stack_recipe("wall gear", /obj/structure/girder/bronze, 2, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	null,
	new/datum/stack_recipe("bronze hat", /obj/item/clothing/head/bronze), \
	new/datum/stack_recipe("bronze suit", /obj/item/clothing/suit/bronze), \
	new/datum/stack_recipe("bronze boots", /obj/item/clothing/shoes/bronze), \
	null,
	new/datum/stack_recipe("bronze chair", /obj/structure/chair/bronze, 1, time = 0, one_per_turf = TRUE, on_floor = TRUE), \
))

/obj/item/stack/tile/bronze
	name = "brass"
	desc = "On closer inspection, what appears to be wholly-unsuitable-for-building brass is actually more structurally stable bronze."
	singular_name = "bronze sheet"
	icon_state = "sheet-brass"
	item_state = "sheet-brass"
	icon = 'icons/obj/stack_objects.dmi'
	resistance_flags = FIRE_PROOF | ACID_PROOF
	throwforce = 10
	max_amount = 50
	throw_speed = 1
	throw_range = 3
	turf_type = /turf/open/floor/bronze
	novariants = FALSE
	grind_results = list("iron" = 5, "copper" = 3) //we have no "tin" reagent so this is the closest thing
	merge_type = /obj/item/stack/tile/bronze

/obj/item/stack/tile/bronze/attack_self(mob/living/user)
	if(is_servant_of_ratvar(user)) //still lets them build with it, just gives a message
		to_chat(user, "<span class='danger'>Wha... what is this cheap imitation crap? This isn't brass at all!</span>")
	..()

/obj/item/stack/tile/bronze/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.bronze_recipes
	. = ..()
	pixel_x = 0
	pixel_y = 0

/obj/item/stack/tile/bronze/thirty
	amount = 30

/*
 * Lesser and Greater gems - unused
 */
/obj/item/stack/sheet/lessergem
	name = "lesser gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "lesser gem"
	icon_state = "sheet-lessergem"
	item_state = "sheet-lessergem"
	novariants = TRUE


/obj/item/stack/sheet/greatergem
	name = "greater gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "greater gem"
	icon_state = "sheet-greatergem"
	item_state = "sheet-greatergem"
	novariants = TRUE

/*
 * Bones
 */
/obj/item/stack/sheet/bone
	name = "bones"
	icon = 'icons/obj/mining.dmi'
	icon_state = "bone"
	item_state = "sheet-bone"
	singular_name = "bone"
	desc = "Someone's been drinking their milk."
	force = 7
	throwforce = 5
	max_amount = 12
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 1
	throw_range = 3
	grind_results = list("carbon" = 10)
	merge_type = /obj/item/stack/sheet/bone

GLOBAL_LIST_INIT(plastic_recipes, list(
	new /datum/stack_recipe("plastic flaps", /obj/structure/plasticflaps, 5, one_per_turf = TRUE, on_floor = TRUE, time = 40), \
	new /datum/stack_recipe("water bottle", /obj/item/reagent_containers/glass/beaker/waterbottle/empty), \
	new /datum/stack_recipe("large water bottle", /obj/item/reagent_containers/glass/beaker/waterbottle/large/empty,3), \
	new /datum/stack_recipe("pill bottle", /obj/item/storage/pill_bottle, 2), \
	new /datum/stack_recipe("plastic bucket",  /obj/item/reagent_containers/glass/bucket,5), \
	new /datum/stack_recipe("wet floor sign", /obj/item/caution, 2)))

/obj/item/stack/sheet/plastic
	name = "plastic"
	desc = "Compress dinosaur over millions of years, then refine, split and mold, and voila! You have plastic."
	singular_name = "plastic sheet"
	icon_state = "sheet-plastic"
	item_state = "sheet-plastic"
	materials = list(MAT_PLASTIC=MINERAL_MATERIAL_AMOUNT)
	throwforce = 7
	merge_type = /obj/item/stack/sheet/plastic

/obj/item/stack/sheet/plastic/fifty
	amount = 50

/obj/item/stack/sheet/plastic/five
	amount = 5

/obj/item/stack/sheet/plastic/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.plastic_recipes
	. = ..()

GLOBAL_LIST_INIT(paperframe_recipes, list(
new /datum/stack_recipe("paper frame separator", /obj/structure/window/paperframe, 2, one_per_turf = TRUE, on_floor = TRUE, time = 10), \
new /datum/stack_recipe("paper frame door", /obj/structure/mineral_door/paperframe, 3, one_per_turf = TRUE, on_floor = TRUE, time = 10 )))

/obj/item/stack/sheet/paperframes
	name = "paper frames"
	desc = "A thin wooden frame with paper attached."
	singular_name = "paper frame"
	icon_state = "sheet-paper"
	item_state = "sheet-paper"
	merge_type = /obj/item/stack/sheet/paperframes
	resistance_flags = FLAMMABLE

/obj/item/stack/sheet/paperframes/Initialize()
	recipes = GLOB.paperframe_recipes
	. = ..()
/obj/item/stack/sheet/paperframes/five
	amount = 5
/obj/item/stack/sheet/paperframes/twenty
	amount = 20
/obj/item/stack/sheet/paperframes/fifty
	amount = 50

	/*
 * Durathread (This is the best solution I could come up with to the retarded hierarchy problem porting this okay?)
 */
 //It'll be changed If we ever decide to add more fabric materials on f13 to just have cloth as the parent.
GLOBAL_LIST_INIT(durathread_recipes, list(
new /datum/stack_recipe("medical gauze", /obj/item/stack/medical/gauze, 1, 2, 6)))

/obj/item/stack/sheet/durathread
	name = "durathread"
	desc = "A fabric sown from incredibly durable threads, known for its usefulness in armor production."
	singular_name = "durathread roll"
	icon_state = "sheet-durathread"
	item_state = "sheet-durathread"
	merge_type = /obj/item/stack/sheet/durathread

/obj/item/stack/sheet/durathread/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.durathread_recipes
	return ..()

/obj/item/stack/sheet/durathread/ten
	amount = 10

/obj/item/stack/sheet/durathread/five
	amount = 5

/obj/item/stack/sheet/durathread/three
	amount = 3

/obj/item/stack/sheet/durathreadraw
	name = "raw durathread bundle"
	desc = "A bundle of raw durathread ready to be spun on the loom."
	singular_name = "raw durathread ball"
	is_fabric = TRUE
	icon_state = "sheet-durathreadraw"
	merge_type = /obj/item/stack/sheet/durathreadraw
	pull_effort = 70
	loom_result = /obj/item/stack/sheet/durathread

/*
*Hay
*/

GLOBAL_LIST_INIT(hay_recipes, list ( \
	new/datum/stack_recipe("rice hat", /obj/item/clothing/head/rice_hat, 4, time = 5, one_per_turf = FALSE, on_floor = FALSE), \
	new/datum/stack_recipe("wicker basket", /obj/structure/closet/crate/wicker, 15, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
))

/obj/item/stack/sheet/hay
	name = "hay"
	desc = "A bundle of hay. Useful for weaving. Hail the Wickerman." //Brahmin can't currently eat this.
	singular_name = "hay stalk"
	icon_state = "sheet-hay"
	item_state = "sheet-hay"
	force = 1
	throwforce = 1
	throw_speed = 1
	throw_range = 2
	max_amount = 50 //reduced from 500, made stacks sprites irrelevant due to scaling.
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0)
	resistance_flags = FLAMMABLE
	attack_verb = list("tickled", "poked", "whipped")
	hitsound = 'sound/weapons/grenadelaunch.ogg'
	merge_type = /obj/item/stack/sheet/hay

/obj/item/stack/sheet/hay/Initialize(mapload, new_amount, merge = TRUE)
	recipes = GLOB.hay_recipes
	return ..()

/obj/item/stack/sheet/hay/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins shoving hay up [user.p_their()] arse! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	addtimer(CALLBACK(user, /mob/proc/gib), 30)
	return BRUTELOSS

/obj/item/stack/sheet/hay/fifty
	amount = 50

/obj/item/stack/sheet/hay/twenty
	amount = 20

/obj/item/stack/sheet/hay/ten
	amount = 10

/obj/item/stack/sheet/hay/five
	amount = 5
