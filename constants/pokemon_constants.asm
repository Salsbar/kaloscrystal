; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const SNIVY      ; 01
	const SERVINE    ; 02
	const SERPERIOR  ; 03
	const TEPIG      ; 04
	const PIGNITE    ; 05
	const EMBOAR     ; 06
	const OSHAWOTT   ; 07
	const DEWOTT     ; 08
	const SAMUROTT   ; 09
	const PATRAT     ; 0a
	const WATCHOG    ; 0b
	const LILLIPUP   ; 0c
	const HERDIER    ; 0d
	const STOUTLAND  ; 0e
	const PURRLOIN   ; 0f
	const LIEPARD    ; 10
	const PANSAGE    ; 11
	const SIMISAGE   ; 12
	const PANSEAR    ; 13
	const SIMISEAR   ; 14
	const PANPOUR    ; 15
	const SIMIPOUR   ; 16
	const MUNNA      ; 17
	const MUSHARNA   ; 18
	const PIDOVE     ; 19
	const TRANQUILL  ; 1a
	const UNFEZANT   ; 1b
	const BLITZLE    ; 1c
	const ZEBSTRIKA  ; 1d
	const ROGGENROLA ; 1e
	const BOLDORE    ; 1f
	const GIGALITH   ; 20
	const WOOBAT     ; 21
	const SWOOBAT    ; 22
	const DRILBUR    ; 23
	const EXCADRILL  ; 24
	const AUDINO     ; 25
	const TIMBURR    ; 26
	const GURDURR    ; 27
	const CONKELDURR ; 28
	const TYMPOLE    ; 29
	const PALPITOAD  ; 2a
	const SEISMITOAD ; 2b
	const THROH      ; 2c
	const SAWK       ; 2d
	const SEWADDLE   ; 2e
	const SWADLOON   ; 2f
	const LEAVANNY   ; 30
	const VENIPEDE   ; 31
	const WHIRLIPEDE ; 32
	const SCOLIPEDE  ; 33
	const COTTONEE   ; 34
	const WHIMSICOTT ; 35
	const PETILIL    ; 36
	const LILLIGANT  ; 37
	const BASCULIN   ; 38
	const SANDILE    ; 39
	const KROKOROK   ; 3a
	const KROOKODILE ; 3b
	const DARUMAKA   ; 3c
	const DARMANITAN ; 3d
	const MARACTUS   ; 3e
	const DWEBBLE    ; 3f
	const CRUSTLE    ; 40
	const SCRAGGY    ; 41
	const SCRAFTY    ; 42
	const SIGILYPH   ; 43
	const YAMASK     ; 44
	const COFAGRIGUS ; 45
	const TIRTOUGA   ; 46
	const CARRACOSTA ; 47
	const ARCHEN     ; 48
	const ARCHEOPS   ; 49
	const TRUBBISH   ; 4a
	const GARBODOR   ; 4b
	const ZORUA      ; 4c
	const ZOROARK    ; 4d
	const MINCCINO   ; 4e
	const CINCCINO   ; 4f
	const GOTHITA    ; 50
	const GOTHORITA  ; 51
	const GOTHITELLE ; 52
	const SOLOSIS    ; 53
	const DUOSION    ; 54
	const REUNICLUS  ; 55
	const DUCKLETT   ; 56
	const SWANNA     ; 57
	const VANILLITE  ; 58
	const VANILLISH  ; 59
	const VANILLUXE  ; 5a
	const DEERLING   ; 5b
	const SAWSBUCK   ; 5c
	const EMOLGA     ; 5d
	const KARRABLAST ; 5e
	const ESCAVALIER ; 5f
	const FOONGUS    ; 60
	const AMOONGUSS  ; 61
	const FRILLISH   ; 62
	const JELLICENT  ; 63
	const ALOMOMOLA  ; 64
	const JOLTIK     ; 65
	const GALVANTULA ; 66
	const FERROSEED  ; 67
	const FERROTHORN ; 68
	const KLINK      ; 69
	const KLANG      ; 6a
	const KLINKLANG  ; 6b
	const TYNAMO     ; 6c
	const EELEKTRIK  ; 6d
	const EELEKTROSS ; 6e
	const ELGYEM     ; 6f
	const BEHEEYEM   ; 70
	const LITWICK    ; 71
	const LAMPENT    ; 72
	const CHANDELURE ; 73
	const AXEW       ; 74
	const FRAXURE    ; 75
	const HAXORUS    ; 76
	const CUBCHOO    ; 77
	const BEARTIC    ; 78
	const CRYOGONAL  ; 79
	const SHELMET    ; 7a
	const ACCELGOR   ; 7b
	const STUNFISK   ; 7c
	const MIENFOO    ; 7d
	const MIENSHAO   ; 7e
	const DRUDDIGON  ; 7f
	const GOLETT     ; 80
	const GOLURK     ; 81
	const PAWNIARD   ; 82
	const BISHARP    ; 83
	const BOUFFALANT ; 84
	const RUFFLET    ; 85
	const BRAVIARY   ; 86
	const VULLABY    ; 87
	const MANDIBUZZ  ; 88
	const HEATMOR    ; 89
	const DURANT     ; 8a
	const DEINO      ; 8b
	const ZWEILOUS   ; 8c
	const HYDREIGON  ; 8d
	const LARVESTA   ; 8e
	const VOLCARONA  ; 8f
	const COBALION   ; 90
	const TERRAKION  ; 91
	const VIRIZION   ; 92
	const TORNADUS   ; 93
	const THUNDURUS  ; 94
	const RESHIRAM   ; 95
	const ZEKROM     ; 96
	const LANDORUS   ; 97
	const KYUREM     ; 98
	const KELDEO     ; 99
	const MELOETTA   ; 9a
	const GENESECT   ; 9b
	const VICTINI    ; 9c
