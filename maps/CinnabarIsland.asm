	const_def 2 ; object constants
	const CINNABARISLAND_VOLCANION
	const CINNABARISLAND_BLUE

CinnabarIsland_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	end
	
.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	setevent EVENT_CINNABAR_ISLAND_VOLCANION
	return
	
Volcanion:
	checkevent EVENT_FOUGHT_VOLCANION
	iftrue .Done
	checkevent EVENT_VIRIDIAN_GYM_BLUE
	iftrue .Done
	checkitem VOLCANIC_ASH
	iffalse .Done
	playmusic MUSIC_NONE
	pause 10
	turnobject PLAYER, RIGHT
	pause 20
	cry VOLCANION
	pause 15
	appear CINNABARISLAND_VOLCANION
	playsound SFX_WARP_FROM
	applymovement CINNABARISLAND_VOLCANION, CinnabarIslandVolcanionMovement
	waitsfx
	opentext
	writetext VolcanionText
	cry VOLCANION
	pause 15
	closetext
	setevent EVENT_FOUGHT_VOLCANION
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLCANION, 40
	startbattle
	disappear CINNABARISLAND_VOLCANION
	reloadmapafterbattle
	setscene SCENE_DEFAULT
	end
	
.Done:
	disappear CINNABARISLAND_VOLCANION
	end
	
CinnabarIslandVolcanionMovement:
	set_sliding
	fast_jump_step LEFT
	fast_jump_step LEFT
	remove_sliding
	step_end

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd pokecentersign

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

VolcanionText:
	text "Vohhhrgh!"
	done

CinnabarIslandBlueText:
	text "Who are you?"

	para "Well, it's plain"
	line "to see that you're"
	cont "a trainer…"

	para "My name's BLUE."

	para "I was once the"
	line "CHAMPION, although"

	para "it was for only a"
	line "short time…"

	para "That meddling RED"
	line "did me in…"

	para "Anyway, what do"
	line "you want? You want"

	para "to challenge me or"
	line "something?"

	para "…I hate to say"
	line "it, but I'm not in"

	para "the mood for a"
	line "battle now."

	para "Take a good look"
	line "around you…"

	para "A volcano erupts,"
	line "and just like"

	para "that, a whole town"
	line "disappears."

	para "We can go on win-"
	line "ning and losing in"

	para "#MON. But if"
	line "nature so much as"

	para "twitches, we can"
	line "lose in a second."

	para "…"

	para "That's the way it"
	line "is…"

	para "But, anyway, I'm"
	line "still a trainer."

	para "If I see a strong"
	line "opponent, it makes"
	cont "me want to battle."

	para "If you want to"
	line "battle me, come to"
	cont "the VIRIDIAN GYM."

	para "I'll take you on"
	line "then."
	done

CinnabarIslandGymSignText:
	text "There's a notice"
	line "here…"

	para "CINNABAR GYM has"
	line "relocated to SEA-"
	cont "FOAM ISLANDS."

	para "BLAINE"
	done

CinnabarIslandSignText:
	text "CINNABAR ISLAND"

	para "The Fiery Town of"
	line "Burning Desire"
	done

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1

	db 1 ; coord events
	coord_event 6, 8, SCENE_DEFAULT, Volcanion

	db 4 ; bg events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event  9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event  7,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	db 2 ; object events
	object_event 11,  8, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_ISLAND_VOLCANION
	object_event  9,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
