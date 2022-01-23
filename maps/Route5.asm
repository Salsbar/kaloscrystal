	const_def 2 ; object constants
	const ROUTE5_YOUNGSTER
	const ROUTE5_POKEFAN_M

Route5_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route5PokefanMScript:
	jumptextfaceplayer Route5PokefanMText

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5YoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TEPIG_FROM_YOUNGSTER
	iftrue .GotTepig
	writetext Route5YoungsterText
	yesorno
	iffalse .DidntTake
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext TextGotTepig
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TEPIG, 5
	setevent EVENT_GOT_TEPIG_FROM_YOUNGSTER
.GotTepig
	writetext Route5GotTepigText
	waitbutton
	jump .Done
.DidntTake
	writetext Route5DidntTakeText
	waitbutton
	jump .Done
.NoRoom
	writetext Route5NoRoomText
	waitbutton
.Done
	closetext
	end
	
Route5YoungsterText:
	text "This house used to"
	line "be a daycare for"
	cont "#MON."

	para "But it looks like"
	line "they closed down…"
	
	para "This #MON got"
	line "left behind."
	
	para "You're a trainer,"
	line "won't you take it"
	cont "with you?"
	done
	
Route5GotTepigText:
	text "Take good care of"
	line "that #MON!"
	done
	
Route5DidntTakeText:
	text "Oh, that's too"
	line "bad…"
	done
	
Route5NoRoomText:
	text "Looks like you"
	line "have no room"
	cont "for it."
	done
	
TextGotTepig:
	text "<PLAYER> received"
	line "TEPIG!"
	done
	
Route5PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

Route5_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 17, 15, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 17, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 17, ROUTE_5_SAFFRON_GATE, 2
	warp_event 10, 11, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 17, 17, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 11, BGEVENT_READ, HouseForSaleSign

	db 2 ; object events
	object_event 12, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5YoungsterScript, -1
	object_event 17, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
