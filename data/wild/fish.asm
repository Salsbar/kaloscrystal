time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups: ; 92488
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old: ; 924e3
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     BINACLE,     10
.Shore_Good: ; 924ec
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     DWEBBLE,     20
	db  90 percent + 1, DWEBBLE,     20
	db 100 percent,     time_group 0
.Shore_Super: ; 924f8
	db  40 percent,     DWEBBLE,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, BINACLE,     40
	db 100 percent,     CRUSTLE,    40

.Ocean_Old: ; 92504
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     FRILLISH,  10
.Ocean_Good: ; 9250d
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     FRILLISH,  20
	db  90 percent + 1, INKAY,   20
	db 100 percent,     time_group 2
.Ocean_Super: ; 92519
	db  40 percent,     FRILLISH,   40
	db  70 percent,     time_group 3
	db  90 percent + 1, INKAY, 40
	db 100 percent,     JELLICENT,    40

.Lake_Old: ; 92525
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     BASCULIN,    10
.Lake_Good: ; 9252e
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     BASCULIN,    20
	db  90 percent + 1, BASCULIN,    20
	db 100 percent,     time_group 4
.Lake_Super: ; 9253a
	db  40 percent,     BASCULIN,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, PALPITOAD,   40
	db 100 percent,     ALOMOMOLA,    40

.Pond_Old: ; 92546
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     BASCULIN,    10
.Pond_Good: ; 9254f
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     BASCULIN,    20
	db  90 percent + 1, BASCULIN,    20
	db 100 percent,     time_group 6
.Pond_Super: ; 9255b
	db  40 percent,     BASCULIN,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, CLAUNCHER,   40
	db 100 percent,     PALPITOAD,    40

.Dratini_Old: ; 92567
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     SKRELP,   10
.Dratini_Good: ; 92570
	db  35 percent,     TYNAMO,   20
	db  70 percent,     SKRELP,   20
	db  90 percent + 1, SKRELP,   20
	db 100 percent,     time_group 8
.Dratini_Super: ; 9257c
	db  40 percent,     TYNAMO,   40
	db  70 percent,     time_group 9
	db  90 percent + 1, SKRELP,   40
	db 100 percent,     SLIGGOO,  40

.Qwilfish_Swarm_Old: ; 92588
	db  70 percent + 1, PATRAT,   5
	db  85 percent + 1, PATRAT,   5
	db 100 percent,     PATRAT,   5
.Qwilfish_Swarm_Good: ; 92591
	db  35 percent,     PATRAT,   20
	db  70 percent,     PATRAT,   20
	db  90 percent + 1, PATRAT,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super: ; 9259d
	db  40 percent,     PATRAT,   40
	db  70 percent,     time_group 11
	db  90 percent + 1, PATRAT,   40
	db 100 percent,     PATRAT,   40

.Remoraid_Swarm_Old: ; 925a9
	db  70 percent + 1, PATRAT,   10
	db  85 percent + 1, PATRAT,   10
	db 100 percent,     PATRAT,   10
.Remoraid_Swarm_Good: ; 925b2
	db  35 percent,     PATRAT,   20
	db  70 percent,     PATRAT,   20
	db  90 percent + 1, PATRAT,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super: ; 925be
	db  40 percent,     PATRAT,   40
	db  70 percent,     time_group 13
	db  90 percent + 1, PATRAT,   40
	db 100 percent,     PATRAT,   40

.Gyarados_Old: ; 925ca
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     TYNAMO,   10
.Gyarados_Good: ; 925d3
	db  35 percent,     TYNAMO,   20
	db  70 percent,     TYNAMO,   20
	db  90 percent + 1, TYNAMO,   20
	db 100 percent,     time_group 14
.Gyarados_Super: ; 925df
	db  40 percent,     TYNAMO,   40
	db  70 percent,     time_group 15
	db  90 percent + 1, TYNAMO,   40
	db 100 percent,     EELEKTRIK,   40

.Dratini_2_Old: ; 92567
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     SKRELP,   10
.Dratini_2_Good: ; 92570
	db  35 percent,     TYNAMO,   10
	db  70 percent,     SKRELP,   10
	db  90 percent + 1, SKRELP,   10
	db 100 percent,     time_group 16
.Dratini_2_Super: ; 9257c
	db  40 percent,     TYNAMO,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, SKRELP,   10
	db 100 percent,     SLIGGOO,  10
	
.WhirlIslands_Old: ; 9260c
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     BINACLE,     10
.WhirlIslands_Good: ; 92615
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     BINACLE,     20
	db  90 percent + 1, BINACLE,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super: ; 92621
	db  40 percent,     BINACLE,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, BARBARACLE,    40
	db 100 percent,     DRAGALGE,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old: ; 9262d
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     FRILLISH,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good: ; 92636
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     FRILLISH,  20
	db  90 percent + 1, FRILLISH,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super: ; 92642
	db  40 percent,     FRILLISH,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, STUNFISK,   40
	db 100 percent,     STUNFISK,   40

.Remoraid_Old: ; 9264e
	db  70 percent + 1, PATRAT,   10
	db  85 percent + 1, PATRAT,   10
	db 100 percent,     PATRAT,    10
.Remoraid_Good: ; 92657
	db  35 percent,     PATRAT,   20
	db  70 percent,     PATRAT,    20
	db  90 percent + 1, PATRAT,    20
	db 100 percent,     time_group 6
.Remoraid_Super: ; 92663
	db  40 percent,     PATRAT,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, PATRAT,   40
	db 100 percent,     PATRAT,   40
; 9266f


TimeFishGroups: ; 9266f
	;  day              nite
	db BINACLE,    20,  BINACLE,     20 ; 0
	db BINACLE,    40,  BINACLE,     40 ; 1
	db BINACLE,   20,  BINACLE,   20 ; 2
	db BINACLE,   40,  BINACLE,   40 ; 3
	db ALOMOMOLA,    20,  ALOMOMOLA,    20 ; 4
	db ALOMOMOLA,    40,  ALOMOMOLA,    40 ; 5
	db CLAUNCHER,    20,  CLAUNCHER,    20 ; 6
	db CLAUNCHER,    40,  CLAUNCHER,    40 ; 7
	db GOOMY,    20,  GOOMY,    20 ; 8
	db GOOMY,    40,  GOOMY,    40 ; 9
	db PATRAT,   20,  PATRAT,   20 ; 10
	db PATRAT,   40,  PATRAT,   40 ; 11
	db PATRAT,   20,  PATRAT,   20 ; 12
	db PATRAT,   40,  PATRAT,   40 ; 13
	db EELEKTRIK,   20,  EELEKTRIK,   20 ; 14
	db EELEKTRIK,   40,  EELEKTRIK,   40 ; 15
	db GOOMY,    10,  GOOMY,    10 ; 16
	db GOOMY,    10,  GOOMY,    10 ; 17
	db SKRELP,     20,  SKRELP,     20 ; 18
	db SKRELP,     40,  SKRELP,     40 ; 19
	db CLAUNCHER,  20,  CLAUNCHER,  20 ; 20
	db CLAUNCHER,  40,  CLAUNCHER,  40 ; 21
; 926c7
