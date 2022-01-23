	const_def 2 ; object constants
	const ROUTE10NORTH_ZEKROM
	
Route10North_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Zekrom

.Zekrom:
	checkevent EVENT_FOUGHT_ZEKROM
	iftrue .NoAppear
	checkevent EVENT_DRAGONS_LEFT
	iffalse .NoAppear
	appear ROUTE10NORTH_ZEKROM
	return

.NoAppear:
	disappear ROUTE10NORTH_ZEKROM
	return

Zekrom:
	faceplayer
	opentext
	writetext ZekromText
	cry ZEKROM
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZEKROM
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZEKROM, 60
	startbattle
	disappear ROUTE10NORTH_ZEKROM
	reloadmapafterbattle
	end

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd pokecentersign

ZekromText:
	text "Zeaaahh!"
	done

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3,  9, POWER_PLANT, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5, 11, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign

	db 1 ; object events
	object_event  2, 11, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Zekrom, EVENT_ROUTE_10_NORTH_ZEKROM
	