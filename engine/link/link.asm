LinkCommunications: ; 28000
	call ClearBGPalettes
	ld c, 80
	call DelayFrames
	call ClearScreen
	call ClearSprites
	call UpdateSprites
	xor a
	ld [hSCX], a
	ld [hSCY], a
	ld c, 80
	call DelayFrames
	call ClearScreen
	call UpdateSprites
	call LoadStandardFont
	call LoadFontsBattleExtra
	farcall LinkComms_LoadPleaseWaitTextboxBorderGFX
	call WaitBGMap2
	hlcoord 3, 8
	ld b, 2
	ld c, 12
	ld d, h
	ld e, l
	farcall LinkTextbox2
	hlcoord 4, 10
	ld de, String_PleaseWait
	call PlaceString
	call SetTradeRoomBGPals
	call WaitBGMap2
	ld hl, wcf5d
	xor a ; LOW($5000)
	ld [hli], a
	ld [hl], HIGH($5000)
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jp nz, Gen2ToGen2LinkComms

Gen2ToGen1LinkComms: ; 2805d
	call ClearLinkData
	call Link_PrepPartyData_Gen1
	call FixDataForLinkTransfer
	xor a
	ld [wPlayerLinkAction], a
	call WaitLinkTransfer
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	jr nz, .player_1

	ld c, 3
	call DelayFrames
	xor a
	ld [hSerialSend], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a

	call DelayFrame
	xor a
	ld [hSerialSend], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a

.player_1
	ld de, MUSIC_NONE
	call PlayMusic
	ld c, 3
	call DelayFrames
	xor a
	ld [rIF], a
	ld a, $8
	ld [rIE], a
	ld hl, wd1f3
	ld de, wEnemyMonSpecies
	ld bc, $11
	call Serial_ExchangeBytes
	ld a, SERIAL_NO_DATA_BYTE
	ld [de], a
	ld hl, wLinkData
	ld de, wOTPlayerName
	ld bc, $1a8
	call Serial_ExchangeBytes
	ld a, SERIAL_NO_DATA_BYTE
	ld [de], a
	ld hl, wLink_c608
	ld de, wTrademons
	ld bc, wTrademons - wLink_c608
	call Serial_ExchangeBytes
	xor a
	ld [rIF], a
	ld a, $1d
	ld [rIE], a
	call Link_CopyRandomNumbers
	ld hl, wOTPlayerName
	call Link_FindFirstNonControlCharacter_SkipZero
	push hl
	ld bc, NAME_LENGTH
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jp z, Function28b22
	cp $7
	jp nc, Function28b22
	ld de, wLinkData
	ld bc, $1a2
	call Link_CopyOTData
	ld de, wPlayerTrademonSpecies
	ld hl, wTimeCapsulePartyMon1Species
	ld c, 2
.loop
	ld a, [de]
	inc de
	and a
	jr z, .loop
	cp SERIAL_PREAMBLE_BYTE
	jr z, .loop
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop
	cp SERIAL_PATCH_LIST_PART_TERMINATOR
	jr z, .next
	push hl
	push bc
	ld b, 0
	dec a
	ld c, a
	add hl, bc
	ld a, SERIAL_NO_DATA_BYTE
	ld [hl], a
	pop bc
	pop hl
	jr .loop

.next
	ld hl, wc90f
	dec c
	jr nz, .loop
	ld hl, wLinkPlayerName
	ld de, wOTPlayerName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld de, wOTPartyCount
	ld a, [hli]
	ld [de], a
	inc de
.party_loop
	ld a, [hli]
	cp -1
	jr z, .done_party
	ld [wd265], a
	push hl
	push de
	callfar ConvertMon_1to2
	pop de
	pop hl
	ld a, [wd265]
	ld [de], a
	inc de
	jr .party_loop

.done_party
	ld [de], a
	ld hl, wTimeCapsulePartyMon1Species
	call Function2868a
	ld a, LOW(wOTPartyMonOT)
	ld [wUnusedD102], a
	ld a, HIGH(wOTPartyMonOT)
	ld [wUnusedD102 + 1], a
	ld de, MUSIC_NONE
	call PlayMusic
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	ld c, 66
	call z, DelayFrames
	ld de, MUSIC_ROUTE_30
	call PlayMusic
	jp InitTradeMenuDisplay
; 28177

Gen2ToGen2LinkComms: ; 28177
	call ClearLinkData
	call Link_PrepPartyData_Gen2
	call FixDataForLinkTransfer
	call Function29dba
	ld a, [wScriptVar]
	and a
	jp z, LinkTimeout
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	jr nz, .Player1

	ld c, 3
	call DelayFrames
	xor a
	ld [hSerialSend], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a

	call DelayFrame
	xor a
	ld [hSerialSend], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a

.Player1:
	ld de, MUSIC_NONE
	call PlayMusic
	ld c, 3
	call DelayFrames
	xor a
	ld [rIF], a
	ld a, $8
	ld [rIE], a
	ld hl, wd1f3
	ld de, wEnemyMonSpecies
	ld bc, $11
	call Serial_ExchangeBytes
	ld a, SERIAL_NO_DATA_BYTE
	ld [de], a
	ld hl, wLinkData
	ld de, wOTPlayerName
	ld bc, $1c2
	call Serial_ExchangeBytes
	ld a, SERIAL_NO_DATA_BYTE
	ld [de], a
	ld hl, wLink_c608
	ld de, wTrademons
	ld bc, wTrademons - wLink_c608
	call Serial_ExchangeBytes
	ld a, [wLinkMode]
	cp LINK_TRADECENTER
	jr nz, .not_trading
	ld hl, wc9f4
	ld de, wcb84
	ld bc, $186
	call ExchangeBytes

.not_trading
	xor a
	ld [rIF], a
	ld a, $1d
	ld [rIE], a
	ld de, MUSIC_NONE
	call PlayMusic
	call Link_CopyRandomNumbers
	ld hl, wOTPlayerName
	call Link_FindFirstNonControlCharacter_SkipZero
	ld de, wLinkData
	ld bc, $1b9
	call Link_CopyOTData
	ld de, wPlayerTrademonSpecies
	ld hl, wLinkPlayerPartyMon1Species
	ld c, 2
.loop1
	ld a, [de]
	inc de
	and a
	jr z, .loop1
	cp SERIAL_PREAMBLE_BYTE
	jr z, .loop1
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop1
	cp SERIAL_PATCH_LIST_PART_TERMINATOR
	jr z, .next1
	push hl
	push bc
	ld b, 0
	dec a
	ld c, a
	add hl, bc
	ld a, SERIAL_NO_DATA_BYTE
	ld [hl], a
	pop bc
	pop hl
	jr .loop1

.next1
	ld hl, wc90f
	dec c
	jr nz, .loop1
	ld a, [wLinkMode]
	cp LINK_TRADECENTER
	jp nz, .skip_mail
	ld hl, wcb84
.loop2
	ld a, [hli]
	cp MAIL_MSG_LENGTH
	jr nz, .loop2
.loop3
	ld a, [hli]
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop3
	cp MAIL_MSG_LENGTH
	jr z, .loop3
	dec hl
	ld de, wcb84
	ld bc, $190 ; 400
	call CopyBytes
	ld hl, wcb84
	ld bc, $c6 ; 198
.loop4
	ld a, [hl]
	cp MAIL_MSG_LENGTH + 1
	jr nz, .okay1
	ld [hl], SERIAL_NO_DATA_BYTE
