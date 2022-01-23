	const_def 2 ; object constants
	const ROUTE39BARN_TWIN1
	const ROUTE39BARN_TWIN2
	const ROUTE39BARN_MOOMOO

Route39Barn_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route39BarnTwin1Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext Text_MoomooIsSick
	waitbutton
	closetext
	turnobject ROUTE39BARN_TWIN1, RIGHT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	waitbutton
	closetext
	turnobject ROUTE39BARN_TWIN1, RIGHT
	end

Route39BarnTwin2Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext Text_MoomooIsSick
	waitbutton
	closetext
	turnobject ROUTE39BARN_TWIN2, LEFT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	waitbutton
	closetext
	turnobject ROUTE39BARN_TWIN2, LEFT
	end

MooMoo:
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .HappyCow
	writetext Text_WeakMoo
	writebyte GOGOAT
	special PlaySlowCry
	buttonsound
	writetext Text_ItsCryIsWeak
	checkevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	iftrue .GiveBerry
	waitbutton
	closetext
	end

.GiveBerry:
	buttonsound
	writetext Text_AskGiveBerry
	yesorno
	iffalse .Refused
	checkitem BERRY
	iffalse .NoBerriesInBag
	takeitem BERRY
	copybytetovar wMooMooBerries
	addvar 1
	copyvartobyte wMooMooBerries
	ifequal 3, .ThreeBerries
	ifequal 5, .FiveBerries
	ifequal 7, .SevenBerries
	writetext Text_GaveBerry
	waitbutton
	closetext
	end

.ThreeBerries:
	writetext Text_GaveBerry
	buttonsound
	writetext Text_LittleHealthier
	waitbutton
	closetext
	end

.FiveBerries:
	writetext Text_GaveBerry
	buttonsound
	writetext Text_QuiteHealthy
	waitbutton
	closetext
	end

.SevenBerries:
	playmusic MUSIC_HEAL
	writetext Text_GaveBerry
	pause 60
	buttonsound
	special RestartMapMusic
	writetext Text_TotallyHealthy
	waitbutton
	closetext
	setevent EVENT_HEALED_MOOMOO
	end

.NoBerriesInBag:
	writetext Text_NoBerries
	waitbutton
	closetext
	end

.Refused:
	writetext Text_RefusedToGiveBerry
	waitbutton
	closetext
	end

.HappyCow:
	writetext UnknownText_0x9cd92
	cry GOGOAT
	waitbutton
	closetext
	end

Text_MoomooIsSick:
	text "MOOMOO is sick…"

	para "She needs lots of"
	line "BERRIES."
	done

Text_WereFeedingMoomoo:
	text "We're feeding"
	line "MOOMOO!"
	done

Text_WeakMoo:
	text "GOGOAT: …goo…"
	done

Text_ItsCryIsWeak:
	text "Its cry is weak…"
	done

UnknownText_0x9cd92:
	text "GOGOAT: Gooo!"
	done

Text_AskGiveBerry:
	text "Give a BERRY to"
	line "GOGOAT?"
	done

Text_GaveBerry:
	text "<PLAYER> gave a"
	line "BERRY to GOGOAT."
	done

Text_LittleHealthier:
	text "GOGOAT became a"
	line "little healthier!"
	done

Text_QuiteHealthy:
	text "GOGOAT became"
	line "quite healthy!"
	done

Text_TotallyHealthy:
	text "GOGOAT became"
	line "totally healthy!"
	done

Text_NoBerries:
	text "<PLAYER> has no"
	line "BERRIES…"
	done

Text_RefusedToGiveBerry:
	text "<PLAYER> wouldn't"
	line "give a BERRY."

	para "GOGOAT looks sad."
	done

Route39Barn_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ROUTE_39, 1
	warp_event  4,  7, ROUTE_39, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route39BarnTwin1Script, -1
	object_event  4,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route39BarnTwin2Script, -1
	object_event  3,  3, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMoo, -1
