BugContestantPointers: ; 13783
; there are NUM_BUG_CONTESTANTS + 1 entries
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
; 13799

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw WHIRLIPEDE,     300
	dbw SWADLOON,    285
	dbw SEWADDLE,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw VIVILLON, 286
	dbw VIVILLON, 251
	dbw SPEWPA,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw DURANT,    357
	dbw VIVILLON, 349
	dbw JOLTIK,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw DURANT,     332
	dbw KARRABLAST, 324
	dbw SHELMET,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw VIVILLON, 318
	dbw VENIPEDE,     295
	dbw SEWADDLE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw DURANT,     366
	dbw JOLTIK,    329
	dbw WHIRLIPEDE,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw VIVILLON, 341
	dbw SWADLOON,    301
	dbw SPEWPA,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw DURANT,    326
	dbw VIVILLON, 292
	dbw SPEWPA,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw VENIPEDE,     270
	dbw JOLTIK,     282
	dbw SEWADDLE,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw KARRABLAST,    267
	dbw SHELMET,      254
	dbw WHIRLIPEDE,     259
; 13807
