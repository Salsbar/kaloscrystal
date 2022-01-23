	const_def 2 ; object constants
	const SILVERCAVEITEMROOMS_POKE_BALL1
	const SILVERCAVEITEMROOMS_POKE_BALL2
	const SILVERCAVEITEMROOMS_POKE_BALL3
	const SILVERCAVEITEMROOMS_POKE_BALL4
	const SILVERCAVEITEMROOMS_POKE_BALL5
	const SILVERCAVEITEMROOMS_POKE_BALL6
	const SILVERCAVEITEMROOMS_POKE_BALL7

SilverCaveItemRooms_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilverCaveItemRoomsMaxRevive:
	itemball MOON_STONE

SilverCaveItemRoomsFullRestore:
	itemball WATER_STONE

SilverCaveItemRoomsSunStone:
	itemball SUN_STONE

SilverCaveItemRoomsThunderStone:
	itemball THUNDERSTONE

SilverCaveItemRoomsShellStone:
	itemball SHELL_STONE

SilverCaveItemRoomsFireStone:
	itemball FIRE_STONE

SilverCaveItemRoomsLeafStone:
	itemball LEAF_STONE

SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13,  3, SILVER_CAVE_ROOM_2, 3
	warp_event  7, 15, SILVER_CAVE_ROOM_2, 4

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event 15, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsSunStone, EVENT_SILVER_CAVE_ITEM_ROOMS_SUN_STONE
	object_event 17, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsThunderStone, EVENT_SILVER_CAVE_ITEM_ROOMS_THUNDERSTONE
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsShellStone, EVENT_SILVER_CAVE_ITEM_ROOMS_SHELL_STONE
	object_event 13, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFireStone, EVENT_SILVER_CAVE_ITEM_ROOMS_FIRE_STONE
	object_event 11, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsLeafStone, EVENT_SILVER_CAVE_ITEM_ROOMS_LEAF_STONE