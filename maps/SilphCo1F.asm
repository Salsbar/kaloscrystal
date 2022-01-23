	const_def 2 ; object constants
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER

SilphCo1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCoReceptionistScript:
	jumptextfaceplayer SilphCoReceptionistText

SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoOfficerText
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext TextGotGenesect
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GENESECT, 20
	setevent EVENT_GOT_UP_GRADE
.GotUpGrade:
	writetext SilphCoOfficerText_GotUpGrade
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext NoRoomText
	waitbutton
	closetext
	end

TextGotGenesect:
	text "<PLAYER> received"
	line "GENESECT!"
	done
	
NoRoomText:
	text "Uh-oh, looks like"
	line "you have no room"
	cont "in your party."
	done
	
SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."
	done

SilphCoOfficerText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."

	para "After the Rocket"
	line "takeover that"
	cont "happened three"
	cont "years ago,"
	
	para "We've had to step"
	line "up security."
	
	para "What? You stopped"
	line "Team Rocket at"
	cont "Goldenrod Radio"
	cont "Tower?"
	
	para "Wow, you're a"
	line "real hero!"

	para "Have this #-"
	line "MON, it's very"
	cont "rare."
	
	para "Think of it as a"
	line "little souvenir!"
	done

SilphCoOfficerText_GotUpGrade:
	text "Take good care of"
	line "GENESECT, now!"
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
