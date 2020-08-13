/obj/item/components
    name = "crafting items"
    icon = 'icons/fallout/objects/items.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/obj/item/blueprint
    name = "crafting blueprint"
    icon = 'icons/fallout/objects/items.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

//misc blueprints
/obj/item/blueprint/misc
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint2"

/obj/item/blueprint/misc/stim
    name = "Stimpack blueprint"
    desc = "Stimpacks"


/obj/item/blueprint/misc/superstims
    name = "Super Stimpack blueprint"
    desc = "Super stims"

//weapon blueprints
/obj/item/blueprint/weapon
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint1"

//ballistics

/obj/item/blueprint/weapon/R91
    name = "R91 assault rifle blueprint"

/obj/item/blueprint/weapon/infiltrator
    name = "Infiltrator blueprint"

/obj/item/blueprint/weapon/uzi
    name = "UZI blueprint"

/obj/item/blueprint/weapon/smg10mm
    name = "10mm SMG blueprint"

/obj/item/blueprint/weapon/marksmanrifle
    name = "Marksman rifle blueprint"

//energy
/obj/item/blueprint/weapon/AEP7
    name = "AEP7 blueprint"

/obj/item/blueprint/weapon/AER9
    name = "AER9 blueprint"

/obj/item/blueprint/weapon/plasmapistol
    name = "Plasma pistol blueprint"

/obj/item/blueprint/weapon/plasmarifle
    name = "Plasma Rifle blueprint"

/obj/item/blueprint/weapon/RCW
    name = "Laser RCW blueprint"


//armor blueprints
/obj/item/blueprint/armor
    name = "armor blueprint"
    icon_state = "blueprint4"

/obj/item/blueprint/armor/combat
    name = "combat armor blueprint"

/obj/item/blueprint/armor/reinforced
    name = "reinforced armor blueprint"

/obj/item/advanced_crafting_components
    name = "crafting blueprint"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

//plasma
/obj/item/advanced_crafting_components/flux
	name = "Flux capacitator"
	desc = "An energy weapon part, a crafstman might want to have this."
	icon_state = "flux"

//lasers
/obj/item/advanced_crafting_components/lenses
	name = "Focused crystal lenses"
	desc = "An energy weapon part, a crafstman might want to have this."
	icon_state = "lenses"

//general energy
/obj/item/advanced_crafting_components/conductors
	name = "Superconductor coil"
	desc = "An energy weapon part, a crafstman might want to have this."
	icon_state = "conductor"

//general ballistics
/obj/item/advanced_crafting_components/receiver
	name = "Advanced modular receiver"
	desc = "A ballistic weapon part, a crafstman might want to have this."
	icon_state = "receiver"

//rifles
/obj/item/advanced_crafting_components/assembly
	name = "Pre-war weapon assembly"
	desc = "A ballistic weapon part, a crafstman might want to have this."
	icon_state = "weapon_parts_1"

//general
/obj/item/advanced_crafting_components/alloys
	name = "Superlight alloys"
	desc = "A general crafting part, a crafstman might want to have this."
	icon_state = "alloys"

/obj/item/attachments
    name = "attachment"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "alloys"
    w_class = WEIGHT_CLASS_TINY

/obj/item/attachments/scope
	name = "Weapon Optics"
	desc = "A long-range scope, attach to a compatible weapon. Remove with a screwdriver. Makes the weapon slightly slower to fire."
	icon_state = "scope"

/obj/item/attachments/recoil_decrease
	name = "Recoil Compensator"
	desc = "Improves stability and recoil, attach to a compatible weapon. Cannot be removed."
	icon_state = "recoilcomp"

/obj/item/attachments/bullet_speed
	name = "Improved Barrel"
	desc = "Improves bullet speed, attach to a compatible weapon. Cannot be removed."
	icon_state = "barrel"

/obj/item/attachments/burst_improvement
	name = "Burst Cam"
	desc = "Increases burst size, attach to a compatible weapon. Cannot be removed."
	icon_state = "burstcam"