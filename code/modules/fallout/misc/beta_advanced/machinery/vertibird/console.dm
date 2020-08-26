/obj/machinery/computer/vertibird_console
	name = "пульт управления винтокрылом"
	desc = "Используется для управления Винтокрылом."
	icon = 'icons/fallout/machines/terminals.dmi'
	icon_state = "enclave"
	icon_screen = "enclave_on"

/obj/machinery/computer/vertibird_console/attack_hand(mob/user)
	vertibird:beginFly()