JOHTO_POKEMON EQU const_value
	const CHESPIN    ; 9d
	const QUILLADIN  ; 9e
	const CHESNAUGHT ; 9f
	const FENNEKIN   ; a0
	const BRAIXEN    ; a1
	const DELPHOX    ; a2
	const FROAKIE    ; a3
	const FROGADIER  ; a4
	const GRENINJA   ; a5
	const BUNNELBY   ; a6
	const DIGGERSBY  ; a7
	const FLETCHLING ; a8
	const FLETCHINDR ; a9
	const TALONFLAME ; aa
	const SCATTERBUG ; ab
	const SPEWPA     ; ac
	const VIVILLON   ; ad
	const LITLEO     ; ae
	const PYROAR     ; af
	const FLABEBE    ; b0
	const FLOETTE    ; b1
	const FLORGES    ; b2
	const SKIDDO     ; b3
	const GOGOAT     ; b4
	const PANCHAM    ; b5
	const PANGORO    ; b6
	const FURFROU    ; b7
	const ESPURR     ; b8
	const MEOWSTIC   ; b9
	const HONEDGE    ; ba
	const DOUBLADE   ; bb
	const AEGISLASH  ; bc
	const SPRITZEE   ; bd
	const AROMATISSE ; be
	const SWIRLIX    ; bf
	const SLURPUFF   ; c0
	const INKAY      ; c1
	const MALAMAR    ; c2
	const BINACLE    ; c3
	const BARBARACLE ; c4
	const SKRELP     ; c5
	const DRAGALGE   ; c6
	const CLAUNCHER  ; c7
	const CLAWITZER  ; c8
	const HELIOPTILE ; c9
	const HELIOLISK  ; ca
	const TYRUNT     ; cb
	const TYRANTRUM  ; cc
	const AMAURA     ; cd
	const AURORUS    ; ce
	const SYLVEON    ; cf
	const HAWLUCHA   ; d0
	const DEDENNE    ; d1
	const CARBINK    ; d2
	const GOOMY      ; d3
	const SLIGGOO    ; d4
	const GOODRA     ; d5
	const KLEFKI     ; d6
	const PHANTUMP   ; d7
	const TREVENANT  ; d8
	const PUMPKABOO  ; d9
	const GOURGEIST  ; da
	const BERGMITE   ; db
	const AVALUGG    ; dc
	const NOIBAT     ; dd
	const NOIVERN    ; de
	const XERNEAS    ; df
	const YVELTAL    ; e0
	const ZYGARDE    ; e1
	const DIANCIE    ; e2
	const HOOPA      ; e3
	const HOOPA_U    ; e4
	const VOLCANION  ; e5
NUM_POKEMON EQU const_value + -1
	const MON_E6     ; fe
	const MON_E7     ; fe
	const MON_E8     ; fe
	const MON_E9     ; fe
	const MON_EA     ; fe
	const MON_EB     ; fe
	const MON_EC     ; fe
	const MON_ED     ; fe
	const MON_EE     ; fe
	const MON_EF     ; fe
	const MON_F0     ; fe
	const MON_F1     ; fe
	const MON_F2     ; fe
	const MON_F3     ; fe
	const MON_F4     ; fe
	const MON_F5     ; fe
	const MON_F6     ; fe
	const MON_F7     ; fe
	const MON_F8     ; fe
	const MON_F9     ; fe
	const MON_FA     ; fe
	const MON_FB     ; fe
	const MON_FC     ; fe
	const EGG        ; fd
	const MON_FE     ; fe

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value + -1 ; 26