.okay1
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .loop4
	ld de, wcc9e
.loop5
	ld a, [de]
	inc de
	cp SERIAL_PATCH_LIST_PART_TERMINATOR
	jr z, .start_copying_mail
	ld hl, wcc4a
	dec a
	ld b, $0
	ld c, a
	add hl, bc
	ld [hl], SERIAL_NO_DATA_BYTE
	jr .loop5

.start_copying_mail
	ld hl, wcb84
	ld de, wc9f4
	ld b, PARTY_LENGTH
.copy_mail_loop
	push bc
	ld bc, MAIL_MSG_LENGTH + 1
	call CopyBytes
	ld a, LOW(MAIL_STRUCT_LENGTH - (MAIL_MSG_LENGTH + 1))
	add e
	ld e, a
	ld a, HIGH(MAIL_STRUCT_LENGTH - (MAIL_MSG_LENGTH + 1))
	adc d
	ld d, a
	pop bc
	dec b
	jr nz, .copy_mail_loop
	ld de, wc9f4
	ld b, PARTY_LENGTH
.copy_author_loop
	push bc
	ld a, LOW(MAIL_MSG_LENGTH + 1)
	add e
	ld e, a
	ld a, HIGH(MAIL_MSG_LENGTH + 1)
	adc d
	ld d, a
	ld bc, MAIL_STRUCT_LENGTH - (MAIL_MSG_LENGTH + 1)
	call CopyBytes
	pop bc
	dec b
	jr nz, .copy_author_loop
	ld b, PARTY_LENGTH
	ld de, wc9f4
.fix_mail_loop
	push bc
	push de
	farcall IsMailEuropean
	ld a, c
	or a
	jr z, .next
	sub $3
	jr nc, .skip
	farcall DeutenEnglischenPost
	jr .next

.skip
	cp $2
	jr nc, .next
	farcall HandleSpanishItalianMail

.next
	pop de
	ld hl, MAIL_STRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	pop bc
	dec b
	jr nz, .fix_mail_loop
	ld de, wcb0e
	xor a
	ld [de], a

.skip_mail
	ld hl, wLinkPlayerName
	ld de, wOTPlayerName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld de, wOTPartyCount
	ld bc, 1 + PARTY_LENGTH + 1
	call CopyBytes
	ld de, wOTPlayerID
	ld bc, 2
	call CopyBytes
	ld de, wOTPartyMons
	ld bc, wOTPartyDataEnd - wOTPartyMons
	call CopyBytes
	ld a, LOW(wOTPartyMonOT)
	ld [wUnusedD102], a
	ld a, HIGH(wOTPartyMonOT)
	ld [wUnusedD102 + 1], a
	ld de, MUSIC_NONE
	call PlayMusic
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	ld c, 66
	call z, DelayFrames
	ld a, [wLinkMode]
	cp LINK_COLOSSEUM
	jr nz, .ready_to_trade
	ld a, CAL
	ld [wOtherTrainerClass], a
	call ClearScreen
	farcall Link_WaitBGMap
	ld hl, wOptions
	ld a, [hl]
	push af
	and 1 << STEREO
	or TEXT_DELAY_MED
	ld [hl], a
	ld hl, wOTPlayerName
	ld de, wOTClassName
	ld bc, NAME_LENGTH
	call CopyBytes
	call ReturnToMapFromSubmenu

	; LET'S DO THIS
	ld a, [wDisableTextAcceleration]
	push af
	ld a, 1
	ld [wDisableTextAcceleration], a
	ld a, [rIE]
	push af
	ld a, [rIF]
	push af
	xor a
	ld [rIF], a
	ld a, [rIE]
	set 1, a
	ld [rIE], a
	pop af
	ld [rIF], a

	predef StartBattle

	ld a, [rIF]
	ld h, a
	xor a
	ld [rIF], a
	pop af
	ld [rIE], a
	ld a, h
	ld [rIF], a
	pop af
	ld [wDisableTextAcceleration], a
	pop af
	ld [wOptions], a
	farcall LoadPokemonData
	jp Function28b22

.ready_to_trade
	ld de, MUSIC_ROUTE_30
	call PlayMusic
	jp InitTradeMenuDisplay
; 283b2

LinkTimeout: ; 283b2
	ld de, .TooMuchTimeHasElapsed
	ld b, 10
.loop
	call DelayFrame
	call LinkDataReceived
	dec b
	jr nz, .loop
	xor a
	ld [hld], a
	ld [hl], a
	ld [hVBlank], a
	push de
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	push de
	ld d, h
	ld e, l
	farcall LinkTextbox2
	pop de
	pop hl
	bccoord 1, 14
	call PlaceHLTextAtBC
	call RotateThreePalettesRight
	call ClearScreen
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call WaitBGMap2
	ret
; 283ed

.TooMuchTimeHasElapsed: ; 0x283ed
	; Too much time has elapsed. Please try again.
	text_jump UnknownText_0x1c4183
	db "@"
; 0x283f2

ExchangeBytes: ; 283f2
	ld a, TRUE
	ld [hSerialIgnoringInitialData], a
.loop
	ld a, [hl]
	ld [hSerialSend], a
	call Serial_ExchangeByte
	push bc
	ld b, a
	inc hl
	ld a, 48
.delay_cycles
	dec a
	jr nz, .delay_cycles
	ld a, [hSerialIgnoringInitialData]
	and a
	ld a, b
	pop bc
	jr z, .load
	dec hl
	xor a
	ld [hSerialIgnoringInitialData], a
	jr .loop

.load
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret
; 28419

String_PleaseWait: ; 28419
	db "PLEASE WAIT!@"
; 28426

ClearLinkData: ; 28426
	ld hl, wLinkData
	ld bc, wLinkDataEnd - wLinkData
.loop
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret
; 28434

FixDataForLinkTransfer: ; 28434
	ld hl, wd1f3
	ld a, SERIAL_PREAMBLE_BYTE
	ld b, wLinkBattleRNs - wd1f3
.loop1
	ld [hli], a
	dec b
	jr nz, .loop1
	ld b, wTempEnemyMonSpecies - wLinkBattleRNs
.loop2
	call Random
	cp SERIAL_PREAMBLE_BYTE
	jr nc, .loop2
	ld [hli], a
	dec b
	jr nz, .loop2
	ld hl, wLink_c608
	ld a, SERIAL_PREAMBLE_BYTE
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld b, $c8
	xor a
.loop3
	ld [hli], a
	dec b
	jr nz, .loop3
	ld hl, wTimeCapsulePartyMon1 - 1 + 6
	ld de, wc612
	lb bc, 0, 0
.loop4
	inc c
	ld a, c
	cp SERIAL_PREAMBLE_BYTE
	jr z, .next1
	ld a, b
	dec a
	jr nz, .next2
	push bc
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	ld b, $d
	jr z, .got_value
	ld b, $27
.got_value
	ld a, c
	cp b
	pop bc
	jr z, .done
.next2
	inc hl
	ld a, [hl]
	cp SERIAL_NO_DATA_BYTE
	jr nz, .loop4
	ld a, c
	ld [de], a
	inc de
	ld [hl], SERIAL_PATCH_LIST_PART_TERMINATOR
	jr .loop4

.next1
	ld a, SERIAL_PATCH_LIST_PART_TERMINATOR
	ld [de], a
	inc de
	lb bc, 1, 0
	jr .loop4

.done
	ld a, SERIAL_PATCH_LIST_PART_TERMINATOR
	ld [de], a
	ret
