/obj/item/stack/crafting
    name = "crafting part"
    icon = 'icons/fallout/objects/items.dmi'
    amount = 1
    max_amount = 50
    throw_speed = 3
    throw_range = 7
    w_class = WEIGHT_CLASS_TINY
    novariants = TRUE

/obj/item/stack/crafting/metalparts
    name = "metal parts"
    icon_state = "sheet-metalparts"
    materials = list(MAT_METAL=10000)
    flags_1 = CONDUCT_1

/obj/item/stack/crafting/metalparts/three
    amount = 3

/obj/item/stack/crafting/metalparts/five
    amount = 5

/obj/item/stack/crafting/goodparts
    name = "high quality metal parts"
    icon_state = "sheet-goodparts"
    materials = list(MAT_TITANIUM=10000)
    flags_1 = CONDUCT_1

/obj/item/stack/crafting/goodparts/three
    amount = 3

/obj/item/stack/crafting/goodparts/five
    amount = 5

/obj/item/stack/crafting/electronicparts
    name = "electronic parts"
    icon_state = "sheet-electronicparts"
    materials = list(MAT_GLASS=10000)
    flags_1 = CONDUCT_1

/obj/item/stack/crafting/electronicparts/three
    amount = 3

/obj/item/stack/crafting/electronicparts/five
    amount = 5