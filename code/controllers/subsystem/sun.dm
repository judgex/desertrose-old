#define DAYLENGTH (10 MINUTES)
GLOBAL_LIST_INIT(daylight_turfs, typecacheof(list(
	/turf/open/indestructible/ground/outside,
	/turf/open/floor/plating/f13/outside)))

SUBSYSTEM_DEF(sun)
	name = "Sun"
	wait = 2 MINUTES
	flags = SS_NO_TICK_CHECK|SS_NO_INIT
	var/tmp/angle
	var/tmp/dir
	var/tmp/power
	var/tmp/dx
	var/tmp/dz
	var/list/solars	= list()

/datum/controller/subsystem/sun/PreInit()
	fire()

/datum/controller/subsystem/sun/stat_entry(msg)
	..("A:[angle] P:[solars.len]")

/datum/controller/subsystem/sun/fire()
	update_angle(((world.realtime/DAYLENGTH * 360) - 90) % 360) // 0 to 180 is up; 0 to 30 and 150 to 180 is sunrise/sunset; 90 is noon
	//now tell the solar control computers to update their status and linked devices
	for(var/obj/machinery/power/solar_control/SC in solars)
		if(!SC.powernet)
			solars.Remove(SC)
			continue
		SC.update()

/datum/controller/subsystem/sun/proc/update_angle(var/ang)
	if(!SSsunlight)
		return
	angle = ang
	power = max(sin(angle*2)**2, 75/10000)
	SSsunlight.set_overall_light(SSsunlight.sun_accuracy * 1.2, power, getcolor())


/datum/controller/subsystem/sun/proc/getcolor()
	switch(angle)
		if(180 to 360)
			return "#000000"
		if(30 to 150)
			return "#fdfbd3"
	var/dist_from_horizon = angle < 90 ? 30-angle : angle-150
	return BlendRGB("#fdfbd3", "#fd5e53", 1 - dist_from_horizon/30)