; 28499

Link_PrepPartyData_Gen1: ; 28499
	ld de, wLinkData
	ld a, SERIAL_PREAMBLE_BYTE
	ld b, PARTY_LENGTH
.loop1
	ld [de], a
	inc de
	dec b
	jr nz, .loop1
	ld hl, wPlayerName
	ld bc, NAME_LENGTH
	call CopyBytes
	push de
	ld hl, wPartyCount
	ld a, [hli]
	ld [de], a
	inc de
.loop2
	ld a, [hli]
	cp -1
	jr z, .done_party
	ld [wd265], a
	push hl
	push de
	callfar ConvertMon_2to1
	pop de
	pop hl
	ld a, [wd265]
	ld [de], a
	inc de
	jr .loop2

.done_party
	ld [de], a
	pop de
	ld hl, 1 + PARTY_LENGTH + 1
	add hl, de
	ld d, h
	ld e, l
	ld hl, wPartyMon1Species
	ld c, PARTY_LENGTH
.mon_loop
	push bc
	call .ConvertPartyStruct2to1
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec c
	jr nz, .mon_loop
	ld hl, wPartyMonOT
	call .copy_ot_nicks
	ld hl, wPartyMonNicknames
.copy_ot_nicks
	ld bc, PARTY_LENGTH * NAME_LENGTH
	jp CopyBytes
; 284f6

.ConvertPartyStruct2to1: ; 284f6
	ld b, h
	ld c, l
	push de
	push bc
	ld a, [hl]
	ld [wd265], a
	callfar ConvertMon_2to1
	pop bc
	pop de
	ld a, [wd265]
	ld [de], a
	inc de
	ld hl, MON_HP
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	xor a
	ld [de], a
	inc de
	ld hl, MON_STATUS
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de
	;ld a, [bc]
	;cp MAGNEMITE
	;jr z, .steel_type
	;cp MAGNETON
	jr .skip_steel

.steel_type
	ld a, ELECTRIC
	ld [de], a
	inc de
	ld [de], a
	inc de
	jr .done_steel

.skip_steel
	push bc
	dec a
	ld hl, BaseData + BASE_TYPES
	ld bc, BASE_DATA_SIZE
	call AddNTimes
	ld bc, BASE_CATCH_RATE - BASE_TYPES
	ld a, BANK(BaseData)
	call FarCopyBytes
	pop bc

.done_steel
	push bc
	ld hl, MON_ITEM
	add hl, bc
	ld bc, MON_HAPPINESS - MON_ITEM
	call CopyBytes
	pop bc

	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld [wCurPartyLevel], a
	inc de

	push bc
	ld hl, MON_MAXHP
	add hl, bc
	ld bc, MON_SAT - MON_MAXHP
	call CopyBytes
	pop bc

	push de
	push bc

	ld a, [bc]
	dec a
	push bc
	ld b, 0
	ld c, a
	ld hl, KantoMonSpecials
	add hl, bc
	ld a, BANK(KantoMonSpecials)
	call GetFarByte
	ld [wBaseSpecialAttack], a
	pop bc

	ld hl, MON_STAT_EXP - 1
	add hl, bc
	ld c, STAT_SATK
	ld b, TRUE
	predef CalcMonStatC

	pop bc
	pop de

	ld a, [hQuotient + 1]
	ld [de], a
	inc de
	ld a, [hQuotient + 2]
	ld [de], a
	inc de
	ld h, b
	ld l, c
	ret
; 28595

Link_PrepPartyData_Gen2: ; 28595
	ld de, wLinkData
	ld a, SERIAL_PREAMBLE_BYTE
	ld b, PARTY_LENGTH
.loop1
	ld [de], a
	inc de
	dec b
	jr nz, .loop1
	ld hl, wPlayerName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld hl, wPartyCount
	ld bc, 1 + PARTY_LENGTH + 1
	call CopyBytes
	ld hl, wPlayerID
	ld bc, 2
	call CopyBytes
	ld hl, wPartyMon1Species
	ld bc, PARTY_LENGTH * PARTYMON_STRUCT_LENGTH
	call CopyBytes
	ld hl, wPartyMonOT
	ld bc, PARTY_LENGTH * NAME_LENGTH
	call CopyBytes
	ld hl, wPartyMonNicknames
	ld bc, PARTY_LENGTH * MON_NAME_LENGTH
	call CopyBytes

; Okay, we did all that.  Now, are we in the trade center?
	ld a, [wLinkMode]
	cp LINK_TRADECENTER
	ret nz

; Fill 5 bytes at wc9f4 with $20
	ld de, wc9f4
	ld a, $20
	call Function28682

; Copy all the mail messages to wc9f9
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	ld hl, sPartyMail
	ld b, PARTY_LENGTH
.loop2
	push bc
	ld bc, MAIL_MSG_LENGTH + 1
	call CopyBytes
	ld bc, sPartyMon1MailEnd - sPartyMon1MailAuthor
	add hl, bc
	pop bc
	dec b
	jr nz, .loop2
; Copy the mail data to wcabf
	ld hl, sPartyMail
	ld b, PARTY_LENGTH
.loop3
	push bc
	ld bc, MAIL_MSG_LENGTH + 1
	add hl, bc
	ld bc, sPartyMon1MailEnd - sPartyMon1MailAuthor
	call CopyBytes
	pop bc
	dec b
	jr nz, .loop3

	ld b, PARTY_LENGTH
	ld de, sPartyMail
	ld hl, wc9f9
.loop4
	push bc
	push hl
	push de
	push hl
	farcall IsMailEuropean
	pop de
	ld a, c
	or a
	jr z, .next
	sub $3
	jr nc, .italian_spanish
	farcall HandleFrenchGermanMail
	jr .next

.italian_spanish
	cp $2
	jr nc, .next
	farcall HandleSpanishItalianMail

.next
	pop de
	ld hl, MAIL_STRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	pop hl
	ld bc, sPartyMon1MailAuthor - sPartyMon1Mail
	add hl, bc
	pop bc
	dec b
	jr nz, .loop4
	call CloseSRAM
	ld hl, wc9f9
	ld bc, PARTY_LENGTH * (sPartyMon1MailAuthor - sPartyMon1Mail)
.loop5
	ld a, [hl]
	cp SERIAL_NO_DATA_BYTE
	jr nz, .skip2
	ld [hl], sPartyMon1MailAuthor - sPartyMon1Mail

.skip2
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .loop5
	ld hl, wcabf
	ld de, wcb13
	ld b, PARTY_LENGTH * (sPartyMon1MailEnd - sPartyMon1MailAuthor)
	ld c, $0
.loop6
	inc c
	ld a, [hl]
	cp SERIAL_NO_DATA_BYTE
	jr nz, .skip3
	ld [hl], SERIAL_PATCH_LIST_PART_TERMINATOR
	ld a, c
	ld [de], a
	inc de

.skip3
	inc hl
	dec b
	jr nz, .loop6
	ld a, SERIAL_PATCH_LIST_PART_TERMINATOR
	ld [de], a
	ret
; 28682

Function28682: ; 28682
	ld c, 5
.loop
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret
; 2868a

Function2868a: ; 2868a
	push hl
	ld d, h
	ld e, l
	ld bc, wLinkOTPartyMonTypes
	ld hl, wcbe8
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, wOTPartyMon1Species
	ld c, PARTY_LENGTH
