	const_def 2 ; object constants
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MrFuji:
	faceplayer
	opentext
	writetext MrFujiText
	waitbutton
	checkevent EVENT_GOT_OSHAWOTT_FROM_FUJI
	iftrue .GotOshawott
	writetext MrFujiOshawottOfferText
	yesorno
	iffalse .DidntTake
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext TextGotOshawott
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OSHAWOTT, 5
	setevent EVENT_GOT_OSHAWOTT_FROM_FUJI
	jump .GotOshawott
.DidntTake
	writetext MrFujiDidntTakeText
	waitbutton
	jump .GotOshawott
.NoRoom
	writetext MrFujiNoRoomText
	waitbutton
.GotOshawott
	closetext
	end

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

MrFujiOshawottOfferText:
	text "This #MON here"
	line "was left all"
	cont "alone…"

	para "It would do well"
	line "to have a kind"
	cont "trainer to raise"
	cont "it."
	
	para "Would you like to"
	line "raise this #-"
	cont "MON?"
	done

MrFujiDidntTakeText:
	text "I see…"

	para "Come back if"
	line "you ever change"
	cont "your mind."
	done

MrFujiNoRoomText:
	text "I'm sorry, but"
	line "you have no room"
	cont "for this #MON"
	cont "right now…"
	done
	
TextGotOshawott:
	text "<PLAYER> received"
	line "OSHAWOTT!"
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
