#define DICK_MOVEMENT_SPEED "hugedick"
#define BREAST_MOVEMENT_SPEED "megamilk"

/datum/status_effect/chem/breast_enlarger
	id = "breast_enlarger"
	alert_type = null
	var/moveCalc = 1
	var/cachedmoveCalc = 1
	var/last_checked_size //used to prevent potential cpu waste from happening every tick.

/datum/status_effect/chem/penis_enlarger
	id = "penis_enlarger"
	alert_type = null
	var/bloodCalc
	var/moveCalc
	var/last_checked_size //used to prevent potential cpu waste, just like the above.