.loop
	push bc
	call .ConvertToGen2
	pop bc
	dec c
	jr nz, .loop
	pop hl
	ld bc, PARTY_LENGTH * REDMON_STRUCT_LENGTH
	add hl, bc
	ld de, wOTPartyMonOT
	ld bc, PARTY_LENGTH * NAME_LENGTH
	call CopyBytes
	ld de, wOTPartyMonNicknames
	ld bc, PARTY_LENGTH * MON_NAME_LENGTH
	jp CopyBytes
; 286ba

.ConvertToGen2: ; 286ba
	ld b, h
	ld c, l
	ld a, [de]
	inc de
	push bc
	push de
	ld [wd265], a
	callfar ConvertMon_1to2
	pop de
	pop bc
	ld a, [wd265]
	ld [bc], a
	ld [wCurSpecies], a
	ld hl, MON_HP
	add hl, bc
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hl], a
	inc de
	ld hl, MON_STATUS
	add hl, bc
	ld a, [de]
	inc de
	ld [hl], a
	ld hl, wcbe8
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, l
	ld [wcbe8], a
	ld a, h
	ld [wcbe8 + 1], a
	push bc
	ld hl, MON_ITEM
	add hl, bc
	push hl
	ld h, d
	ld l, e
	pop de
	push bc
	ld a, [hli]
	ld b, a
	call TimeCapsule_ReplaceTeruSama
	ld a, b
	ld [de], a
	inc de
	pop bc
	ld bc, $19
	call CopyBytes
	pop bc
	ld d, h
	ld e, l
	ld hl, $1f
	add hl, bc
	ld a, [de]
	inc de
	ld [hl], a
	ld [wCurPartyLevel], a
	push bc
	ld hl, $24
	add hl, bc
	push hl
	ld h, d
	ld l, e
	pop de
	ld bc, 8
	call CopyBytes
	pop bc
	call GetBaseData
	push de
	push bc
	ld d, h
	ld e, l
	ld hl, MON_STAT_EXP - 1
	add hl, bc
	ld c, STAT_SATK
	ld b, TRUE
	predef CalcMonStatC
	pop bc
	pop hl
	ld a, [hQuotient + 1]
	ld [hli], a
	ld a, [hQuotient + 2]
	ld [hli], a
	push hl
	push bc
	ld hl, MON_STAT_EXP - 1
	add hl, bc
	ld c, STAT_SDEF
	ld b, TRUE
	predef CalcMonStatC
	pop bc
	pop hl
	ld a, [hQuotient + 1]
	ld [hli], a
	ld a, [hQuotient + 2]
	ld [hli], a
	push hl
	ld hl, $1b
	add hl, bc
	ld a, $46
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	pop hl
	inc de
	inc de
	ret
; 28771

TimeCapsule_ReplaceTeruSama: ; 28771
	ld a, b
	and a
	ret z
	push hl
	ld hl, TimeCapsule_CatchRateItems
.loop
	ld a, [hli]
	and a
	jr z, .end
	cp b
	jr z, .found
	inc hl
	jr .loop

.found
	ld b, [hl]

.end
	pop hl
	ret


INCLUDE "data/items/catch_rate_items.asm"


Link_CopyOTData: ; 2879e
.loop
	ld a, [hli]
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret
; 287ab

Link_CopyRandomNumbers: ; 287ab
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	ret z
	ld hl, wEnemyMonSpecies
	call Link_FindFirstNonControlCharacter_AllowZero
	ld de, wLinkBattleRNs
	ld c, 10
.loop
	ld a, [hli]
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop
	cp SERIAL_PREAMBLE_BYTE
	jr z, .loop
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret
; 287ca

Link_FindFirstNonControlCharacter_SkipZero: ; 287ca
.loop
	ld a, [hli]
	and a
	jr z, .loop
	cp SERIAL_PREAMBLE_BYTE
	jr z, .loop
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop
	dec hl
	ret
; 287d8

Link_FindFirstNonControlCharacter_AllowZero: ; 287d8
.loop
	ld a, [hli]
	cp SERIAL_PREAMBLE_BYTE
	jr z, .loop
	cp SERIAL_NO_DATA_BYTE
	jr z, .loop
	dec hl
	ret
; 287e3

InitTradeMenuDisplay: ; 287e3
	call ClearScreen
	call LoadTradeScreenBorder
	farcall InitTradeSpeciesList
	xor a
	ld hl, wOtherPlayerLinkMode
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, 1
	ld [wMenuCursorY], a
	inc a
	ld [wPlayerLinkAction], a
	jp LinkTrade_PlayerPartyMenu
; 28803

LinkTrade_OTPartyMenu: ; 28803
	ld a, OTPARTYMON
	ld [wMonType], a
	ld a, A_BUTTON | D_UP | D_DOWN
	ld [wMenuJoypadFilter], a
	ld a, [wOTPartyCount]
	ld [w2DMenuNumRows], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 9
	ld [w2DMenuCursorInitY], a
	ld a, 6
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [wMenuCursorX], a
	ln a, 1, 0
	ld [w2DMenuCursorOffsets], a
	ld a, MENU_UNUSED_3
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a

LinkTradeOTPartymonMenuLoop: ; 28835
	farcall LinkTradeMenu
	ld a, d
	and a
	jp z, LinkTradePartiesMenuMasterLoop
	bit A_BUTTON_F, a
	jr z, .not_a_button
	ld a, INIT_ENEMYOT_LIST
	ld [wInitListType], a
	callfar InitList
	ld hl, wOTPartyMon1Species
	farcall LinkMonStatsScreen
	jp LinkTradePartiesMenuMasterLoop

.not_a_button
	bit D_UP_F, a
	jr z, .not_d_up
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wOTPartyCount]
	cp b
	jp nz, LinkTradePartiesMenuMasterLoop
	xor a
	ld [wMonType], a
	call HideCursor
	push hl
	push bc
	ld bc, NAME_LENGTH
	add hl, bc
	ld [hl], " "
	pop bc
	pop hl
	ld a, [wPartyCount]
	ld [wMenuCursorY], a
	jr LinkTrade_PlayerPartyMenu

.not_d_up
	bit D_DOWN_F, a
	jp z, LinkTradePartiesMenuMasterLoop
	jp Function28ac9
; 2888b

LinkTrade_PlayerPartyMenu: ; 2888b
	farcall InitMG_Mobile_LinkTradePalMap
	xor a
	ld [wMonType], a
	ld a, A_BUTTON | D_UP | D_DOWN
	ld [wMenuJoypadFilter], a
	ld a, [wPartyCount]
	ld [w2DMenuNumRows], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 1
	ld [w2DMenuCursorInitY], a
	ld a, 6
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [wMenuCursorX], a
	ln a, 1, 0
	ld [w2DMenuCursorOffsets], a
	ld a, MENU_UNUSED_3
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	call WaitBGMap2

LinkTradePartymonMenuLoop: ; 288c5
	farcall LinkTradeMenu
	ld a, d
	and a
	jr nz, .check_joypad
	jp LinkTradePartiesMenuMasterLoop

.check_joypad
	bit A_BUTTON_F, a
	jr z, .not_a_button
	jp Function28926

.not_a_button
	bit D_DOWN_F, a
	jr z, .not_d_down
	ld a, [wMenuCursorY]
	dec a
	jp nz, LinkTradePartiesMenuMasterLoop
	ld a, OTPARTYMON
	ld [wMonType], a
	call HideCursor
	push hl
	push bc
	ld bc, NAME_LENGTH
	add hl, bc
	ld [hl], " "
	pop bc
	pop hl
	ld a, 1
	ld [wMenuCursorY], a
	jp LinkTrade_OTPartyMenu

