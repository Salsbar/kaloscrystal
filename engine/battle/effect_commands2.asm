AnimateFailedMove: ; 37e77
	call BattleCommand_LowerSub
	call BattleCommand_MoveDelay
	jp BattleCommand_RaiseSub

; 37e80


BattleCommand_MoveDelay: ; 37e80
; movedelay
; Wait 40 frames.
	ld c, 40
	jp DelayFrames

; 37e85


BattleCommand_ClearText: ; 37e85
; cleartext

; Used in multi-hit moves.
	ld hl, .text
	jp BattleTextBox

.text
	db "@"
; 37e8c


SkipToBattleCommand: ; 37e8c
; Skip over commands until reaching command b.
	ld a, [wBattleScriptBufferAddress + 1]
	ld h, a
	ld a, [wBattleScriptBufferAddress]
	ld l, a
.loop
	ld a, [hli]
	cp b
	jr nz, .loop

	ld a, h
	ld [wBattleScriptBufferAddress + 1], a
	ld a, l
	ld [wBattleScriptBufferAddress], a
	ret

; 37ea1


GetMoveAttr: ; 37ea1
; Assuming hl = Moves + x, return attribute x of move a.
	push bc
	ld bc, MOVE_LENGTH
	call AddNTimes
	call GetMoveByte
	pop bc
	ret

; 37ead


GetMoveData: ; 37ead
; Copy move struct a to de.
	ld hl, Moves
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, Bank(Moves)
	jp FarCopyBytes

; 37ebb


GetMoveByte: ; 37ebb
	ld a, BANK(Moves)
	jp GetFarByte

; 37ec0


DisappearUser: ; 37ec0
	farcall _DisappearUser
	ret

; 37ec7


AppearUserLowerSub: ; 37ec7
	farcall _AppearUserLowerSub
	ret

; 37ece


AppearUserRaiseSub: ; 37ece
	farcall _AppearUserRaiseSub
	ret

; 37ed5


_CheckBattleScene: ; 37ed5
; Checks the options.  Returns carry if battle animations are disabled.
	push hl
	push de
	push bc
	farcall CheckBattleScene
	pop bc
	pop de
	pop hl
	ret

; 37ee2
