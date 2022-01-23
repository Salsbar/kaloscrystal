BattleCommand_NobleRoar: ; 37588
; curse

	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ld a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels

.go

; Lower opponent's Attack and SpAttack.

	ld a, $1
	ld [wKickCounter], a
	call AnimateCurrentMove
	ld a, ATTACK
	call LowerStat
	call BattleCommand_StatDownMessage
	call ResetMiss
	ld a, SP_ATTACK
	call LowerStat
	jp BattleCommand_StatDownMessage