.not_d_down
	bit D_UP_F, a
	jr z, LinkTradePartiesMenuMasterLoop
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wPartyCount]
	cp b
	jr nz, LinkTradePartiesMenuMasterLoop
	call HideCursor
	push hl
	push bc
	ld bc, NAME_LENGTH
	add hl, bc
	ld [hl], " "
	pop bc
	pop hl
	jp Function28ade
; 2891c

LinkTradePartiesMenuMasterLoop: ; 2891c
	ld a, [wMonType]
	and a
	jp z, LinkTradePartymonMenuLoop ; PARTYMON
	jp LinkTradeOTPartymonMenuLoop  ; OTPARTYMON
; 28926

Function28926: ; 28926
	call LoadTileMapToTempTileMap
	ld a, [wMenuCursorY]
	push af
	hlcoord 0, 15
	ld b, 1
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 2, 16
	ld de, .String_Stats_Trade
	call PlaceString
	farcall Link_WaitBGMap

.joy_loop
	ld a, " "
	ldcoord_a 11, 16
	ld a, A_BUTTON | B_BUTTON | D_RIGHT
	ld [wMenuJoypadFilter], a
	ld a, 1
	ld [w2DMenuNumRows], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 16
	ld [w2DMenuCursorInitY], a
	ld a, 1
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [wMenuCursorY], a
	ld [wMenuCursorX], a
	ln a, 2, 0
	ld [w2DMenuCursorOffsets], a
	xor a
	ld [w2DMenuFlags1], a
	ld [w2DMenuFlags2], a
	call ScrollingMenuJoypad
	bit D_RIGHT_F, a
	jr nz, .d_right
	bit B_BUTTON_F, a
	jr z, .show_stats
.b_button
	pop af
	ld [wMenuCursorY], a
	call Call_LoadTempTileMapToTileMap
	jp LinkTrade_PlayerPartyMenu

.d_right
	ld a, " "
	ldcoord_a 1, 16
	ld a, A_BUTTON | B_BUTTON | D_LEFT
	ld [wMenuJoypadFilter], a
	ld a, 1
	ld [w2DMenuNumRows], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 16
	ld [w2DMenuCursorInitY], a
	ld a, 11
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [wMenuCursorY], a
	ld [wMenuCursorX], a
	ln a, 2, 0
	ld [w2DMenuCursorOffsets], a
	xor a
	ld [w2DMenuFlags1], a
	ld [w2DMenuFlags2], a
	call ScrollingMenuJoypad
	bit D_LEFT_F, a
	jp nz, .joy_loop
	bit B_BUTTON_F, a
	jr nz, .b_button
	jr .try_trade

.show_stats
	pop af
	ld [wMenuCursorY], a
	ld a, INIT_PLAYEROT_LIST
	ld [wInitListType], a
	callfar InitList
	farcall LinkMonStatsScreen
	call Call_LoadTempTileMapToTileMap
	hlcoord 6, 1
	lb bc, 6, 1
	ld a, " "
	call LinkEngine_FillBox
	hlcoord 17, 1
	lb bc, 6, 1
	ld a, " "
	call LinkEngine_FillBox
	jp LinkTrade_PlayerPartyMenu

.try_trade
	call PlaceHollowCursor
	pop af
	ld [wMenuCursorY], a
	dec a
	ld [wd002], a
	ld [wPlayerLinkAction], a
	farcall Function16d6ce
	ld a, [wOtherPlayerLinkMode]
	cp $f
	jp z, InitTradeMenuDisplay
	ld [wd003], a
	call Function28b68
	ld c, 100
	call DelayFrames
	farcall ValidateOTTrademon
	jr c, .abnormal
	farcall Functionfb5dd
	jp nc, LinkTrade
	xor a
	ld [wcf57], a
	ld [wOtherPlayerLinkAction], a
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	farcall Link_WaitBGMap
	ld hl, .Text_CantTradeLastMon
	bccoord 1, 14
	call PlaceHLTextAtBC
	jr .cancel_trade

.abnormal
	xor a
	ld [wcf57], a
	ld [wOtherPlayerLinkAction], a
	ld a, [wd003]
	ld hl, wOTPartySpecies
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wd265], a
	call GetPokemonName
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	farcall Link_WaitBGMap
	ld hl, .Text_Abnormal
	bccoord 1, 14
	call PlaceHLTextAtBC

.cancel_trade
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 1, 14
	ld de, String_TooBadTheTradeWasCanceled
	call PlaceString
	ld a, $1
	ld [wPlayerLinkAction], a
	farcall Function16d6ce
	ld c, 100
	call DelayFrames
	jp InitTradeMenuDisplay
; 28aaf


.Text_CantTradeLastMon: ; 0x28aaf
	; If you trade that #MON, you won't be able to battle.
	text_jump UnknownText_0x1c41b1
	db "@"
; 0x28ab4

.String_Stats_Trade: ; 28ab4
	db "STATS     TRADE@"

.Text_Abnormal: ; 0x28ac4
	; Your friend's @  appears to be abnormal!
	text_jump UnknownText_0x1c41e6
	db "@"
; 0x28ac9


Function28ac9: ; 28ac9
	ld a, [wMenuCursorY]
	cp 1
	jp nz, LinkTradePartiesMenuMasterLoop
	call HideCursor
	push hl
	push bc
	ld bc, NAME_LENGTH
	add hl, bc
	ld [hl], " "
	pop bc
	pop hl
Function28ade: ; 28ade
.loop1
	ld a, "▶"
	ldcoord_a 9, 17
.loop2
	call JoyTextDelay
	ld a, [hJoyLast]
	and a
	jr z, .loop2
	bit A_BUTTON_F, a
	jr nz, .a_button
	push af
	ld a, " "
	ldcoord_a 9, 17
	pop af
	bit D_UP_F, a
	jr z, .d_up
	ld a, [wOTPartyCount]
	ld [wMenuCursorY], a
	jp LinkTrade_OTPartyMenu

.d_up
	ld a, $1
	ld [wMenuCursorY], a
	jp LinkTrade_PlayerPartyMenu

.a_button
	ld a, "▷"
	ldcoord_a 9, 17
	ld a, $f
	ld [wPlayerLinkAction], a
	farcall Function16d6ce
	ld a, [wOtherPlayerLinkMode]
	cp $f
	jr nz, .loop1
Function28b22: ; 28b22
	call RotateThreePalettesRight
	call ClearScreen
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call WaitBGMap2
	xor a
	ld [wcfbb], a
	xor a
	ld [rSB], a
	ld [hSerialSend], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a
	ret
; 28b42

Unreferenced_Function28b42: ; 28b42
	hlcoord 0, 16
	ld a, "┘"
	ld bc, 2 * SCREEN_WIDTH
	call ByteFill
	hlcoord 1, 16
	ld a, " "
	ld bc, SCREEN_WIDTH - 2
	call ByteFill
	hlcoord 2, 16
	ld de, .Cancel
	jp PlaceString
; 28b61

.Cancel: ; 28b61
	db "CANCEL@"
; 28b68

Function28b68: ; 28b68
	ld a, [wOtherPlayerLinkMode]
	hlcoord 6, 9
	ld bc, SCREEN_WIDTH
	call AddNTimes
	ld [hl], "▷"
	ret
