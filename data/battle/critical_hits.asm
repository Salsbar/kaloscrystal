CriticalHitMoves:
	db KARATE_CHOP
	db RAZOR_WIND
	db RAZOR_LEAF
	db STONE_EDGE
	db SLASH
	db STORM_THROW
	db CROSS_CHOP
	db SHADOW_CLAW
	db NIGHT_SLASH
	db -1

CriticalHitChances:
	db  7 percent     ;  0
	db 12 percent + 2 ; +1
	db 25 percent + 1 ; +2
	db 33 percent + 1 ; +3
	db 50 percent + 1 ; +4
	db 50 percent + 1 ; +5
	db 50 percent + 1 ; +6
