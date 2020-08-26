/obj/machinery/button/vertibird
	name = "запереть винтокрыл"

/obj/machinery/button/vertibird/attack_hand(mob/user)
	..()
	vertibird:toggleLock(user)