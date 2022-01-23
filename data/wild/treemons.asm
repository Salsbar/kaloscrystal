TreeMons: ; b82e8
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon: ; b82fa
; common
	db 50, FLETCHLING, 10
	db 15, FLETCHLING, 10
	db 15, FLETCHLING, 10
	db 10, EMOLGA,     10
	db  5, EMOLGA,     10
	db  5, EMOLGA,     10
	db -1
; rare
	db 50, FLETCHLING, 10
	db 15, NOIBAT,     10
	db 15, NOIBAT,     10
	db 10, EMOLGA,      10
	db  5, EMOLGA,      10
	db  5, EMOLGA,      10
	db -1

TreeMonSet_Town: ; b8320
; common
	db 50, FLETCHLING,    10
	db 15, JOLTIK,      10
	db 15, FLETCHLING,    10
	db 10, ESPURR,      10
	db  5, ESPURR,      10
	db  5, ESPURR,      10
	db -1
; rare
	db 50, FLETCHLING,    10
	db 15, NOIBAT,  10
	db 15, NOIBAT,  10
	db 10, ESPURR,      10
	db  5, ESPURR,      10
	db  5, ESPURR,      10
	db -1

TreeMonSet_Route: ; b8346
; common
	db 50, PURRLOIN,   10
	db 15, COTTONEE,   10
	db 15, PETILIL,     10
	db 10, FERROSEED,  10
	db  5, DEDENNE,  10
	db  5, DEDENNE,  10
	db -1
; rare
	db 50, PURRLOIN,   10
	db 15, PHANTUMP,     10
	db 15, PUMPKABOO,     10
	db 10, FERROSEED,  10
	db  5, DEDENNE,  10
	db  5, DEDENNE,  10
	db -1

TreeMonSet_Kanto: ; b836c
; common
	db 50, PURRLOIN,   10
	db 15, JOLTIK,      10
	db 15, PURRLOIN,   10
	db 10, DEDENNE,  10
	db  5, DEDENNE,  10
	db  5, DEDENNE,  10
	db -1
; rare
	db 50, PURRLOIN,   10
	db 15, SIGILYPH,     10
	db 15, SIGILYPH,     10
	db 10, DEDENNE,  10
	db  5, DEDENNE,  10
	db  5, DEDENNE,  10
	db -1

TreeMonSet_Lake: ; b8392
; common
	db 50, PURRLOIN,   10
	db 15, JOLTIK,    10
	db 15, PURRLOIN,   10
	db 10, EMOLGA,  10
	db  5, EMOLGA,  10
	db  5, EMOLGA,  10
	db -1
; rare
	db 50, PURRLOIN,   10
	db 15, NOIBAT,     10
	db 15, NOIBAT,     10
	db 10, EMOLGA,  10
	db  5, EMOLGA,  10
	db  5, EMOLGA,  10
	db -1

TreeMonSet_Forest: ; b83b8
; common
	db 50, SCATTERBUG,   10
	db 15, SEWADDLE,     10
	db 15, VENIPEDE,     10
	db 10, SPEWPA,    10
	db  5, SWADLOON, 10
	db  5, WHIRLIPEDE,   10
	db -1
; rare
	db 50, JOLTIK,   10
	db 15, KARRABLAST,   10
	db 15, SHELMET,     10
	db 10, LARVESTA,   10
	db  5, PHANTUMP,    10
	db  5, PUMPKABOO,     10
	db -1

TreeMonSet_Rock: ; b83de
	db 90, DWEBBLE,     15
	db 10, CARBINK,    15
	db -1
; b83e5
