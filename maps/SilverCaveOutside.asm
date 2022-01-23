	const_def 2; object constants
	const SILVERCAVEOUTSIDE_RESHIRAM1
	const SILVERCAVEOUTSIDE_ZEKROM1
	const SILVERCAVEOUTSIDE_KYUREM1
	const SILVERCAVEOUTSIDE_RESHIRAM2
	const SILVERCAVEOUTSIDE_ZEKROM2
	const SILVERCAVEOUTSIDE_KYUREM2

SilverCaveOutside_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	end
	
.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	return
	
DragonsLeave:
	checkevent EVENT_DRAGONS_LEFT
	iftrue DragonsLeaveDone
	playmusic MUSIC_NONE
	pause 10
	turnobject PLAYER, UP
	pause 5
	disappear SILVERCAVEOUTSIDE_RESHIRAM2
	pause 15
	cry RESHIRAM
	turnobject PLAYER, UP
	pause 5
	disappear SILVERCAVEOUTSIDE_ZEKROM2
	pause 15
	cry ZEKROM
	turnobject PLAYER, UP
	pause 5
	disappear SILVERCAVEOUTSIDE_KYUREM2
	pause 15
	cry KYUREM
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, LEFT
	applymovement SILVERCAVEOUTSIDE_RESHIRAM1, SilverCaveReshiramMovement
	disappear SILVERCAVEOUTSIDE_RESHIRAM1
	waitsfx
	playsound SFX_WARP_FROM
	turnobject PLAYER, RIGHT
	applymovement SILVERCAVEOUTSIDE_ZEKROM1, SilverCaveZekromMovement
	disappear SILVERCAVEOUTSIDE_ZEKROM1
	waitsfx
	playsound SFX_WARP_FROM
	turnobject PLAYER, UP
	applymovement SILVERCAVEOUTSIDE_KYUREM1, SilverCaveKyuremMovement
	disappear SILVERCAVEOUTSIDE_KYUREM1
	waitsfx
	special RestartMapMusic
	setscene SCENE_FINISHED
	setevent EVENT_DRAGONS_LEFT
	setscene SCENE_FINISHED
DragonsLeaveDone:
	end
	
SilverCaveReshiramMovement:
	set_sliding
	fast_jump_step LEFT
	fast_jump_step UP
	fast_jump_step LEFT
	fast_jump_step LEFT
	remove_sliding
	step_end
	
SilverCaveZekromMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step UP
	fast_jump_step UP
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end
	
SilverCaveKyuremMovement:
	set_sliding
	fast_jump_step UP
	fast_jump_step LEFT
	fast_jump_step UP
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step UP
	fast_jump_step UP
	remove_sliding
	step_end

MtSilverPokecenterSign:
	jumpstd pokecentersign

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	db 1 ; coord events
	coord_event 18, 12, SCENE_DEFAULT, DragonsLeave

	db 3 ; bg events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	db 6 ; object events
	object_event 16, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_1
	object_event 20, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_1
	object_event 18, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_1
	object_event 16, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_2
	object_event 20, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_2
	object_event 18, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SILVER_CAVE_DRAGONS_2
	