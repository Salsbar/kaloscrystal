	const_def 2 ; object constants
	const MOUNTMORTAR1FOUTSIDE_TERRAKION
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL1
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL2

MountMortar1FOutside_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Terrakion

.Terrakion:
	checkevent EVENT_FOUGHT_TERRAKION
	iftrue .NoAppear
	appear MOUNTMORTAR1FOUTSIDE_TERRAKION
	return

.NoAppear:
	disappear MOUNTMORTAR1FOUTSIDE_TERRAKION
	return

Terrakion:
	faceplayer
	opentext
	writetext TerrakionText
	cry TERRAKION
	pause 15
	closetext
	setevent EVENT_FOUGHT_TERRAKION
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon TERRAKION, 25
	startbattle
	disappear MOUNTMORTAR1FOUTSIDE_TERRAKION
	reloadmapafterbattle
	end

MountMortar1FOutsideEther:
	itemball ETHER

MountMortar1FOutsideRevive:
	itemball REVIVE

MountMortar1FOutsideHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION
	
TerrakionText:
	text "Raaahkk!"
	done

MountMortar1FOutside_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event  3, 33, ROUTE_42, 3
	warp_event 17, 33, ROUTE_42, 4
	warp_event 37, 33, ROUTE_42, 5
	warp_event 17,  5, MOUNT_MORTAR_2F_INSIDE, 1
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3
	warp_event 33, 13, MOUNT_MORTAR_1F_INSIDE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 25, 22, BGEVENT_ITEM, MountMortar1FOutsideHiddenHyperPotion

	db 3 ; object events
	object_event 19, 29, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Terrakion, EVENT_MOUNT_MORTAR_1F_OUTSIDE_TERRAKION
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideEther, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	object_event 31, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