; 28b77

LinkEngine_FillBox: ; 28b77
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret
; 28b87

LinkTrade: ; 28b87
	xor a
	ld [wcf57], a
	ld [wOtherPlayerLinkAction], a
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	farcall Link_WaitBGMap
	ld a, [wd002]
	ld hl, wPartySpecies
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wd265], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wd004
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	ld a, [wd003]
	ld hl, wOTPartySpecies
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wd265], a
	call GetPokemonName
	ld hl, UnknownText_0x28eb8
	bccoord 1, 14
	call PlaceHLTextAtBC
	call LoadStandardMenuHeader
	hlcoord 10, 7
	ld b, 3
	ld c, 7
	call LinkTextboxAtHL
	ld de, String28eab
	hlcoord 12, 8
	call PlaceString
	ld a, 8
	ld [w2DMenuCursorInitY], a
	ld a, 11
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 2
	ld [w2DMenuNumRows], a
	xor a
	ld [w2DMenuFlags1], a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuJoypadFilter], a
	ld a, 1
	ld [wMenuCursorY], a
	ld [wMenuCursorX], a
	farcall Link_WaitBGMap
	call ScrollingMenuJoypad
	push af
	call Call_ExitMenu
	call WaitBGMap2
	pop af
	bit 1, a
	jr nz, .asm_28c33
	ld a, [wMenuCursorY]
	dec a
	jr z, .asm_28c54

.asm_28c33
	ld a, $1
	ld [wPlayerLinkAction], a
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 1, 14
	ld de, String_TooBadTheTradeWasCanceled
	call PlaceString
	farcall Function16d6ce
	jp Function28ea3

.asm_28c54
	ld a, $2
	ld [wPlayerLinkAction], a
	farcall Function16d6ce
	ld a, [wOtherPlayerLinkMode]
	dec a
	jr nz, .asm_28c7b
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 1, 14
	ld de, String_TooBadTheTradeWasCanceled
	call PlaceString
	jp Function28ea3

.asm_28c7b
	ld hl, sPartyMail
	ld a, [wd002]
	ld bc, MAIL_STRUCT_LENGTH
	call AddNTimes
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	ld d, h
	ld e, l
	ld bc, MAIL_STRUCT_LENGTH
	add hl, bc
	ld a, [wd002]
	ld c, a
.asm_28c96
	inc c
	ld a, c
	cp PARTY_LENGTH
	jr z, .asm_28ca6
	push bc
	ld bc, MAIL_STRUCT_LENGTH
	call CopyBytes
	pop bc
	jr .asm_28c96

.asm_28ca6
	ld hl, sPartyMail
	ld a, [wPartyCount]
	dec a
	ld bc, MAIL_STRUCT_LENGTH
	call AddNTimes
	push hl
	ld hl, wc9f4
	ld a, [wd003]
	ld bc, MAIL_STRUCT_LENGTH
	call AddNTimes
	pop de
	ld bc, MAIL_STRUCT_LENGTH
	call CopyBytes
	call CloseSRAM
	ld hl, wPlayerName
	ld de, wPlayerTrademonSenderName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld a, [wd002]
	ld hl, wPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wPlayerTrademonSpecies], a
	push af
	ld a, [wd002]
	ld hl, wPartyMonOT
	call SkipNames
	ld de, wPlayerTrademonOTName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld hl, wPartyMon1ID
	ld a, [wd002]
	call GetPartyLocation
	ld a, [hli]
	ld [wPlayerTrademonID], a
	ld a, [hl]
	ld [wPlayerTrademonID + 1], a
	ld hl, wPartyMon1DVs
	ld a, [wd002]
	call GetPartyLocation
	ld a, [hli]
	ld [wPlayerTrademonDVs], a
	ld a, [hl]
	ld [wPlayerTrademonDVs + 1], a
	ld a, [wd002]
	ld hl, wPartyMon1Species
	call GetPartyLocation
	ld b, h
	ld c, l
	farcall GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a
	ld hl, wOTPlayerName
	ld de, wOTTrademonSenderName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld a, [wd003]
	ld hl, wOTPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wOTTrademonSpecies], a
	ld a, [wd003]
	ld hl, wOTPartyMonOT
	call SkipNames
	ld de, wOTTrademonOTName
	ld bc, NAME_LENGTH
	call CopyBytes
	ld hl, wOTPartyMon1ID
	ld a, [wd003]
	call GetPartyLocation
	ld a, [hli]
	ld [wOTTrademonID], a
	ld a, [hl]
	ld [wOTTrademonID + 1], a
	ld hl, wOTPartyMon1DVs
	ld a, [wd003]
	call GetPartyLocation
	ld a, [hli]
	ld [wOTTrademonDVs], a
	ld a, [hl]
	ld [wOTTrademonDVs + 1], a
	ld a, [wd003]
	ld hl, wOTPartyMon1Species
	call GetPartyLocation
	ld b, h
	ld c, l
	farcall GetCaughtGender
	ld a, c
	ld [wOTTrademonCaughtData], a
	ld a, [wd002]
	ld [wCurPartyMon], a
	ld hl, wPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wd002], a
	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	callfar RemoveMonFromPartyOrBox
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	ld a, TRUE
	ld [wForceEvolution], a
	ld a, [wd003]
	push af
	ld hl, wOTPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wd003], a
	ld c, 100
	call DelayFrames
	call ClearTileMap
	call LoadFontsBattleExtra
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	ld a, [hSerialConnectionStatus]
	cp USING_EXTERNAL_CLOCK
	jr z, .player_2
	predef TradeAnimation
	jr .done_animation

.player_2
	predef TradeAnimationPlayer2

.done_animation
	pop af
	ld c, a
	ld [wCurPartyMon], a
	ld hl, wOTPartySpecies
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld hl, wOTPartyMon1Species
	ld a, c
	call GetPartyLocation
	ld de, wTempMonSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes
	predef AddTempmonToParty
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	callfar EvolvePokemon
	call ClearScreen
	call LoadTradeScreenBorder
	call SetTradeRoomBGPals
	farcall Link_WaitBGMap
	ld b, $1
	pop af
	ld c, a
	cp VICTINI
	jr z, .loop
	ld a, [wCurPartySpecies]
	cp VICTINI
	jr z, .loop
	ld b, $2
	ld a, c
	cp VOLCANION
	jr z, .loop
	ld a, [wCurPartySpecies]
	cp VOLCANION
	jr z, .loop
	ld b, $0

.loop
	ld a, b
	ld [wPlayerLinkAction], a
	push bc
	call Serial_PrintWaitingTextAndSyncAndExchangeNybble
	pop bc
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jr z, .save
	ld a, b
	and a
	jr z, .save
	ld a, [wOtherPlayerLinkAction]
	cp b
	jr nz, .loop

.save
	farcall SaveAfterLinkTrade
	farcall StubbedTrainerRankings_Trades
	farcall BackupMobileEventIndex
	ld c, 40
	call DelayFrames
	hlcoord 0, 12
	ld b, 4
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 1, 14
	ld de, String28ebd
	call PlaceString
	farcall Link_WaitBGMap
	ld c, 50
	call DelayFrames
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jp z, Gen2ToGen1LinkComms
	jp Gen2ToGen2LinkComms
; 28ea3

Function28ea3: ; 28ea3
	ld c, 100
	call DelayFrames
	jp InitTradeMenuDisplay
; 28eab

String28eab: ; 28eab
	db   "TRADE"
	next "CANCEL@"

