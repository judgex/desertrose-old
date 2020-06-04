//Challenge Areas

/area/awaymission/challenge/start
	name = "Where Am I?"
	icon_state = "away"

/area/awaymission/challenge/main
	name = "Danger Room"
	icon_state = "away1"
	requires_power = FALSE

/area/awaymission/challenge/end
	name = "Administration"
	icon_state = "away2"
	requires_power = FALSE


/obj/machinery/power/emitter/energycannon
	name = "Siege Cannon"
	desc = "A super-heavy fixed siege laser that fires in short intervals; though with devestating results."
	icon = 'icons/obj/singularity.dmi'
	icon_state = "emitter"
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | FIRE_PROOF | ACID_PROOF
	projectile_sound = 'sound/weapons/marauder.ogg'
	circuit = /obj/item/circuitboard/machine/emitter/siege
	projectile_type = /obj/item/projectile/beam/emitter/siege

	use_power = NO_POWER_USE
	idle_power_usage = 0
	active_power_usage = 0

	active = FALSE
	locked = TRUE
	state = 2

/obj/machinery/power/emitter/energycannon/RefreshParts()
	return
