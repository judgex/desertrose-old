/obj/item/sensor_device
	name = "handheld lifesign monitor"
	desc = "A miniature machine that tracks lifesign sensors."
	icon = 'icons/obj/device.dmi'
	icon_state = "scanner"
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_BELT

/obj/item/sensor_device/attack_self(mob/user)
	GLOB.crewmonitor.show(user,src)