UnknownText_0x28eb8: ; 0x28eb8
	; Trade @ for @ ?
	text_jump UnknownText_0x1c4212
	db "@"
; 0x28ebd

String28ebd: ; 28ebd
	db   "Trade completed!@"

String_TooBadTheTradeWasCanceled: ; 28ece
	db   "Too bad! The trade"
	next "was canceled!@"


LinkTextboxAtHL: ; 28eef
	ld d, h
	ld e, l
	farcall LinkTextbox
	ret
; 28ef8

LoadTradeScreenBorder: ; 28ef8
	farcall _LoadTradeScreenBorder
	ret
; 28eff

SetTradeRoomBGPals: ; 28eff
	farcall LoadTradeRoomBGPals_ ; just a nested farcall; so wasteful
	call SetPalettes
	ret
; 28f09

Unreferenced_Function28f09: ; 28f09
	hlcoord 0, 0
	ld b, 6
	ld c, 18
	call LinkTextboxAtHL
	hlcoord 0, 8
	ld b, 6
	ld c, 18
	call LinkTextboxAtHL
	farcall PlaceTradePartnerNamesAndParty
	ret
; 28f24

INCLUDE "engine/movie/trade_animation.asm"

CheckTimeCapsuleCompatibility: ; 29bfb
; Checks to see if your party is compatible with the Gen 1 games.
; Returns the following in wScriptVar:
; 0: Party is okay
; 1: At least one Pokémon was introduced in Gen 2
; 2: At least one Pokémon has a move that was introduced in Gen 2
; 3: At least one Pokémon is holding mail

; If any party Pokémon was introduced in the Gen 2 games, don't let it in.
	ld hl, wPartySpecies
	ld b, PARTY_LENGTH
.loop
	ld a, [hli]
	cp -1
	jr z, .checkitem
	cp JOHTO_POKEMON
	jr nc, .mon_too_new
	dec b
	jr nz, .loop

; If any party Pokémon is holding mail, don't let it in.
.checkitem
	ld a, [wPartyCount]
	ld b, a
	ld hl, wPartyMon1Item
.itemloop
	push hl
	push bc
	ld d, [hl]
	farcall ItemIsMail
	pop bc
	pop hl
	jr c, .mon_has_mail
	ld de, PARTYMON_STRUCT_LENGTH
	add hl, de
	dec b
	jr nz, .itemloop

; If any party Pokémon has a move that was introduced in the Gen 2 games, don't let it in.
	ld hl, wPartyMon1Moves
	ld a, [wPartyCount]
	ld b, a
.move_loop
	ld c, NUM_MOVES
.move_next
	ld a, [hli]
	cp STRUGGLE + 1
	jr nc, .move_too_new
	dec c
	jr nz, .move_next
	ld de, wPartyMon2 - (wPartyMon1 + NUM_MOVES)
	add hl, de
	dec b
	jr nz, .move_loop
	xor a
	jr .done

.mon_too_new
	ld [wd265], a
	call GetPokemonName
	ld a, $1
	jr .done

.move_too_new
	push bc
	ld [wd265], a
	call GetMoveName
	call CopyName1
	pop bc
	call Function29c67
	ld a, $2
	jr .done

.mon_has_mail
	call Function29c67
	ld a, $3

.done
	ld [wScriptVar], a
	ret
; 29c67

Function29c67: ; 29c67
	ld a, [wPartyCount]
	sub b
	ld c, a
	inc c
	ld b, 0
	ld hl, wPartyCount
	add hl, bc
	ld a, [hl]
	ld [wd265], a
	call GetPokemonName
	ret
; 29c7b

EnterTimeCapsule: ; 29c7b
	ld c, 10
	call DelayFrames
	ld a, $4
	call Link_EnsureSync
	ld c, 40
	call DelayFrames
	xor a
	ld [hVBlank], a
	inc a
	ld [wLinkMode], a
	ret
; 29c92

WaitForOtherPlayerToExit: ; 29c92
	ld c, 3
	call DelayFrames
	ld a, CONNECTION_NOT_ESTABLISHED
	ld [hSerialConnectionStatus], a
	xor a
	ld [rSB], a
	ld [hSerialReceive], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a
	ld c, 3
	call DelayFrames
	xor a
	ld [rSB], a
	ld [hSerialReceive], a
	ld a, (0 << rSC_ON) | 0
	ld [rSC], a
	ld a, (1 << rSC_ON) | 0
	ld [rSC], a
	ld c, 3
	call DelayFrames
	xor a
	ld [rSB], a
	ld [hSerialReceive], a
	ld [rSC], a
	ld c, 3
	call DelayFrames
	ld a, CONNECTION_NOT_ESTABLISHED
	ld [hSerialConnectionStatus], a
	ld a, [rIF]
	push af
	xor a
	ld [rIF], a
	ld a, $f
	ld [rIE], a
	pop af
	ld [rIF], a
	ld hl, wLinkTimeoutFrames
	xor a
	ld [hli], a
	ld [hl], a
	ld [hVBlank], a
	ld [wLinkMode], a
	ret
; 29ce8

SetBitsForLinkTradeRequest: ; 29ce8
	ld a, LINK_TRADECENTER - 1
	ld [wPlayerLinkAction], a
	ld [wd265], a
	ret
; 29cf1

SetBitsForBattleRequest: ; 29cf1
	ld a, LINK_COLOSSEUM - 1
	ld [wPlayerLinkAction], a
	ld [wd265], a
	ret
; 29cfa

SetBitsForTimeCapsuleRequest: ; 29cfa
	ld a, $2
	ld [rSB], a
	xor a
	ld [hSerialReceive], a
	ld a, (0 << rSC_ON) | 0
	ld [rSC], a
	ld a, (1 << rSC_ON) | 0
	ld [rSC], a
	xor a ; LINK_TIMECAPSULE - 1
	ld [wPlayerLinkAction], a
	ld [wd265], a
	ret
; 29d11

WaitForLinkedFriend: ; 29d11
	ld a, [wPlayerLinkAction]
	and a
	jr z, .no_link_action
	ld a, $2
	ld [rSB], a
	xor a
	ld [hSerialReceive], a
	ld a, (0 << rSC_ON) | 0
	ld [rSC], a
	ld a, (1 << rSC_ON) | 0
	ld [rSC], a
	call DelayFrame
	call DelayFrame
	call DelayFrame

.no_link_action
	ld a, $2
	ld [wLinkTimeoutFrames + 1], a
	ld a, $ff
	ld [wLinkTimeoutFrames], a
.loop
	ld a, [hSerialConnectionStatus]
	cp USING_INTERNAL_CLOCK
	jr z, .connected
	cp USING_EXTERNAL_CLOCK
	jr z, .connected
	ld a, CONNECTION_NOT_ESTABLISHED
	ld [hSerialConnectionStatus], a
	ld a, $2
	ld [rSB], a
	xor a
	ld [hSerialReceive], a
	ld a, (0 << rSC_ON) | 0
	ld [rSC], a
	ld a, (1 << rSC_ON) | 0
	ld [rSC], a
	ld a, [wLinkTimeoutFrames]
	dec a
	ld [wLinkTimeoutFrames], a
	jr nz, .not_done
	ld a, [wLinkTimeoutFrames + 1]
	dec a
	ld [wLinkTimeoutFrames + 1], a
	jr z, .done

