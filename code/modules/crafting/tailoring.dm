/datum/crafting_recipe/metalarmor
	name = "metal armor"
	result = /obj/item/clothing/suit/armor/f13/metalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/durathread = 5,
				/obj/item/stack/crafting/metalparts = 5)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/metalarmormk2
	name = "metal armor mark 2"
	result = /obj/item/clothing/suit/armor/f13/metalarmor/reinforced
	reqs = list(/obj/item/clothing/suit/armor/f13/metalarmor = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/metalparts = 3)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/metalmask
	name = "metal mask"
	result = /obj/item/clothing/head/helmet/f13/metalmask
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/metalmaskmk2
	name = "metal mask mk2"
	result = /obj/item/clothing/head/helmet/f13/metalmask/mk2
	reqs = list(/obj/item/clothing/head/helmet/f13/metalmask = 1,
				/obj/item/stack/crafting/goodparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/leatherarmor
	name = "leather armor"
	result = /obj/item/clothing/suit/armor/f13/leatherarmor
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/durathread = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/leatherarmor2
	name = "reinforced leather armor"
	result = /obj/item/clothing/suit/armor/f13/leatherarmor/reinforced
	reqs = list(/obj/item/clothing/suit/armor/f13/leatherarmor = 1,
				/obj/item/stack/sheet/animalhide/geckohide = 3
	)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/leather_jacket
	name = "leather jacket"
	result = /obj/item/clothing/suit/armor/f13/leather_jacket
	reqs = list(/obj/item/stack/sheet/animalhide/brahmin = 2,
				/obj/item/stack/sheet/durathread = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/combat_jacket
	name = "combat jacket"
	result = /obj/item/clothing/suit/armor/f13/leather_jacket/combat
	reqs = list(/obj/item/clothing/suit/armor/f13/leather_jacket = 1,
				/obj/item/stack/sheet/animalhide/brahmin = 1,
				/obj/item/stack/sheet/animalhide/geckohide = 1,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING


/datum/crafting_recipe/combat_coat
	name = "combat coat"
	result = /obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat
	reqs = list(/obj/item/clothing/suit/armor/f13/leather_jacket/combat = 1,
				/obj/item/stack/sheet/animalhide/deathclaw  = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/supaflyhelm_reinforced
	name = "reinforced supafly helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/supafly
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/supafly = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/supafly_reinforced
	name = "reinforced supafly armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/supafly
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/supafly = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/yankeehelm_reinforced
	name = "reinforced yankee helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/yankee/
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/yankee = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/yankee_reinforced
	name = "reinforced yankee armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/yankee
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/yankee = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/blasterhelm_reinforced
	name = "reinforced blaster helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/blastmaster
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/blastmaster = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/blaster_reinforced
	name = "reinforced blaster armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/blastmaster
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/blastmaster = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/sadisthelm_reinforced
	name = "reinforced sadist helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/arclight
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/arclight = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/sadist_reinforced
	name = "reinforced sadist armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/sadist
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/sadist = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/fiendshelm_reinforced
	name = "reinforced fiend helmet"
	result = /obj/item/clothing/head/helmet/f13/fiend_reinforced
	reqs = list(/obj/item/clothing/head/helmet/f13/fiend = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/badlands_reinforced
	name = "reinforced badlands armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/badlands
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/badlands = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/painspikehelm_reinforced
	name = "reinforced painspike helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/psychotic
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/psychotic = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/painspike_reinforced
	name = "reinforced painspike armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/painspike
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/painspike = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/iconoclast_reinforced
	name = "reinforced iconoclast armor"
	result = /obj/item/clothing/suit/armor/f13/raider/r/iconoclast
	reqs = list(/obj/item/clothing/suit/armor/f13/raider/iconoclast = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/ncrexile_reinforced
	name = "reinforced NCR deserter armor"
	result = /obj/item/clothing/suit/armor/f13/exile/r/ncr
	reqs = list(/obj/item/clothing/suit/armor/f13/exile/ncrexile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/legion_reinforced
	name = "reinforced punished Legion armor"
	result = /obj/item/clothing/suit/armor/f13/exile/r/legion
	reqs = list(/obj/item/clothing/suit/armor/f13/exile/legexile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/bos_reinforced
	name = "reinforced BoS exile armor"
	result = /obj/item/clothing/suit/armor/f13/exile/r/bos
	reqs = list(/obj/item/clothing/suit/armor/f13/exile/bosexile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/raiderpaconversion
	name = "salvaged power armor to raider power armor conversion"
	result = /obj/item/clothing/suit/armor/f13/brokenpa/raiderpa
	reqs = list(/obj/item/clothing/suit/armor/f13/brokenpa/t45b  = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/raiderpahelmconversion
	name = "salvaged power armor helmet to raider power armor helmet conversion"
	result = /obj/item/clothing/head/helmet/f13/brokenpa/raiderpa_helm
	reqs = list(/obj/item/clothing/head/helmet/power_armor/t45b = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/armorkit
	name = "armor kit"
	result = /obj/item/clothing/suit/armor/f13/kit
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
/*CRAFT rework: removed for balance
/datum/crafting_recipe/tesla_armor
	name = "tesla armor"
	result = /obj/item/clothing/suit/armor/laserproof
	reqs = list(/obj/item/clothing/suit/armor/f13/metalarmor/reinforced = 1,
				/obj/item/stack/sheet/mineral/titanium = 1,
				/obj/item/stack/crafting/electronicparts = 4)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/armor/tesla)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*//*CRAFT rework: removed for balance
/datum/crafting_recipe/tesla_helmet
	name = "tesla helmet"
	result = /obj/item/clothing/head/helmet/f13/tesla
	reqs = list(/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/mineral/titanium = 2,
				/obj/item/stack/crafting/electronicparts = 2)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/armor/tesla)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*//*
/datum/crafting_recipe/combat_armor
	name = "combat armor"
	result = /obj/item/clothing/suit/armor/f13/combat
	reqs = list(/obj/item/stack/sheet/mineral/titanium = 5,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/armor/combat)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*//*CRAFT rework: removed for balance
/datum/crafting_recipe/combat_helmet
	name = "combat armor"
	result = /obj/item/clothing/head/helmet/f13/combat
	reqs = list(/obj/item/stack/sheet/mineral/titanium = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_AWORKBENCH, /obj/item/blueprint/armor/combat)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*/
/datum/crafting_recipe/bandolier
	name = "bandolier"
	result = /obj/item/storage/belt/bandolier
	reqs = list(/obj/item/stack/sheet/hay = 3,
				/obj/item/stack/sheet/leather = 4)
	tools = list(TOOL_WORKBENCH)
	time = 40
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/belt
	name = "belt"
	result = /obj/item/storage/belt
	reqs = list(/obj/item/stack/sheet/hay = 3,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/chestrig
	name = "chest rig"
	result = /obj/item/storage/belt/military
	tools = list(TOOL_AWORKBENCH)
	reqs = list(/obj/item/stack/sheet/plastic = 2,
				/obj/item/stack/sheet/leather = 3)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/webbing
	name = "webbing"
	result = /obj/item/storage/belt/military/alt
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/shoulderholster
	name = "shoulder holster"
	result = /obj/item/storage/belt/holster
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/hay = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/settler
	name = "settler outfit"
	result = /obj/item/clothing/under/f13/settler
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/merchant
	name = "merchant outfit"
	result = /obj/item/clothing/under/f13/merchant
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/mercenary
	name = "mercenary outfit"
	result = /obj/item/clothing/under/f13/merca
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/cowboyhat
	name = "light leather cowboy hat"
	result = /obj/item/clothing/head/f13/cowboy
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/cowboyhatrustic
	name = "rustic leather cowboy hat"
	result = /obj/item/clothing/head/helmet/f13/brahmincowboyhat
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/cowboyboots
	name = "cowboy boots"
	result = /obj/item/clothing/shoes/f13/cowboy
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/mantle
	name = "hide mantle"
	result = /obj/item/clothing/suit/f13/mantle_liz
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/hay = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/poncho
	name = "poncho"
	result = /obj/item/clothing/suit/poncho
	reqs = list(/obj/item/stack/sheet/cloth = 3,
				/obj/item/stack/sheet/hay = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/sombrero
	name = "sombrero"
	result = /obj/item/clothing/head/sombrero
	reqs = list(/obj/item/stack/sheet/hay = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/maletribal
	name = "tribal outfit"
	result = /obj/item/clothing/under/f13/tribal
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/facewrap
	name = "desert facewrap"
	result = /obj/item/clothing/mask/facewrap
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/cloak
	name = "brown cloak"
	result = /obj/item/clothing/suit/hooded/cloak/desert
	reqs = list(/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	time = 25
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND
/*
/datum/crafting_recipe/durathread_vest
	name = "Makeshift Vest"
	result = /obj/item/clothing/suit/armor/vest/durathread
	reqs = list( /obj/item/stack/sheet/durathread = 5,
				/obj/item/stack/sheet/leather = 4)
	time = 50
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/durathread_helmet
	name = "Makeshift Helmet"
	result = /obj/item/clothing/head/helmet/durathread
	reqs = list( /obj/item/stack/sheet/durathread = 4,
				/obj/item/stack/sheet/leather = 5)
	time = 40
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/fannypack
	name = "Fannypack"
	result = /obj/item/storage/belt/fannypack
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/leather = 1)
	time = 20
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/* - Commented out for now, these are particularly rare without rnd anyway and dont fit all sunglasses types.
/datum/crafting_recipe/hudsunsec
	name = "Security HUDsunglasses"
	result = /obj/item/clothing/glasses/hud/security/sunglasses
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/hud/security = 1,
				  /obj/item/clothing/glasses/sunglasses = 1,
				  /obj/item/stack/cable_coil = 5)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/hudsunsecremoval
	name = "Security HUD removal"
	result = /obj/item/clothing/glasses/sunglasses
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/hud/security/sunglasses = 1)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/hudsunmed
	name = "Medical HUDsunglasses"
	result = /obj/item/clothing/glasses/hud/health/sunglasses
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/hud/health = 1,
				  /obj/item/clothing/glasses/sunglasses = 1,
				  /obj/item/stack/cable_coil = 5)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/hudsunmedremoval
	name = "Medical HUD removal"
	result = /obj/item/clothing/glasses/sunglasses
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/hud/health/sunglasses = 1)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING


/datum/crafting_recipe/beergoggles
	name = "Beer Goggles"
	result = /obj/item/clothing/glasses/sunglasses/reagent
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/science = 1,
				  /obj/item/clothing/glasses/sunglasses = 1,
				  /obj/item/stack/cable_coil = 5)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/beergogglesremoval
	name = "Beer Goggles removal"
	result = /obj/item/clothing/glasses/sunglasses
	time = 20
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	reqs = list(/obj/item/clothing/glasses/sunglasses/reagent = 1)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*/

/datum/crafting_recipe/ghostsheet
	name = "Ghost Sheet"
	result = /obj/item/clothing/suit/ghost_sheet
	time = 5
	tools = list(TOOL_WIRECUTTER)
	reqs = list(/obj/item/bedsheet = 1)
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

//f13 additions
/datum/crafting_recipe/metalarmor
	name = "metal armor"
	result = /obj/item/clothing/suit/armor/f13/bmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING


/datum/crafting_recipe/Imetalarmor
	name = "improved metal armor"
	result = /obj/item/clothing/suit/armor/f13/ibmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

/datum/crafting_recipe/IImetalarmor
	name = "upgrading metal armor"
	result = /obj/item/clothing/suit/armor/f13/ibmetalarmor
	reqs = list(/obj/item/clothing/suit/armor/f13/bmetalarmor = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING

//Tribal armors

/datum/crafting_recipe/tribalgeckoarmor
	name = "Gecko Armor"
	result = /obj/item/clothing/suit/armor/f13/tribal
	reqs = list(/obj/item/stack/sheet/animalhide/geckohide = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/hay = 3)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*/
