SUBSYSTEM_DEF(itemspawners)
	name = "Item Spawners"
	wait = 1 HOURS

/datum/controller/subsystem/itemspawners/fire(resumed = 0)
	log_game("Item Spawners Subsystem Firing")
	message_admins("Item Spawners Subsystem Firing.")

	cleanup_trash()
	restock_trash_piles()

/datum/controller/subsystem/itemspawners/proc/restock_trash_piles()
	for(var/obj/item/storage/trash_stack/TS in GLOB.trash_piles)
		TS.loot_players = list()

/datum/controller/subsystem/itemspawners/proc/cleanup_trash()
	for(var/obj/item/storage/trash_stack/TS in GLOB.trash_piles)
		for(var/obj/A in TS.loc.contents)
			if (!istype(A, /obj/item/storage/trash_stack))
				A.Destroy()