.not_done
	ld a, $1
	ld [rSB], a
	ld a, (0 << rSC_ON) | 1
	ld [rSC], a
	ld a, (1 << rSC_ON) | 1
	ld [rSC], a
	call DelayFrame
	jr .loop

.connected
	call LinkDataReceived
	call DelayFrame
	call LinkDataReceived
	ld c, 50
	call DelayFrames
	ld a, $1
	ld [wScriptVar], a
	ret

.done
	xor a
	ld [wScriptVar], a
	ret
; 29d92

CheckLinkTimeout: ; 29d92
	ld a, $1
	ld [wPlayerLinkAction], a
	ld hl, wLinkTimeoutFrames
	ld a, $3
	ld [hli], a
	xor a
	ld [hl], a
	call WaitBGMap
	ld a, $2
	ld [hVBlank], a
	call DelayFrame
	call DelayFrame
	call Link_CheckCommunicationError
	xor a
	ld [hVBlank], a
	ld a, [wScriptVar]
	and a
	ret nz
	jp Link_ResetSerialRegistersAfterLinkClosure
; 29dba

Function29dba: ; 29dba
	ld a, $5
	ld [wPlayerLinkAction], a
	ld hl, wLinkTimeoutFrames
	ld a, $3
	ld [hli], a
	xor a
	ld [hl], a
	call WaitBGMap
	ld a, $2
	ld [hVBlank], a
	call DelayFrame
	call DelayFrame
	call Link_CheckCommunicationError
	ld a, [wScriptVar]
	and a
	jr z, .vblank
	ld bc, -1
.wait
	dec bc
	ld a, b
	or c
	jr nz, .wait
	ld a, [wOtherPlayerLinkMode]
	cp $5
	jr nz, .script_var
	ld a, $6
	ld [wPlayerLinkAction], a
	ld hl, wLinkTimeoutFrames
	ld a, $1
	ld [hli], a
	ld [hl], $32
	call Link_CheckCommunicationError
	ld a, [wOtherPlayerLinkMode]
	cp $6
	jr z, .vblank

.script_var
	xor a
	ld [wScriptVar], a
	ret

.vblank
	xor a
	ld [hVBlank], a
	ret
; 29e0c

Link_CheckCommunicationError: ; 29e0c
	xor a
	ld [hSerialReceivedNewData], a
	ld a, [wLinkTimeoutFrames]
	ld h, a
	ld a, [wLinkTimeoutFrames + 1]
	ld l, a
	push hl
	call .CheckConnected
	pop hl
	jr nz, .load_true
	call .AcknowledgeSerial
	call .ConvertDW
	call .CheckConnected
	jr nz, .load_true
	call .AcknowledgeSerial
	xor a
	jr .load_scriptvar

.load_true
	ld a, $1

.load_scriptvar
	ld [wScriptVar], a
	ld hl, wLinkTimeoutFrames
	xor a
	ld [hli], a
	ld [hl], a
	ret
; 29e3b

.CheckConnected: ; 29e3b
	call WaitLinkTransfer
	ld hl, wLinkTimeoutFrames
	ld a, [hli]
	inc a
	ret nz
	ld a, [hl]
	inc a
	ret
; 29e47

.AcknowledgeSerial: ; 29e47
	ld b, 10
.loop
	call DelayFrame
	call LinkDataReceived
	dec b
	jr nz, .loop
	ret
; 29e53

.ConvertDW: ; 29e53
	; [wLinkTimeoutFrames] = ((hl - $100) / 4) + $100
	;                      = (hl / 4) + $c0
	dec h
	srl h
	rr l
	srl h
	rr l
	inc h
	ld a, h
	ld [wLinkTimeoutFrames], a
	ld a, l
	ld [wLinkTimeoutFrames + 1], a
	ret
; 29e66

TryQuickSave: ; 29e66
	ld a, [wd265]
	push af
	farcall Link_SaveGame
	ld a, TRUE
	jr nc, .return_result
	xor a ; FALSE
.return_result
	ld [wScriptVar], a
	ld c, 30
	call DelayFrames
	pop af
	ld [wd265], a
	ret
; 29e82

CheckBothSelectedSameRoom: ; 29e82
	ld a, [wd265]
	call Link_EnsureSync
	push af
	call LinkDataReceived
	call DelayFrame
	call LinkDataReceived
	pop af
	ld b, a
	ld a, [wd265]
	cp b
	jr nz, .fail
	ld a, [wd265]
	inc a
	ld [wLinkMode], a
	xor a
	ld [hVBlank], a
	ld a, TRUE
	ld [wScriptVar], a
	ret

.fail
	xor a ; FALSE
	ld [wScriptVar], a
	ret
; 29eaf

TimeCapsule: ; 29eaf
	ld a, LINK_TIMECAPSULE
	ld [wLinkMode], a
	call DisableSpriteUpdates
	callfar LinkCommunications
	call EnableSpriteUpdates
	xor a
	ld [hVBlank], a
	ret
; 29ec4

TradeCenter: ; 29ec4
	ld a, LINK_TRADECENTER
	ld [wLinkMode], a
	call DisableSpriteUpdates
	callfar LinkCommunications
	call EnableSpriteUpdates
	xor a
	ld [hVBlank], a
	ret
; 29ed9

Colosseum: ; 29ed9
	ld a, LINK_COLOSSEUM
	ld [wLinkMode], a
	call DisableSpriteUpdates
	callfar LinkCommunications
	call EnableSpriteUpdates
	xor a
	ld [hVBlank], a
	ret
; 29eee

CloseLink: ; 29eee
	xor a
	ld [wLinkMode], a
	ld c, 3
	call DelayFrames
	jp Link_ResetSerialRegistersAfterLinkClosure
; 29efa

FailedLinkToPast: ; 29efa
	ld c, 40
	call DelayFrames
	ld a, $e
	jp Link_EnsureSync
; 29f04

Link_ResetSerialRegistersAfterLinkClosure: ; 29f04
	ld c, 3
	call DelayFrames
	ld a, CONNECTION_NOT_ESTABLISHED
	ld [hSerialConnectionStatus], a
	ld a, $2
	ld [rSB], a
	xor a
	ld [hSerialReceive], a
	ld [rSC], a
	ret
; 29f17

Link_EnsureSync: ; 29f17
	add $d0
	ld [wPlayerLinkAction], a
	ld [wcf57], a
	ld a, $2
	ld [hVBlank], a
	call DelayFrame
	call DelayFrame
.receive_loop
	call Serial_ExchangeLinkMenuSelection
	ld a, [wOtherPlayerLinkMode]
	ld b, a
	and $f0
	cp $d0
	jr z, .done
	ld a, [wOtherPlayerLinkAction]
	ld b, a
	and $f0
	cp $d0
	jr nz, .receive_loop

.done
	xor a
	ld [hVBlank], a
	ld a, b
	and $f
	ret
; 29f47

CableClubCheckWhichChris: ; 29f47
	ld a, [hSerialConnectionStatus]
	cp USING_EXTERNAL_CLOCK
	ld a, TRUE
	jr z, .yes
	dec a ; FALSE

.yes
	ld [wScriptVar], a
	ret
; 29f54

Unreferenced_Gen1LinkCommsBorderGFX: ; 29f54
INCBIN "gfx/trade/unused_gen_1_border_tiles.2bpp"
; 29fe4

Unreferenced_Function29fe4:
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	ld d, FALSE
	ld b, CHECK_FLAG
	predef SmallFarFlagAction
	call CloseSRAM
	ld a, c
	and a
	ret
