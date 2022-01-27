INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX


INCLUDE "data/pokemon/evos_attacks_pointers.asm"


EvosAttacks::
; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves


SnivyEvosAttacks:
	db EVOLVE_LEVEL, 17, SERVINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, LEECH_SEED
	db 19, MEGA_DRAIN
	db 22, SLAM
	db 28, GIGA_DRAIN
	db 34, GLARE
	db 40, DRAGONBREATH
	db 0 ; no more level-up moves

ServineEvosAttacks:
	db EVOLVE_LEVEL, 36, SERPERIOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, LEECH_SEED
	db 20, MEGA_DRAIN
	db 28, SLAM
	db 36, GIGA_DRAIN
	db 38, GLARE
	db 46, DRAGONBREATH
	db 0 ; no more level-up moves

SerperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, LEECH_SEED
	db 20, MEGA_DRAIN
	db 28, SLAM
	db 36, GIGA_DRAIN
	db 42, GLARE
	db 50, DRAGONBREATH
	db 0 ; no more level-up moves

TepigEvosAttacks:
	db EVOLVE_LEVEL, 17, PIGNITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL
	db 19, SMOG
	db 21, ROLLOUT
	db 25, TAKE_DOWN
	db 30, FLAMETHROWER
	db 35, ROAR
	db 40, FLARE_BLITZ
	db 0 ; no more level-up moves

PigniteEvosAttacks:
	db EVOLVE_LEVEL, 36, EMBOAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL
	db 17, MACH_PUNCH
	db 20, SMOG
	db 23, ROLLOUT
	db 25, LOW_KICK
	db 28, TAKE_DOWN
	db 34, FLAMETHROWER
	db 40, ROAR
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

EmboarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL
	db 17, MACH_PUNCH
	db 20, SMOG
	db 23, ROLLOUT
	db 25, LOW_KICK
	db 28, TAKE_DOWN
	db 34, FLAMETHROWER
	db 45, ROAR
	db 50, FLARE_BLITZ
	db 0 ; no more level-up moves

OshawottEvosAttacks:
	db EVOLVE_LEVEL, 17, DEWOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 10, FOCUS_ENERGY
	db 13, FURY_CUTTER
	db 18, WATER_PULSE
	db 23, SLASH
	db 27, SWORDS_DANCE
	db 29, AQUA_JET
	db 33, HYDRO_PUMP
	db 0 ; no more level-up moves

DewottEvosAttacks:
	db EVOLVE_LEVEL, 36, SAMUROTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 10, FOCUS_ENERGY
	db 13, FURY_CUTTER
	db 20, WATER_PULSE
	db 26, SLASH
	db 30, SWORDS_DANCE
	db 34, AQUA_JET
	db 38, HYDRO_PUMP
	db 0 ; no more level-up moves

SamurottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 10, FOCUS_ENERGY
	db 13, FURY_CUTTER
	db 20, WATER_PULSE
	db 26, SLASH
	db 30, SWORDS_DANCE
	db 34, AQUA_JET
	db 36, MEGAHORN
	db 42, HYDRO_PUMP
	db 50, HORN_DRILL
	db 0 ; no more level-up moves

PatratEvosAttacks:
	db EVOLVE_LEVEL, 20, WATCHOG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, BITE
	db 8, BIDE
	db 11, DETECT
	db 13, SAND_ATTACK
	db 18, HYPNOSIS
	db 21, SUPER_FANG
	db 28, HYPER_FANG
	db 30, SLAM
	db 33, SWORDS_DANCE
	db 36, MEAN_LOOK
	db 38, BATON_PASS
	db 0 ; no more level-up moves

WatchogEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, BITE
	db 8, BIDE
	db 11, DETECT
	db 13, SAND_ATTACK
	db 18, HYPNOSIS
	db 20, CONFUSE_RAY
	db 22, SUPER_FANG
	db 27, PSYCH_UP
	db 32, HYPER_FANG
	db 36, SLAM
	db 39, SWORDS_DANCE
	db 43, MEAN_LOOK
	db 46, BATON_PASS
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	db EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, BITE
	db 15, TAKE_DOWN
	db 22, CRUNCH
	db 26, ROAR
	db 29, SKULL_BASH
	db 33, REVERSAL
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	db EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, BITE
	db 15, TAKE_DOWN
	db 24, CRUNCH
	db 29, ROAR
	db 33, SKULL_BASH
	db 38, REVERSAL
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, BITE
	db 15, TAKE_DOWN
	db 24, CRUNCH
	db 29, ROAR
	db 36, SKULL_BASH
	db 42, REVERSAL
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, GROWL
	db 7, PURSUIT
	db 10, SAND_ATTACK
	db 12, FURY_SWIPES
	db 21, FAINT_ATTACK
	db 30, SLASH
	db 37, NIGHT_SLASH
	db 42, SWORDS_DANCE
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, GROWL
	db 7, PURSUIT
	db 10, SAND_ATTACK
	db 12, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 34, SLASH
	db 43, NIGHT_SLASH
	db 50, SWORDS_DANCE
	db 0 ; no more level-up moves

PansageEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, SIMISAGE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, VINE_WHIP
	db 13, FURY_SWIPES
	db 19, BITE
	db 25, LEECH_SEED
	db 30, NASTY_PLOT
	db 34, SOLARBEAM
	db 43, CRUNCH
	db 0 ; no more level-up moves

SimisageEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, VINE_WHIP
	db 0 ; no more level-up moves

PansearEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, SIMISEAR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, EMBER
	db 13, FURY_SWIPES
	db 19, BITE
	db 25, AMNESIA
	db 30, NASTY_PLOT
	db 34, FIRE_BLAST
	db 43, CRUNCH
	db 0 ; no more level-up moves

SimisearEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, EMBER
	db 0 ; no more level-up moves

PanpourEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, SIMIPOUR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, WATER_GUN
	db 13, FURY_SWIPES
	db 19, BITE
	db 25, LIGHT_SCREEN
	db 30, NASTY_PLOT
	db 34, HYDRO_PUMP
	db 43, CRUNCH
	db 0 ; no more level-up moves

SimipourEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, LICK
	db 10, WATER_GUN
	db 0 ; no more level-up moves

MunnaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MUSHARNA
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, DEFENSE_CURL
	db 11, PSYBEAM
	db 15, MOONLIGHT
	db 19, HYPNOSIS
	db 23, AMNESIA
	db 26, NIGHTMARE
	db 29, FUTURE_SIGHT
	db 32, PSYCHIC_M
	db 39, DREAM_EATER
	db 0 ; no more level-up moves

MusharnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, DEFENSE_CURL
	db 11, PSYBEAM
	db 15, MOONLIGHT
	db 0 ; no more level-up moves

PidoveEvosAttacks:
	db EVOLVE_LEVEL, 18, TRANQUILL
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 20, WING_ATTACK
	db 23, DETECT
	db 29, AIR_SLASH
	db 31, RAZOR_WIND
	db 36, SKY_ATTACK
	db 39, SWAGGER
	db 0 ; no more level-up moves

TranquillEvosAttacks:
	db EVOLVE_LEVEL, 32, UNFEZANT
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 23, WING_ATTACK
	db 28, DETECT
	db 32, AIR_SLASH
	db 34, RAZOR_WIND
	db 40, SKY_ATTACK
	db 45, SWAGGER
	db 0 ; no more level-up moves

UnfezantEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 23, WING_ATTACK
	db 28, DETECT
	db 33, AIR_SLASH
	db 38, RAZOR_WIND
	db 46, SKY_ATTACK
	db 49, SWAGGER
	db 0 ; no more level-up moves

BlitzleEvosAttacks:
	db EVOLVE_LEVEL, 27, ZEBSTRIKA
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, TAIL_WHIP
	db 8, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 18, FLAME_WHEEL
	db 22, PURSUIT
	db 25, SPARK
	db 27, STOMP
	db 29, AGILITY
	db 33, THUNDERBOLT
	db 39, THUNDER
	db 43, THRASH
	db 0 ; no more level-up moves

ZebstrikaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, TAIL_WHIP
	db 8, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 18, FLAME_WHEEL
	db 22, PURSUIT
	db 25, SPARK
	db 27, STOMP
	db 31, AGILITY
	db 38, THUNDERBOLT
	db 46, THUNDER
	db 53, THRASH
	db 0 ; no more level-up moves

RoggenrolaEvosAttacks:
	db EVOLVE_LEVEL, 25, BOLDORE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW
	db 17, MUD_SLAP
	db 23, MAGNITUDE
	db 27, SELFDESTRUCT
	db 32, ROCK_SLIDE
	db 36, SANDSTORM
	db 39, STONE_EDGE
	db 42, EXPLOSION
	db 0 ; no more level-up moves

BoldoreEvosAttacks:
	db EVOLVE_LEVEL, 40, GIGALITH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW
	db 17, MUD_SLAP
	db 23, MAGNITUDE
	db 30, SELFDESTRUCT
	db 36, ROCK_SLIDE
	db 40, SANDSTORM
	db 45, STONE_EDGE
	db 50, EXPLOSION
	db 0 ; no more level-up moves

GigalithEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW
	db 17, MUD_SLAP
	db 23, MAGNITUDE
	db 30, SELFDESTRUCT
	db 36, ROCK_SLIDE
	db 40, SANDSTORM
	db 48, STONE_EDGE
	db 53, EXPLOSION
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_LEVEL, 25, SWOOBAT
	db 0 ; no more evolutions
	db 1, GUST
	db 8, CONFUSION
	db 15, SUPERSONIC
	db 21, WING_ATTACK
	db 25, ATTRACT
	db 27, AMNESIA
	db 30, AIR_SLASH
	db 33, FUTURE_SIGHT
	db 35, HYPNOSIS
	db 38, PSYCHIC_M
	db 43, NASTY_PLOT
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 8, CONFUSION
	db 15, SUPERSONIC
	db 21, WING_ATTACK
	db 25, ATTRACT
	db 29, AMNESIA
	db 32, AIR_SLASH
	db 36, FUTURE_SIGHT
	db 38, HYPNOSIS
	db 41, PSYCHIC_M
	db 48, NASTY_PLOT
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, RAPID_SPIN
	db 8, MUD_SLAP
	db 12, FURY_SWIPES
	db 15, METAL_CLAW
	db 18, DIG
	db 23, SLASH
	db 29, MAGNITUDE
	db 33, EARTHQUAKE
	db 39, SWORDS_DANCE
	db 40, SANDSTORM
	db 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, RAPID_SPIN
	db 8, MUD_SLAP
	db 12, FURY_SWIPES
	db 15, METAL_CLAW
	db 18, DIG
	db 23, SLASH
	db 29, MAGNITUDE
	db 37, EARTHQUAKE
	db 45, SWORDS_DANCE
	db 49, SANDSTORM
	db 55, FISSURE
	db 0 ; no more level-up moves

AudinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 5, SING
	db 10, BATON_PASS
	db 15, DOUBLESLAP
	db 18, DISABLE
	db 22, ATTRACT
	db 25, TAKE_DOWN
	db 28, SAFEGUARD
	db 32, RECOVER
	db 35, DIZZY_PUNCH
	db 38, DAZZLINGLEAM
	db 42, HEAL_BELL
	db 45, PSYCH_UP
	db 48, PERISH_SONG
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

TimburrEvosAttacks:
	db EVOLVE_LEVEL, 25, GURDURR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 8, BIDE
	db 12, LOW_KICK
	db 17, ROCK_THROW
	db 21, MACH_PUNCH
	db 26, VITAL_THROW
	db 29, SUBMISSION
	db 34, MEGA_KICK
	db 37, CROSS_CHOP
	db 40, SCARY_FACE
	db 43, ROCK_SLIDE
	db 0 ; no more level-up moves

GurdurrEvosAttacks:
	db EVOLVE_LEVEL, 40, CONKELDURR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 8, BIDE
	db 12, LOW_KICK
	db 17, ROCK_THROW
	db 21, MACH_PUNCH
	db 27, VITAL_THROW
	db 33, SUBMISSION
	db 37, MEGA_KICK
	db 40, CROSS_CHOP
	db 42, SCARY_FACE
	db 47, ROCK_SLIDE
	db 0 ; no more level-up moves

ConkeldurrEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 8, BIDE
	db 12, LOW_KICK
	db 17, ROCK_THROW
	db 21, MACH_PUNCH
	db 27, VITAL_THROW
	db 33, SUBMISSION
	db 37, MEGA_KICK
	db 40, CROSS_CHOP
	db 45, SCARY_FACE
	db 50, ROCK_SLIDE
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 25, PALPITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 12, BUBBLEBEAM
	db 17, ACID
	db 20, MUD_SHOT
	db 24, DISABLE
	db 26, RAIN_DANCE
	db 29, MAGNITUDE
	db 34, FLAIL
	db 38, EARTHQUAKE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db EVOLVE_LEVEL, 36, SEISMITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 12, BUBBLEBEAM
	db 17, ACID
	db 20, MUD_SHOT
	db 24, DISABLE
	db 28, RAIN_DANCE
	db 31, MAGNITUDE
	db 37, FLAIL
	db 41, EARTHQUAKE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 12, BUBBLEBEAM
	db 17, ACID
	db 20, MUD_SHOT
	db 24, DISABLE
	db 28, RAIN_DANCE
	db 31, MAGNITUDE
	db 36, LOW_KICK
	db 39, FLAIL
	db 44, EARTHQUAKE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

ThrohEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 9, FORESIGHT
	db 13, VITAL_THROW
	db 18, SEISMIC_TOSS
	db 23, COMET_PUNCH
	db 27, ENDURE
	db 30, BODY_SLAM
	db 33, STORM_THROW
	db 37, MEGA_PUNCH
	db 40, REVERSAL
	db 45, SKULL_BASH
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

SawkEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 9, FORESIGHT
	db 13, COUNTER
	db 18, KARATE_CHOP
	db 23, FIRE_PUNCH
	db 27, THUNDERPUNCH
	db 30, ICE_PUNCH
	db 33, ENDURE
	db 37, REVERSAL
	db 40, MEGA_PUNCH
	db 45, EXTREMESPEED
	db 50, MEGA_KICK
	db 0 ; no more level-up moves

SewaddleEvosAttacks:
	db EVOLVE_LEVEL, 16, SWADLOON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, ABSORB
	db 12, LEECH_LIFE
	db 18, RAZOR_LEAF
	db 22, BUG_BITE
	db 29, SIGNAL_BEAM
	db 0 ; no more level-up moves

SwadloonEvosAttacks:
	db EVOLVE_LEVEL, 30, LEAVANNY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, ABSORB
	db 12, LEECH_LIFE
	db 16, HARDEN
	db 22, RAZOR_LEAF
	db 28, BUG_BITE
	db 32, SIGNAL_BEAM
	db 0 ; no more level-up moves

LeavannyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, ABSORB
	db 12, LEECH_LIFE
	db 16, HARDEN
	db 22, RAZOR_LEAF
	db 28, BUG_BITE
	db 30, SLASH
	db 36, SIGNAL_BEAM
	db 46, SWORDS_DANCE
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	db EVOLVE_LEVEL, 16, WHIRLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POISON_STING
	db 5, SCREECH
	db 8, PURSUIT
	db 12, PROTECT
	db 15, BITE
	db 17, ACID
	db 20, BUG_BITE
	db 24, AGILITY
	db 28, SLUDGE
	db 33, TOXIC
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	db EVOLVE_LEVEL, 30, SCOLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POISON_STING
	db 5, SCREECH
	db 8, PURSUIT
	db 12, PROTECT
	db 15, BITE
	db 19, ACID
	db 22, BUG_BITE
	db 27, AGILITY
	db 32, SLUDGE
	db 37, TOXIC
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POISON_STING
	db 5, SCREECH
	db 8, PURSUIT
	db 12, PROTECT
	db 15, BITE
	db 19, ACID
	db 22, BUG_BITE
	db 27, AGILITY
	db 30, BATON_PASS
	db 35, SLUDGE
	db 39, TOXIC
	db 43, DOUBLE_EDGE
	db 48, MEGAHORN
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, WHIMSICOTT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, FAIRY_WIND
	db 4, GROWTH
	db 8, LEECH_SEED
	db 12, STUN_SPORE
	db 17, MEGA_DRAIN
	db 20, COTTON_SPORE
	db 23, POISONPOWDER
	db 26, RAZOR_LEAF
	db 28, CHARM
	db 32, DOUBLE_TEAM
	db 37, SUNNY_DAY
	db 40, MOONBLAST
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, FAIRY_WIND
	db 4, GROWTH
	db 8, LEECH_SEED
	db 46, HURRICANE
	db 0 ; no more level-up moves

PetililEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, LILLIGANT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 8, LEECH_SEED
	db 10, SLEEP_POWDER
	db 13, MEGA_DRAIN
	db 17, SYNTHESIS
	db 22, STUN_SPORE
	db 26, QUIVER_DANCE
	db 30, RECOVER
	db 34, SUNNY_DAY
	db 40, GIGA_DRAIN
	db 0 ; no more level-up moves

LilligantEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 8, LEECH_SEED
	db 10, SLEEP_POWDER
	db 46, PETAL_DANCE
	db 0 ; no more level-up moves

BasculinEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 7, HEADBUTT
	db 10, BITE
	db 13, AQUA_JET
	db 17, TAKE_DOWN
	db 21, WATER_PULSE
	db 26, CRUNCH
	db 30, SCARY_FACE
	db 34, FLAIL
	db 38, DOUBLE_EDGE
	db 42, HYDRO_PUMP
	db 50, THRASH
	db 0 ; no more level-up moves

SandileEvosAttacks:
	db EVOLVE_LEVEL, 29, KROKOROK
	db 0 ; no more evolutions
	db 1, LEER
	db 1, RAGE
	db 4, BITE
	db 7, SAND_ATTACK
	db 16, MUD_SLAP
	db 19, MUD_SHOT
	db 22, SWAGGER
	db 26, CRUNCH
	db 31, DIG
	db 34, SCARY_FACE
	db 37, EARTHQUAKE
	db 40, SANDSTORM
	db 43, THRASH
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	db EVOLVE_LEVEL, 40, KROOKODILE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, RAGE
	db 4, BITE
	db 7, SAND_ATTACK
	db 16, MUD_SLAP
	db 19, MUD_SHOT
	db 22, SWAGGER
	db 26, CRUNCH
	db 32, DIG
	db 36, SCARY_FACE
	db 40, EARTHQUAKE
	db 42, SANDSTORM
	db 46, THRASH
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, RAGE
	db 4, BITE
	db 7, SAND_ATTACK
	db 16, MUD_SLAP
	db 19, MUD_SHOT
	db 22, SWAGGER
	db 26, CRUNCH
	db 32, DIG
	db 36, SCARY_FACE
	db 40, EARTHQUAKE
	db 44, SANDSTORM
	db 48, THRASH
	db 52, OUTRAGE
	db 0 ; no more level-up moves

DarumakaEvosAttacks:
	db EVOLVE_LEVEL, 35, DARMANITAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, ROLLOUT
	db 9, RAGE
	db 14, HEADBUTT
	db 17, SWAGGER
	db 22, FIRE_PUNCH
	db 27, THRASH
	db 30, BELLY_DRUM
	db 33, MEGA_PUNCH
	db 37, FIRE_SPIN
	db 42, FLARE_BLITZ
	db 0 ; no more level-up moves

DarmanitanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, ROLLOUT
	db 9, RAGE
	db 14, HEADBUTT
	db 17, SWAGGER
	db 22, FIRE_PUNCH
	db 27, THRASH
	db 30, BELLY_DRUM
	db 33, MEGA_PUNCH
	db 35, SUBMISSION
	db 40, FIRE_SPIN
	db 46, FLARE_BLITZ
	db 0 ; no more level-up moves

MaractusEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 3, SWEET_SCENT
	db 6, ABSORB
	db 10, GROWTH
	db 13, PIN_MISSILE
	db 17, SYNTHESIS
	db 21, MEGA_DRAIN
	db 26, COTTON_SPORE
	db 30, PETAL_DANCE
	db 38, GIGA_DRAIN
	db 45, SUNNY_DAY
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db EVOLVE_LEVEL, 34, CRUSTLE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, WITHDRAW
	db 8, ROLLOUT
	db 11, SAND_ATTACK
	db 13, FAINT_ATTACK
	db 18, FURY_CUTTER
	db 23, BUG_BITE
	db 28, SLASH
	db 34, ROCK_SLIDE
	db 37, BODY_SLAM
	db 41, FLAIL
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, WITHDRAW
	db 8, ROLLOUT
	db 11, SAND_ATTACK
	db 13, FAINT_ATTACK
	db 18, FURY_CUTTER
	db 23, BUG_BITE
	db 28, SLASH
	db 34, ROCK_SLIDE
	db 42, BODY_SLAM
	db 50, FLAIL
	db 0 ; no more level-up moves

ScraggyEvosAttacks:
	db EVOLVE_LEVEL, 35, SCRAFTY
	db 0 ; no more evolutions
	db 1, LEER
	db 1, KARATE_CHOP
	db 6, SAND_ATTACK
	db 10, SWAGGER
	db 14, FAINT_ATTACK
	db 18, HEADBUTT
	db 23, LOW_KICK
	db 27, MACH_PUNCH
	db 31, HI_JUMP_KICK
	db 35, SCARY_FACE
	db 38, CRUNCH
	db 45, MEGA_KICK
	db 0 ; no more level-up moves

ScraftyEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, KARATE_CHOP
	db 6, SAND_ATTACK
	db 10, SWAGGER
	db 14, FAINT_ATTACK
	db 18, HEADBUTT
	db 23, LOW_KICK
	db 27, MACH_PUNCH
	db 31, HI_JUMP_KICK
	db 35, SCARY_FACE
	db 40, CRUNCH
	db 48, MEGA_KICK
	db 0 ; no more level-up moves

SigilyphEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 4, HYPNOSIS
	db 8, PSYWAVE
	db 14, WHIRLWIND
	db 18, PSYBEAM
	db 24, LIGHT_SCREEN
	db 28, REFLECT
	db 34, MIRROR_MOVE
	db 39, AIR_SLASH
	db 44, PSYCHIC_M
	db 51, SKY_ATTACK
	db 0 ; no more level-up moves

YamaskEvosAttacks:
	db EVOLVE_LEVEL, 34, COFAGRIGUS
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, LICK
	db 6, HAZE
	db 8, NIGHT_SHADE
	db 13, MINIMIZE
	db 17, CONFUSE_RAY
	db 21, SHADOW_SNEAK
	db 25, SPITE
	db 29, CURSE
	db 32, SCARY_FACE
	db 35, SHADOW_BALL
	db 39, MEAN_LOOK
	db 43, GLARE
	db 49, DESTINY_BOND
	db 0 ; no more level-up moves

CofagrigusEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, LICK
	db 6, HAZE
	db 8, NIGHT_SHADE
	db 13, MINIMIZE
	db 17, CONFUSE_RAY
	db 21, SHADOW_SNEAK
	db 25, SPITE
	db 29, CURSE
	db 32, SCARY_FACE
	db 37, SHADOW_BALL
	db 42, MEAN_LOOK
	db 47, GLARE
	db 53, DESTINY_BOND
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ROCK_THROW
	db 22, ANCIENTPOWER
	db 26, WATER_PULSE
	db 30, CURSE
	db 34, SKULL_BASH
	db 37, ROCK_SLIDE
	db 40, HYDRO_PUMP
	db 46, RAIN_DANCE
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ROCK_THROW
	db 22, ANCIENTPOWER
	db 26, WATER_PULSE
	db 30, CURSE
	db 34, SKULL_BASH
	db 37, ROCK_SLIDE
	db 42, HYDRO_PUMP
	db 50, RAIN_DANCE
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db EVOLVE_LEVEL, 37, ARCHEOPS
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, PECK
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK
	db 19, ROCK_THROW
	db 23, AGILITY
	db 28, ANCIENTPOWER
	db 32, DRAGONBREATH
	db 37, CRUNCH
	db 39, ROCK_SLIDE
	db 44, DRAGON_CLAW
	db 49, THRASH
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, PECK
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK
	db 19, ROCK_THROW
	db 23, AGILITY
	db 28, ANCIENTPOWER
	db 32, DRAGONBREATH
	db 37, CRUNCH
	db 42, ROCK_SLIDE
	db 47, DRAGON_CLAW
	db 53, THRASH
	db 0 ; no more level-up moves

TrubbishEvosAttacks:
	db EVOLVE_LEVEL, 36, GARBODOR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, POISON_GAS
	db 12, DOUBLESLAP
	db 18, SLUDGE
	db 23, BODY_SLAM
	db 27, SELFDESTRUCT
	db 33, SLUDGE_BOMB
	db 38, TOXIC
	db 40, AMNESIA
	db 43, MINIMIZE
	db 47, EXPLOSION
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, POISON_GAS
	db 12, DOUBLESLAP
	db 18, SLUDGE
	db 23, BODY_SLAM
	db 27, SELFDESTRUCT
	db 33, SLUDGE_BOMB
	db 40, TOXIC
	db 43, AMNESIA
	db 48, MINIMIZE
	db 53, EXPLOSION
	db 0 ; no more level-up moves

ZoruaEvosAttacks:
	db EVOLVE_LEVEL, 30, ZOROARK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, PURSUIT
	db 10, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 18, SCARY_FACE
	db 27, SCREECH
	db 31, AGILITY
	db 36, NIGHT_DAZE
	db 40, DRAGON_CLAW
	db 43, NASTY_PLOT
	db 0 ; no more level-up moves

ZoroarkEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, PURSUIT
	db 10, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 18, SCARY_FACE
	db 27, SCREECH
	db 30, NIGHT_SLASH
	db 35, AGILITY
	db 40, NIGHT_DAZE
	db 47, DRAGON_CLAW
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves

MinccinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CINCCINO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 8, FORESIGHT
	db 10, DOUBLESLAP
	db 12, ENCORE
	db 17, SWIFT
	db 21, SING
	db 25, TAIL_SLAP
	db 27, CHARM
	db 32, SWEET_KISS
	db 37, SLAM
	db 43, BODY_SLAM
	db 48, PERISH_SONG
	db 0 ; no more level-up moves

CinccinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 8, FORESIGHT
	db 10, DOUBLESLAP
	db 36, TAIL_SLAP
	db 0 ; no more level-up moves

GothitaEvosAttacks:
	db EVOLVE_LEVEL, 26, GOTHORITA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 10, DOUBLESLAP
	db 16, CONFUSION
	db 20, FAINT_ATTACK
	db 23, PSYBEAM
	db 26, HYPNOSIS
	db 28, NASTY_PLOT
	db 32, FUTURE_SIGHT
	db 37, PSYCHIC_M
	db 40, CHARM
	db 44, DAZZLINGLEAM
	db 0 ; no more level-up moves

GothoritaEvosAttacks:
	db EVOLVE_LEVEL, 41, GOTHITELLE
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 10, DOUBLESLAP
	db 16, CONFUSION
	db 20, FAINT_ATTACK
	db 23, PSYBEAM
	db 26, HYPNOSIS
	db 30, NASTY_PLOT
	db 34, FUTURE_SIGHT
	db 39, PSYCHIC_M
	db 43, CHARM
	db 47, DAZZLINGLEAM
	db 0 ; no more level-up moves

GothitelleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 10, DOUBLESLAP
	db 16, CONFUSION
	db 20, FAINT_ATTACK
	db 23, PSYBEAM
	db 26, HYPNOSIS
	db 30, NASTY_PLOT
	db 34, FUTURE_SIGHT
	db 39, PSYCHIC_M
	db 45, CHARM
	db 50, DAZZLINGLEAM
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	db EVOLVE_LEVEL, 26, DUOSION
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 3, REFLECT
	db 8, ROLLOUT
	db 13, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 20, CHARM
	db 24, PSYBEAM
	db 27, RECOVER
	db 31, FUTURE_SIGHT
	db 37, PSYCHIC_M
	db 40, PAIN_SPLIT
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	db EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 3, REFLECT
	db 8, ROLLOUT
	db 13, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 20, CHARM
	db 24, PSYBEAM
	db 29, RECOVER
	db 34, FUTURE_SIGHT
	db 39, PSYCHIC_M
	db 43, PAIN_SPLIT
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 3, REFLECT
	db 8, ROLLOUT
	db 13, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 20, CHARM
	db 24, PSYBEAM
	db 29, RECOVER
	db 34, FUTURE_SIGHT
	db 39, PSYCHIC_M
	db 41, DIZZY_PUNCH
	db 48, PAIN_SPLIT
	db 0 ; no more level-up moves

DucklettEvosAttacks:
	db EVOLVE_LEVEL, 35, SWANNA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 9, WING_ATTACK
	db 13, WATER_PULSE
	db 19, BUBBLEBEAM
	db 27, AIR_SLASH
	db 30, DRILL_PECK
	db 34, RAIN_DANCE
	db 37, MIRROR_MOVE
	db 44, HURRICANE
	db 0 ; no more level-up moves

SwannaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 9, WING_ATTACK
	db 13, WATER_PULSE
	db 19, BUBBLEBEAM
	db 27, AIR_SLASH
	db 30, DRILL_PECK
	db 34, RAIN_DANCE
	db 40, MIRROR_MOVE
	db 48, HURRICANE
	db 0 ; no more level-up moves

VanilliteEvosAttacks:
	db EVOLVE_LEVEL, 30, VANILLISH
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, POUND
	db 10, POWDER_SNOW
	db 16, MIST
	db 20, AURORA_BEAM
	db 26, CONFUSION
	db 31, ACID_ARMOR
	db 36, ICE_BEAM
	db 39, PSYBEAM
	db 41, MIRROR_COAT
	db 45, BLIZZARD
	db 0 ; no more level-up moves

VanillishEvosAttacks:
	db EVOLVE_LEVEL, 45, VANILLUXE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, POUND
	db 10, POWDER_SNOW
	db 16, MIST
	db 20, AURORA_BEAM
	db 26, CONFUSION
	db 33, ACID_ARMOR
	db 38, ICE_BEAM
	db 42, PSYBEAM
	db 45, MIRROR_COAT
	db 48, BLIZZARD
	db 0 ; no more level-up moves

VanilluxeEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, POUND
	db 10, POWDER_SNOW
	db 16, MIST
	db 20, AURORA_BEAM
	db 26, CONFUSION
	db 33, ACID_ARMOR
	db 38, ICE_BEAM
	db 42, PSYBEAM
	db 45, MIRROR_COAT
	db 52, BLIZZARD
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 34, SAWSBUCK
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 4, GROWL
	db 7, SAND_ATTACK
	db 10, DOUBLE_KICK
	db 13, LEECH_SEED
	db 16, FAINT_ATTACK
	db 20, STOMP
	db 23, JUMP_KICK
	db 27, RAZOR_LEAF
	db 32, CHARM
	db 36, DOUBLE_EDGE
	db 42, WOOD_HAMMER
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 4, GROWL
	db 7, SAND_ATTACK
	db 10, DOUBLE_KICK
	db 13, LEECH_SEED
	db 16, FAINT_ATTACK
	db 20, STOMP
	db 23, JUMP_KICK
	db 27, RAZOR_LEAF
	db 32, CHARM
	db 37, DOUBLE_EDGE
	db 46, WOOD_HAMMER
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

EmolgaEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 4, QUICK_ATTACK
	db 7, TAIL_WHIP
	db 13, SPARK
	db 16, PURSUIT
	db 19, DOUBLE_TEAM
	db 24, WING_ATTACK
	db 29, LIGHT_SCREEN
	db 34, ENCORE
	db 40, THUNDERBOLT
	db 46, AGILITY
	db 50, THUNDER
	db 0 ; no more level-up moves

KarrablastEvosAttacks:
	db EVOLVE_ITEM, SHELL_STONE, ESCAVALIER
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, LEER
	db 8, ENDURE
	db 13, FURY_ATTACK
	db 16, FURY_CUTTER
	db 20, HEADBUTT
	db 25, FALSE_SWIPE
	db 28, COMET_PUNCH
	db 32, SLASH
	db 35, TAKE_DOWN
	db 38, SCARY_FACE
	db 42, SWORDS_DANCE
	db 45, FLAIL
	db 48, DOUBLE_EDGE
	db 52, MEGAHORN
	db 0 ; no more level-up moves

EscavalierEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, LEER
	db 8, ENDURE
	db 13, FURY_ATTACK
	db 16, FURY_CUTTER
	db 20, HEADBUTT
	db 25, FALSE_SWIPE
	db 28, TWINEEDLE
	db 32, SLASH
	db 35, IRON_HEAD
	db 38, SCARY_FACE
	db 42, SWORDS_DANCE
	db 45, REVERSAL
	db 48, DOUBLE_EDGE
	db 52, MEGAHORN
	db 0 ; no more level-up moves

FoongusEvosAttacks:
	db EVOLVE_LEVEL, 30, AMOONGUSS
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, GROWTH
	db 12, BIDE
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 21, SWEET_SCENT
	db 25, MEGA_DRAIN
	db 30, TOXIC
	db 32, SLUDGE
	db 35, SOLARBEAM
	db 38, SYNTHESIS
	db 42, SPORE
	db 0 ; no more level-up moves

AmoongussEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, GROWTH
	db 12, BIDE
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 21, SWEET_SCENT
	db 25, MEGA_DRAIN
	db 30, TOXIC
	db 35, SLUDGE
	db 39, SOLARBEAM
	db 43, SYNTHESIS
	db 49, SPORE
	db 0 ; no more level-up moves

FrillishEvosAttacks:
	db EVOLVE_LEVEL, 40, JELLICENT
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, ABSORB
	db 13, NIGHT_SHADE
	db 17, WATER_PULSE
	db 22, AURORA_BEAM
	db 27, RECOVER
	db 32, MEGA_DRAIN
	db 37, RAIN_DANCE
	db 41, CONFUSE_RAY
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JellicentEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, ABSORB
	db 13, NIGHT_SHADE
	db 17, WATER_PULSE
	db 22, AURORA_BEAM
	db 27, RECOVER
	db 32, MEGA_DRAIN
	db 37, RAIN_DANCE
	db 43, CONFUSE_RAY
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

AlomomolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, BUBBLE
	db 9, AQUA_JET
	db 13, DOUBLESLAP
	db 17, SUPERSONIC
	db 21, PROTECT
	db 25, WATER_PULSE
	db 30, COUNTER
	db 34, SKULL_BASH
	db 38, HYDRO_PUMP
	db 43, SAFEGUARD
	db 48, PERISH_SONG
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db EVOLVE_LEVEL, 32, GALVANTULA
	db 0 ; no more evolutions
	db 1, STRING_SHOT
	db 1, LEECH_LIFE
	db 4, THUNDER_WAVE
	db 8, POISON_STING
	db 12, FURY_CUTTER
	db 15, ACID
	db 18, SPARK
	db 22, SCREECH
	db 26, SLASH
	db 30, BUG_BITE
	db 34, SIGNAL_BEAM
	db 37, AGILITY
	db 40, THUNDERBOLT
	db 45, THUNDER
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRING_SHOT
	db 1, LEECH_LIFE
	db 4, THUNDER_WAVE
	db 8, POISON_STING
	db 12, FURY_CUTTER
	db 15, ACID
	db 18, SPARK
	db 22, SCREECH
	db 26, SLASH
	db 30, BUG_BITE
	db 36, SIGNAL_BEAM
	db 39, AGILITY
	db 45, THUNDERBOLT
	db 52, THUNDER
	db 0 ; no more level-up moves

FerroseedEvosAttacks:
	db EVOLVE_LEVEL, 35, FERROTHORN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, ROLLOUT
	db 9, CURSE
	db 12, METAL_CLAW
	db 16, VINE_WHIP
	db 20, SPIKES
	db 24, RAPID_SPIN
	db 28, PIN_MISSILE
	db 32, SELFDESTRUCT
	db 36, IRON_HEAD
	db 40, EXPLOSION
	db 0 ; no more level-up moves

FerrothornEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, ROLLOUT
	db 9, CURSE
	db 12, METAL_CLAW
	db 16, VINE_WHIP
	db 20, SPIKES
	db 24, RAPID_SPIN
	db 28, PIN_MISSILE
	db 32, SELFDESTRUCT
	db 37, IRON_HEAD
	db 43, EXPLOSION
	db 52, WOOD_HAMMER
	db 0 ; no more level-up moves

KlinkEvosAttacks:
	db EVOLVE_LEVEL, 35, KLANG
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 11, THUNDERSHOCK
	db 16, BIND
	db 21, GEAR_GRIND
	db 26, LOCK_ON
	db 31, SUPERSONIC
	db 37, SCREECH
	db 40, SHIFT_GEAR
	db 45, TRI_ATTACK
	db 50, HYPER_BEAM
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

KlangEvosAttacks:
	db EVOLVE_LEVEL, 45, KLINKLANG
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 11, THUNDERSHOCK
	db 16, BIND
	db 21, GEAR_GRIND
	db 26, LOCK_ON
	db 31, SUPERSONIC
	db 39, SCREECH
	db 43, SHIFT_GEAR
	db 48, TRI_ATTACK
	db 53, HYPER_BEAM
	db 56, ZAP_CANNON
	db 0 ; no more level-up moves

KlinklangEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 11, THUNDERSHOCK
	db 16, BIND
	db 21, GEAR_GRIND
	db 26, LOCK_ON
	db 31, SUPERSONIC
	db 39, SCREECH
	db 43, SHIFT_GEAR
	db 50, TRI_ATTACK
	db 55, HYPER_BEAM
	db 60, ZAP_CANNON
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	db EVOLVE_LEVEL, 30, EELEKTRIK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 9, BIND
	db 19, ACID
	db 25, THUNDERSHOCK
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 9, BIND
	db 19, ACID
	db 25, THUNDERSHOCK
	db 30, CRUNCH
	db 35, THUNDERPUNCH
	db 39, HYPER_BEAM
	db 44, ZAP_CANNON
	db 50, THRASH
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, THUNDER
	db 1, THUNDER_WAVE
	db 9, BIND
	db 0 ; no more level-up moves

ElgyemEvosAttacks:
	db EVOLVE_LEVEL, 38, BEHEEYEM
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, GROWL
	db 8, HEADBUTT
	db 12, FORESIGHT
	db 17, HIDDEN_POWER
	db 22, PSYBEAM
	db 29, HYPNOSIS
	db 32, REFLECT
	db 35, PSYCH_UP
	db 38, PSYCHIC_M
	db 40, NASTY_PLOT
	db 46, RECOVER
	db 0 ; no more level-up moves

BeheeyemEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, GROWL
	db 8, HEADBUTT
	db 12, FORESIGHT
	db 17, HIDDEN_POWER
	db 22, PSYBEAM
	db 29, HYPNOSIS
	db 32, REFLECT
	db 35, PSYCH_UP
	db 38, PSYCHIC_M
	db 42, NASTY_PLOT
	db 50, RECOVER
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 38, LAMPENT
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SMOG
	db 8, NIGHT_SHADE
	db 13, SPITE
	db 18, MINIMIZE
	db 22, CONFUSE_RAY
	db 28, SHADOW_SNEAK
	db 33, FIRE_SPIN
	db 38, FLAMETHROWER
	db 41, CURSE
	db 45, SHADOW_BALL
	db 50, PAIN_SPLIT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, CHANDELURE
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SMOG
	db 8, NIGHT_SHADE
	db 13, SPITE
	db 18, MINIMIZE
	db 22, CONFUSE_RAY
	db 28, SHADOW_SNEAK
	db 33, FIRE_SPIN
	db 38, FLAMETHROWER
	db 44, CURSE
	db 48, SHADOW_BALL
	db 53, PAIN_SPLIT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SMOG
	db 8, NIGHT_SHADE
	db 13, SPITE
	db 0 ; no more level-up moves

AxewEvosAttacks:
	db EVOLVE_LEVEL, 35, FRAXURE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 10, HORN_ATTACK
	db 16, SCARY_FACE
	db 20, DRAGON_RAGE
	db 24, FALSE_SWIPE
	db 28, SLASH
	db 34, DRAGON_CLAW
	db 36, SWORDS_DANCE
	db 40, GUILLOTINE
	db 44, HYPER_BEAM
	db 50, OUTRAGE
	db 0 ; no more level-up moves

FraxureEvosAttacks:
	db EVOLVE_LEVEL, 48, HAXORUS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 10, HORN_ATTACK
	db 16, SCARY_FACE
	db 20, DRAGON_RAGE
	db 24, FALSE_SWIPE
	db 28, SLASH
	db 34, DRAGON_CLAW
	db 40, SWORDS_DANCE
	db 44, GUILLOTINE
	db 48, HYPER_BEAM
	db 53, OUTRAGE
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 10, HORN_ATTACK
	db 16, SCARY_FACE
	db 20, DRAGON_RAGE
	db 24, FALSE_SWIPE
	db 28, SLASH
	db 34, DRAGON_CLAW
	db 40, SWORDS_DANCE
	db 44, GUILLOTINE
	db 48, HYPER_BEAM
	db 57, OUTRAGE
	db 0 ; no more level-up moves

CubchooEvosAttacks:
	db EVOLVE_LEVEL, 37, BEARTIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, POWDER_SNOW
	db 9, BIDE
	db 13, BELLY_DRUM
	db 17, FURY_SWIPES
	db 21, ICE_PUNCH
	db 25, ENDURE
	db 29, SWAGGER
	db 33, SLASH
	db 36, FLAIL
	db 39, REST
	db 45, BLIZZARD
	db 50, THRASH
	db 0 ; no more level-up moves

BearticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, POWDER_SNOW
	db 9, BIDE
	db 13, BELLY_DRUM
	db 17, FURY_SWIPES
	db 21, ICE_PUNCH
	db 25, ENDURE
	db 29, SWAGGER
	db 33, SLASH
	db 36, FLAIL
	db 41, REST
	db 47, BLIZZARD
	db 53, THRASH
	db 0 ; no more level-up moves

CryogonalEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, RAPID_SPIN
	db 5, POWDER_SNOW
	db 9, SHARPEN
	db 13, MIST
	db 18, HAZE
	db 21, ANCIENTPOWER
	db 25, AURORA_BEAM
	db 29, ACID_ARMOR
	db 33, ICE_BEAM
	db 36, LIGHT_SCREEN
	db 37, REFLECT
	db 41, CONFUSE_RAY
	db 45, RECOVER
	db 49, SOLARBEAM
	db 53, NIGHT_SLASH
	db 0 ; no more level-up moves

ShelmetEvosAttacks:
	db EVOLVE_ITEM, SHELL_STONE, ACCELGOR
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 4, POISON_STING
	db 7, CURSE
	db 10, BIDE
	db 13, ACID
	db 17, BUG_BITE
	db 21, MEGA_DRAIN
	db 25, SCREECH
	db 28, PROTECT
	db 32, ACID_ARMOR
	db 37, SIGNAL_BEAM
	db 40, BODY_SLAM
	db 44, SKULL_BASH
	db 49, RECOVER
	db 0 ; no more level-up moves

AccelgorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 4, POISON_STING
	db 7, CURSE
	db 10, DOUBLE_TEAM
	db 13, ACID
	db 17, BUG_BITE
	db 21, MEGA_DRAIN
	db 25, SWIFT
	db 28, PROTECT
	db 32, AGILITY
	db 37, SIGNAL_BEAM
	db 40, CONFUSION
	db 44, EXTREMESPEED
	db 49, RECOVER
	db 0 ; no more level-up moves

StunfiskEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIDE
	db 1, MUD_SLAP
	db 9, THUNDERSHOCK
	db 15, MUD_SHOT
	db 20, REST
	db 25, ENDURE
	db 30, THUNDERBOLT
	db 35, MAGNITUDE
	db 40, FLAIL
	db 48, ZAP_CANNON
	db 53, FISSURE
	db 0 ; no more level-up moves

MienfooEvosAttacks:
	db EVOLVE_LEVEL, 40, MIENSHAO
	db 0 ; no more evolutions
	db 1, POUND
	db 5, MEDITATE
	db 8, DOUBLESLAP
	db 12, DETECT
	db 14, KARATE_CHOP
	db 17, MACH_PUNCH
	db 21, SWIFT
	db 25, JUMP_KICK
	db 29, MIND_READER
	db 33, CROSS_CHOP
	db 38, FORESIGHT
	db 41, DIZZY_PUNCH
	db 46, HI_JUMP_KICK
	db 50, REVERSAL
	db 0 ; no more level-up moves

MienshaoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, MEDITATE
	db 8, DOUBLESLAP
	db 12, DETECT
	db 14, KARATE_CHOP
	db 17, MACH_PUNCH
	db 21, SWIFT
	db 25, JUMP_KICK
	db 29, MIND_READER
	db 33, CROSS_CHOP
	db 38, FORESIGHT
	db 43, DIZZY_PUNCH
	db 48, HI_JUMP_KICK
	db 54, REVERSAL
	db 0 ; no more level-up moves

DruddigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 8, SCARY_FACE
	db 13, BITE
	db 21, DRAGON_RAGE
	db 25, SLASH
	db 30, DRAGON_CLAW
	db 35, NASTY_PLOT
	db 39, NIGHT_SLASH
	db 45, GLARE
	db 52, OUTRAGE
	db 0 ; no more level-up moves

GolettEvosAttacks:
	db EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, MUD_SHOT
	db 18, MEGA_PUNCH
	db 22, LOW_KICK
	db 27, NIGHT_SHADE
	db 31, MAGNITUDE
	db 35, SHADOW_CLAW
	db 39, DYNAMICPUNCH
	db 43, STOMP
	db 45, EARTHQUAKE
	db 48, CURSE
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, MUD_SHOT
	db 18, MEGA_PUNCH
	db 22, LOW_KICK
	db 27, NIGHT_SHADE
	db 31, MAGNITUDE
	db 35, SHADOW_CLAW
	db 39, DYNAMICPUNCH
	db 43, STOMP
	db 47, EARTHQUAKE
	db 52, CURSE
	db 0 ; no more level-up moves

PawniardEvosAttacks:
	db EVOLVE_LEVEL, 42, BISHARP
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, LEER
	db 9, FURY_CUTTER
	db 14, FAINT_ATTACK
	db 19, SCARY_FACE
	db 25, METAL_CLAW
	db 33, SLASH
	db 38, NIGHT_SLASH
	db 43, IRON_HEAD
	db 48, SWORDS_DANCE
	db 53, GUILLOTINE
	db 0 ; no more level-up moves

BisharpEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, LEER
	db 9, FURY_CUTTER
	db 14, FAINT_ATTACK
	db 19, SCARY_FACE
	db 25, METAL_CLAW
	db 33, SLASH
	db 38, NIGHT_SLASH
	db 45, IRON_HEAD
	db 50, SWORDS_DANCE
	db 57, GUILLOTINE
	db 0 ; no more level-up moves

BouffalantEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, LEER
	db 6, RAGE
	db 11, FURY_ATTACK
	db 16, HORN_ATTACK
	db 21, SCARY_FACE
	db 27, HEAD_CHARGE
	db 32, FOCUS_ENERGY
	db 37, BODY_SLAM
	db 41, MEGAHORN
	db 44, REVERSAL
	db 48, THRASH
	db 52, SWORDS_DANCE
	db 58, HORN_DRILL
	db 0 ; no more level-up moves

RuffletEvosAttacks:
	db EVOLVE_LEVEL, 40, BRAVIARY
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 10, FURY_ATTACK
	db 14, SCARY_FACE
	db 19, WING_ATTACK
	db 28, SLASH
	db 33, DRILL_PECK
	db 39, THRASH
	db 41, AIR_SLASH
	db 45, WHIRLWIND
	db 49, SKY_ATTACK
	db 0 ; no more level-up moves

BraviaryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 10, FURY_ATTACK
	db 14, SCARY_FACE
	db 19, WING_ATTACK
	db 28, SLASH
	db 33, DRILL_PECK
	db 39, THRASH
	db 41, AIR_SLASH
	db 47, WHIRLWIND
	db 52, SKY_ATTACK
	db 0 ; no more level-up moves

VullabyEvosAttacks:
	db EVOLVE_LEVEL, 40, MANDIBUZZ
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 10, FURY_ATTACK
	db 19, SWORDS_DANCE
	db 28, FAINT_ATTACK
	db 33, MIRROR_MOVE
	db 39, NIGHT_SLASH
	db 41, AIR_SLASH
	db 45, WHIRLWIND
	db 49, HURRICANE
	db 0 ; no more level-up moves

MandibuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 10, FURY_ATTACK
	db 19, SWORDS_DANCE
	db 28, FAINT_ATTACK
	db 33, MIRROR_MOVE
	db 39, NIGHT_SLASH
	db 41, AIR_SLASH
	db 47, WHIRLWIND
	db 52, HURRICANE
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 11, WRAP
	db 16, FIRE_SPIN
	db 20, FURY_SWIPES
	db 24, BUG_BITE
	db 28, FIRE_PUNCH
	db 32, SLASH
	db 37, AMNESIA
	db 42, FLAMETHROWER
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, FURY_CUTTER
	db 1, SAND_ATTACK
	db 11, BITE
	db 16, AGILITY
	db 20, BUG_BITE
	db 26, METAL_CLAW
	db 32, DIG
	db 38, IRON_HEAD
	db 43, REVERSAL
	db 50, GUILLOTINE
	db 0 ; no more level-up moves

DeinoEvosAttacks:
	db EVOLVE_LEVEL, 40, ZWEILOUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, TWISTER
	db 12, BITE
	db 17, DRAGONBREATH
	db 22, DRAGON_RAGE
	db 26, HEADBUTT
	db 31, ROAR
	db 38, CRUNCH
	db 42, DRAGON_CLAW
	db 46, NASTY_PLOT
	db 50, HYPER_BEAM
	db 56, OUTRAGE
	db 0 ; no more level-up moves

ZweilousEvosAttacks:
	db EVOLVE_LEVEL, 55, HYDREIGON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, TWISTER
	db 12, BITE
	db 17, DRAGONBREATH
	db 22, DRAGON_RAGE
	db 26, HEADBUTT
	db 31, ROAR
	db 38, CRUNCH
	db 45, DRAGON_CLAW
	db 49, NASTY_PLOT
	db 53, HYPER_BEAM
	db 58, OUTRAGE
	db 0 ; no more level-up moves

HydreigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, TWISTER
	db 12, BITE
	db 17, DRAGONBREATH
	db 22, DRAGON_RAGE
	db 26, HEADBUTT
	db 31, ROAR
	db 38, CRUNCH
	db 45, DRAGON_CLAW
	db 49, NASTY_PLOT
	db 53, HYPER_BEAM
	db 55, TRI_ATTACK
	db 62, OUTRAGE
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 45, VOLCARONA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, STRING_SHOT
	db 10, LEECH_LIFE
	db 15, TAKE_DOWN
	db 20, FIRE_SPIN
	db 25, FLAME_WHEEL
	db 30, BUG_BITE
	db 35, AMNESIA
	db 40, DOUBLE_EDGE
	db 48, FLAMETHROWER
	db 53, SIGNAL_BEAM
	db 59, THRASH
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, STRING_SHOT
	db 10, LEECH_LIFE
	db 15, TAKE_DOWN
	db 20, FIRE_SPIN
	db 25, FLAME_WHEEL
	db 30, BUG_BITE
	db 35, AMNESIA
	db 40, DOUBLE_EDGE
	db 45, QUIVER_DANCE
	db 48, FLAMETHROWER
	db 53, SIGNAL_BEAM
	db 59, HURRICANE
	db 0 ; no more level-up moves

CobalionEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 13, DOUBLE_KICK
	db 25, METAL_CLAW
	db 33, TAKE_DOWN
	db 40, IRON_HEAD
	db 45, SACRED_SWORD
	db 50, SWORDS_DANCE
	db 55, FLASH_CANNON
	db 0 ; no more level-up moves

TerrakionEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 13, DOUBLE_KICK
	db 25, ROCK_THROW
	db 33, TAKE_DOWN
	db 40, ROCK_SLIDE
	db 45, SACRED_SWORD
	db 50, SWORDS_DANCE
	db 55, STONE_EDGE
	db 0 ; no more level-up moves

VirizionEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 13, DOUBLE_KICK
	db 25, VINE_WHIP
	db 33, TAKE_DOWN
	db 40, GIGA_DRAIN
	db 45, SACRED_SWORD
	db 50, SWORDS_DANCE
	db 55, WOOD_HAMMER
	db 0 ; no more level-up moves

TornadusEvosAttacks:
	db 0 ; no more evolutions
	db 1, REST
	db 1, SWAGGER
	db 13, BITE
	db 19, GUST
	db 25, CONFUSION
	db 32, AGILITY
	db 38, CRUNCH
	db 44, AIR_SLASH
	db 48, HURRICANE
	db 52, THRASH
	db 55, RAIN_DANCE
	db 58, NASTY_PLOT
	db 0 ; no more level-up moves

ThundurusEvosAttacks:
	db 0 ; no more evolutions
	db 1, REST
	db 1, SWAGGER
	db 13, BITE
	db 19, THUNDERSHOCK
	db 25, CONFUSION
	db 32, AGILITY
	db 38, CRUNCH
	db 44, THUNDERBOLT
	db 48, THUNDER
	db 52, THRASH
	db 55, RAIN_DANCE
	db 58, NASTY_PLOT
	db 0 ; no more level-up moves

ReshiramEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 15, BITE
	db 22, ANCIENTPOWER
	db 29, DRAGONBREATH
	db 36, SLASH
	db 42, FLAMETHROWER
	db 55, DRAGON_CLAW
	db 59, CRUNCH
	db 64, FIRE_BLAST
	db 69, OUTRAGE
	db 0 ; no more level-up moves

ZekromEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 15, BITE
	db 22, ANCIENTPOWER
	db 29, DRAGONBREATH
	db 36, SLASH
	db 42, THUNDERBOLT
	db 55, DRAGON_CLAW
	db 59, CRUNCH
	db 64, THUNDER
	db 69, OUTRAGE
	db 0 ; no more level-up moves
	
LandorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SHOT
	db 13, SLAM
	db 19, ROCK_THROW
	db 25, CONFUSION
	db 32, SWORDS_DANCE
	db 38, ROCK_SLIDE
	db 44, EARTHQUAKE
	db 55, SANDSTORM
	db 59, STONE_EDGE
	db 63, FISSURE
	db 68, OUTRAGE
	db 0 ; no more level-up moves

KyuremEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 15, BITE
	db 22, ICY_WIND
	db 29, DRAGONBREATH
	db 36, SLASH
	db 42, ICE_BEAM
	db 55, DRAGON_CLAW
	db 59, CRUNCH
	db 64, BLIZZARD
	db 69, OUTRAGE
	db 0 ; no more level-up moves

KeldeoEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, DOUBLE_KICK
	db 16, BUBBLEBEAM
	db 22, JUMP_KICK
	db 26, AQUA_JET
	db 30, AURORA_BEAM
	db 34, TAKE_DOWN
	db 40, SACRED_SWORD
	db 45, SWORDS_DANCE
	db 50, HYDRO_PUMP
	db 55, ICE_BEAM
	db 0 ; no more level-up moves

MeloettaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 5, SING
	db 11, CONFUSION
	db 18, BODY_SLAM
	db 22, KARATE_CHOP
	db 27, PSYBEAM
	db 32, FAINT_ATTACK
	db 37, PSYCHIC_M
	db 42, DAZZLINGLEAM
	db 46, NASTY_PLOT
	db 50, HYPER_BEAM
	db 54, PERISH_SONG
	db 0 ; no more level-up moves

GenesectEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, SCREECH
	db 7, FURY_CUTTER
	db 11, LOCK_ON
	db 16, METAL_CLAW
	db 18, FLAME_WHEEL
	db 22, BUG_BITE
	db 26, SLASH
	db 30, IRON_HEAD
	db 35, SIGNAL_BEAM
	db 39, TRI_ATTACK
	db 43, HYPER_BEAM
	db 47, SELFDESTRUCT
	db 52, ZAP_CANNON
	db 0 ; no more level-up moves

VictiniEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 5, CONFUSION
	db 10, QUICK_ATTACK
	db 13, EMBER
	db 17, HEADBUTT
	db 23, PSYBEAM
	db 27, FLAME_WHEEL
	db 30, FIRE_SPIN
	db 34, REVERSAL
	db 38, PSYCHIC_M
	db 42, FLAMETHROWER
	db 47, DOUBLE_EDGE
	db 53, FLARE_BLITZ
	db 0 ; no more level-up moves

ChespinEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILLADIN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 10, ROLLOUT
	db 12, BITE
	db 15, LEECH_SEED
	db 18, PIN_MISSILE
	db 23, TAKE_DOWN
	db 27, RAZOR_LEAF
	db 30, MUD_SHOT
	db 35, BODY_SLAM
	db 39, PAIN_SPLIT
	db 43, WOOD_HAMMER
	db 0 ; no more level-up moves

QuilladinEvosAttacks:
	db EVOLVE_LEVEL, 36, CHESNAUGHT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 10, ROLLOUT
	db 12, BITE
	db 15, LEECH_SEED
	db 18, PIN_MISSILE
	db 23, TAKE_DOWN
	db 30, RAZOR_LEAF
	db 33, MUD_SHOT
	db 37, BODY_SLAM
	db 42, PAIN_SPLIT
	db 48, WOOD_HAMMER
	db 0 ; no more level-up moves

ChesnaughtEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 10, ROLLOUT
	db 12, BITE
	db 15, LEECH_SEED
	db 18, PIN_MISSILE
	db 23, TAKE_DOWN
	db 30, RAZOR_LEAF
	db 33, MUD_SHOT
	db 36, CROSS_CHOP
	db 40, BODY_SLAM
	db 45, PAIN_SPLIT
	db 52, WOOD_HAMMER
	db 0 ; no more level-up moves

FennekinEvosAttacks:
	db EVOLVE_LEVEL, 16, BRAIXEN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 7, EMBER
	db 14, FIRE_SPIN
	db 17, PSYBEAM
	db 20, FLAME_WHEEL
	db 24, LIGHT_SCREEN
	db 27, MIND_READER
	db 32, FLAMETHROWER
	db 37, PSYCHIC_M
	db 40, SUNNY_DAY
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

BraixenEvosAttacks:
	db EVOLVE_LEVEL, 36, DELPHOX
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 7, EMBER
	db 14, FIRE_SPIN
	db 18, PSYBEAM
	db 22, FLAME_WHEEL
	db 27, LIGHT_SCREEN
	db 32, MIND_READER
	db 36, FLAMETHROWER
	db 40, PSYCHIC_M
	db 44, SUNNY_DAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

DelphoxEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 7, EMBER
	db 14, FIRE_SPIN
	db 18, PSYBEAM
	db 22, FLAME_WHEEL
	db 27, LIGHT_SCREEN
	db 32, MIND_READER
	db 36, FLAMETHROWER
	db 42, PSYCHIC_M
	db 47, SUNNY_DAY
	db 52, FIRE_BLAST
	db 58, FUTURE_SIGHT
	db 0 ; no more level-up moves

FroakieEvosAttacks:
	db EVOLVE_LEVEL, 16, FROGADIER
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 7, BUBBLE
	db 12, QUICK_ATTACK
	db 14, LICK
	db 17, WATER_PULSE
	db 21, DOUBLE_TEAM
	db 25, FAINT_ATTACK
	db 28, HAZE
	db 33, SUBSTITUTE
	db 38, NIGHT_SLASH
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

FrogadierEvosAttacks:
	db EVOLVE_LEVEL, 36, GRENINJA
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 7, BUBBLE
	db 12, QUICK_ATTACK
	db 14, LICK
	db 19, WATER_PULSE
	db 24, DOUBLE_TEAM
	db 28, FAINT_ATTACK
	db 32, HAZE
	db 37, SUBSTITUTE
	db 41, NIGHT_SLASH
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

GreninjaEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 7, BUBBLE
	db 12, QUICK_ATTACK
	db 14, LICK
	db 19, WATER_PULSE
	db 24, DOUBLE_TEAM
	db 28, FAINT_ATTACK
	db 32, HAZE
	db 36, SPIKES
	db 40, SUBSTITUTE
	db 44, NIGHT_SLASH
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

BunnelbyEvosAttacks:
	db EVOLVE_LEVEL, 20, DIGGERSBY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, AGILITY
	db 7, QUICK_ATTACK
	db 10, DOUBLESLAP
	db 13, MUD_SLAP
	db 15, TAKE_DOWN
	db 18, MUD_SHOT
	db 22, DOUBLE_KICK
	db 26, FLAIL
	db 30, DIG
	db 36, SUPER_FANG
	db 40, EARTHQUAKE
	db 45, FISSURE
	db 0 ; no more level-up moves

DiggersbyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, AGILITY
	db 7, QUICK_ATTACK
	db 10, DOUBLESLAP
	db 13, MUD_SLAP
	db 15, TAKE_DOWN
	db 18, MUD_SHOT
	db 24, DOUBLE_KICK
	db 29, FLAIL
	db 34, DIG
	db 39, SUPER_FANG
	db 44, EARTHQUAKE
	db 52, FISSURE
	db 0 ; no more level-up moves

FletchlingEvosAttacks:
	db EVOLVE_LEVEL, 17, FLETCHINDR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, QUICK_ATTACK
	db 10, PECK
	db 13, AGILITY
	db 16, FLAIL
	db 21, WING_ATTACK
	db 25, RAZOR_WIND
	db 29, FLAME_WHEEL
	db 40, SKY_ATTACK
	db 0 ; no more level-up moves

FletchindrEvosAttacks:
	db EVOLVE_LEVEL, 35, TALONFLAME
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, QUICK_ATTACK
	db 10, PECK
	db 13, AGILITY
	db 16, FLAIL
	db 17, EMBER
	db 23, WING_ATTACK
	db 27, RAZOR_WIND
	db 32, FLAME_WHEEL
	db 38, FLARE_BLITZ
	db 44, SKY_ATTACK
	db 0 ; no more level-up moves

TalonflameEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, QUICK_ATTACK
	db 10, PECK
	db 13, AGILITY
	db 16, FLAIL
	db 17, EMBER
	db 23, WING_ATTACK
	db 27, RAZOR_WIND
	db 32, FLAME_WHEEL
	db 35, EXTREMESPEED
	db 41, FLARE_BLITZ
	db 49, SKY_ATTACK
	db 0 ; no more level-up moves

ScatterbugEvosAttacks:
	db EVOLVE_LEVEL, 9, SPEWPA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 6, STUN_SPORE
	db 0 ; no more level-up moves

SpewpaEvosAttacks:
	db EVOLVE_LEVEL, 12, VIVILLON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, HARDEN
	db 6, STUN_SPORE
	db 9, PROTECT
	db 0 ; no more level-up moves

VivillonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, HARDEN
	db 6, STUN_SPORE
	db 9, PROTECT
	db 12, GUST
	db 15, SUPERSONIC
	db 18, STRUGGLE_BUG
	db 22, PSYBEAM
	db 25, DRAININGKISS
	db 30, LIGHT_SCREEN
	db 35, SAFEGUARD
	db 40, SIGNAL_BEAM
	db 45, QUIVER_DANCE
	db 50, HURRICANE
	db 0 ; no more level-up moves

LitleoEvosAttacks:
	db EVOLVE_LEVEL, 35, PYROAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, EMBER
	db 11, HEADBUTT
	db 20, TAKE_DOWN
	db 23, FLAME_WHEEL
	db 28, BODY_SLAM
	db 35, FLAMETHROWER
	db 39, CRUNCH
	db 43, FLARE_BLITZ
	db 0 ; no more level-up moves

PyroarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, EMBER
	db 11, HEADBUTT
	db 20, TAKE_DOWN
	db 23, FLAME_WHEEL
	db 28, BODY_SLAM
	db 35, FLAMETHROWER
	db 42, CRUNCH
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

FlabebeEvosAttacks:
	db EVOLVE_LEVEL, 19, FLOETTE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, VINE_WHIP
	db 6, FAIRY_WIND
	db 12, SWEET_KISS
	db 17, RAZOR_LEAF
	db 20, DRAININGKISS
	db 24, PETAL_DANCE
	db 28, SUNNY_DAY
	db 36, MOONBLAST
	db 41, SOLARBEAM
	db 0 ; no more level-up moves

FloetteEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, FLORGES
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, VINE_WHIP
	db 6, FAIRY_WIND
	db 12, SWEET_KISS
	db 17, RAZOR_LEAF
	db 23, DRAININGKISS
	db 29, PETAL_DANCE
	db 33, SUNNY_DAY
	db 40, MOONBLAST
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

FlorgesEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, VINE_WHIP
	db 6, FAIRY_WIND
	db 12, SWEET_KISS
	db 0 ; no more level-up moves

SkiddoEvosAttacks:
	db EVOLVE_LEVEL, 32, GOGOAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWTH
	db 7, VINE_WHIP
	db 9, TAIL_WHIP
	db 12, LEECH_SEED
	db 17, RAZOR_LEAF
	db 22, SYNTHESIS
	db 26, TAKE_DOWN
	db 30, STOMP
	db 34, DOUBLE_EDGE
	db 38, WOOD_HAMMER
	db 43, EXTREMESPEED
	db 0 ; no more level-up moves

GogoatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWTH
	db 7, VINE_WHIP
	db 9, TAIL_WHIP
	db 12, LEECH_SEED
	db 17, RAZOR_LEAF
	db 22, SYNTHESIS
	db 26, TAKE_DOWN
	db 30, STOMP
	db 36, DOUBLE_EDGE
	db 43, WOOD_HAMMER
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PanchamEvosAttacks:
	db EVOLVE_LEVEL, 32, PANGORO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, PURSUIT
	db 12, KARATE_CHOP
	db 15, COMET_PUNCH
	db 20, SLASH
	db 23, FORESIGHT
	db 27, VITAL_THROW
	db 32, FAINT_ATTACK
	db 34, BODY_SLAM
	db 39, CRUNCH
	db 42, CROSS_CHOP
	db 0 ; no more level-up moves

PangoroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, PURSUIT
	db 12, KARATE_CHOP
	db 15, COMET_PUNCH
	db 20, SLASH
	db 23, FORESIGHT
	db 27, VITAL_THROW
	db 32, FAINT_ATTACK
	db 37, BODY_SLAM
	db 42, CRUNCH
	db 48, CROSS_CHOP
	db 0 ; no more level-up moves

FurfrouEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, SAND_ATTACK
	db 8, HEADBUTT
	db 12, TAIL_WHIP
	db 16, BITE
	db 20, MIMIC
	db 23, TAKE_DOWN
	db 27, CHARM
	db 31, BODY_SLAM
	db 35, CRUNCH
	db 40, SKULL_BASH
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

EspurrEvosAttacks:
	db EVOLVE_LEVEL, 25, MEOWSTIC
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, CONFUSION
	db 13, LIGHT_SCREEN
	db 17, PSYBEAM
	db 25, CHARM
	db 27, REFLECT
	db 29, SHADOW_BALL
	db 32, SIGNAL_BEAM
	db 36, PSYCHIC_M
	db 40, NASTY_PLOT
	db 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

MeowsticEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, CONFUSION
	db 13, LIGHT_SCREEN
	db 17, PSYBEAM
	db 25, CHARM
	db 28, REFLECT
	db 31, SHADOW_BALL
	db 35, SIGNAL_BEAM
	db 40, PSYCHIC_M
	db 45, NASTY_PLOT
	db 50, FUTURE_SIGHT
	db 0 ; no more level-up moves

HonedgeEvosAttacks:
	db EVOLVE_LEVEL, 35, DOUBLADE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWORDS_DANCE
	db 5, FURY_CUTTER
	db 10, SPITE
	db 13, PURSUIT
	db 18, SHADOW_SNEAK
	db 24, SLASH
	db 29, NIGHT_SLASH
	db 35, SHADOW_CLAW
	db 38, IRON_HEAD
	db 45, SACRED_SWORD
	db 0 ; no more level-up moves

DoubladeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, AEGISLASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWORDS_DANCE
	db 5, FURY_CUTTER
	db 10, SPITE
	db 13, PURSUIT
	db 18, SHADOW_SNEAK
	db 24, SLASH
	db 29, NIGHT_SLASH
	db 35, SHADOW_CLAW
	db 40, IRON_HEAD
	db 48, SACRED_SWORD
	db 0 ; no more level-up moves

AegislashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWORDS_DANCE
	db 5, FURY_CUTTER
	db 10, SPITE
	db 13, PURSUIT
	db 18, SHADOW_SNEAK
	db 24, SLASH
	db 29, NIGHT_SLASH
	db 35, SHADOW_CLAW
	db 40, IRON_HEAD
	db 48, SACRED_SWORD
	db 0 ; no more level-up moves

SpritzeeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, AROMATISSE
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, FAIRY_WIND
	db 6, SWEET_KISS
	db 10, METRONOME
	db 13, PECK
	db 18, CONFUSION
	db 21, DRAININGKISS
	db 26, ATTRACT
	db 31, MOONBLAST
	db 35, CHARM
	db 38, FLAIL
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

AromatisseEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, FAIRY_WIND
	db 6, SWEET_KISS
	db 10, METRONOME
	db 13, PECK
	db 18, CONFUSION
	db 21, DRAININGKISS
	db 26, ATTRACT
	db 31, MOONBLAST
	db 35, CHARM
	db 38, FLAIL
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

SwirlixEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SLURPUFF
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, TACKLE
	db 6, FAIRY_WIND
	db 10, METRONOME
	db 13, LICK
	db 18, COTTON_SPORE
	db 21, DRAININGKISS
	db 26, LIGHT_SCREEN
	db 31, MOONBLAST
	db 35, SAFEGUARD
	db 38, MOONLIGHT
	db 44, REVERSAL
	db 0 ; no more level-up moves

SlurpuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, TACKLE
	db 6, FAIRY_WIND
	db 10, METRONOME
	db 13, LICK
	db 18, COTTON_SPORE
	db 21, DRAININGKISS
	db 26, LIGHT_SCREEN
	db 31, MOONBLAST
	db 35, SAFEGUARD
	db 38, MOONLIGHT
	db 44, REVERSAL
	db 0 ; no more level-up moves

InkayEvosAttacks:
	db EVOLVE_LEVEL, 30, MALAMAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PECK
	db 4, REFLECT
	db 8, SWAGGER
	db 13, PSYWAVE
	db 18, HYPNOSIS
	db 21, PSYBEAM
	db 26, FAINT_ATTACK
	db 30, LIGHT_SCREEN
	db 33, SLASH
	db 38, NIGHT_SLASH
	db 42, PSYCHIC_M
	db 47, NASTY_PLOT
	db 0 ; no more level-up moves

MalamarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PECK
	db 4, REFLECT
	db 8, SWAGGER
	db 13, PSYWAVE
	db 18, HYPNOSIS
	db 21, PSYBEAM
	db 26, FAINT_ATTACK
	db 30, LIGHT_SCREEN
	db 35, SLASH
	db 40, NIGHT_SLASH
	db 46, PSYCHIC_M
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves

BinacleEvosAttacks:
	db EVOLVE_LEVEL, 39, BARBARACLE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 4, WATER_GUN
	db 7, WITHDRAW
	db 10, FURY_SWIPES
	db 13, SLASH
	db 18, ROCK_THROW
	db 23, WATER_PULSE
	db 28, ANCIENTPOWER
	db 33, FURY_CUTTER
	db 39, ROCK_SLIDE
	db 41, NIGHT_SLASH
	db 45, CROSS_CHOP
	db 0 ; no more level-up moves

BarbaracleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 4, WATER_GUN
	db 7, WITHDRAW
	db 10, FURY_SWIPES
	db 13, SLASH
	db 18, ROCK_THROW
	db 23, WATER_PULSE
	db 28, ANCIENTPOWER
	db 33, FURY_CUTTER
	db 39, ROCK_SLIDE
	db 44, NIGHT_SLASH
	db 48, CROSS_CHOP
	db 53, STONE_EDGE
	db 60, SKULL_BASH
	db 0 ; no more level-up moves

SkrelpEvosAttacks:
	db EVOLVE_LEVEL, 40, DRAGALGE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 5, FAINT_ATTACK
	db 9, TAIL_WHIP
	db 12, BUBBLE
	db 17, ACID
	db 22, WATER_PULSE
	db 26, TWISTER
	db 30, DOUBLE_TEAM
	db 34, TOXIC
	db 38, SLUDGE_BOMB
	db 41, DRAGONBREATH
	db 44, HYDRO_PUMP
	db 48, OUTRAGE
	db 0 ; no more level-up moves

DragalgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 5, FAINT_ATTACK
	db 9, TAIL_WHIP
	db 12, BUBBLE
	db 17, ACID
	db 22, WATER_PULSE
	db 26, TWISTER
	db 30, DOUBLE_TEAM
	db 34, TOXIC
	db 38, SLUDGE_BOMB
	db 43, DRAGONBREATH
	db 48, HYDRO_PUMP
	db 53, OUTRAGE
	db 0 ; no more level-up moves

ClauncherEvosAttacks:
	db EVOLVE_LEVEL, 37, CLAWITZER
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 9, VICEGRIP
	db 12, BUBBLE
	db 16, FLAIL
	db 20, BUBBLEBEAM
	db 23, SWORDS_DANCE
	db 27, WATER_PULSE
	db 30, EXTREMESPEED
	db 34, SUBMISSION
	db 37, DRAGONBREATH
	db 40, ANCIENTPOWER
	db 43, AQUA_JET
	db 45, HYDRO_PUMP
	db 48, GUILLOTINE
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 9, VICEGRIP
	db 12, BUBBLE
	db 16, FLAIL
	db 20, BUBBLEBEAM
	db 23, SWORDS_DANCE
	db 27, WATER_PULSE
	db 30, EXTREMESPEED
	db 34, SUBMISSION
	db 37, DRAGONBREATH
	db 42, ANCIENTPOWER
	db 45, AQUA_JET
	db 48, HYDRO_PUMP
	db 53, GUILLOTINE
	db 0 ; no more level-up moves

HelioptileEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, HELIOLISK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 6, THUNDERSHOCK
	db 10, MUD_SLAP
	db 14, QUICK_ATTACK
	db 17, RAZOR_WIND
	db 25, PARAB_CHARGE
	db 31, THUNDER_WAVE
	db 35, MUD_SHOT
	db 40, THUNDERBOLT
	db 45, HYPER_BEAM
	db 50, ZAP_CANNON
	db 0 ; no more level-up moves

HelioliskEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 6, THUNDERSHOCK
	db 10, MUD_SLAP
	db 0 ; no more level-up moves

TyruntEvosAttacks:
	db EVOLVE_LEVEL, 39, TYRANTRUM
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 6, ROAR
	db 13, STOMP
	db 17, BIDE
	db 21, BITE
	db 26, ANCIENTPOWER
	db 30, CHARM
	db 34, CRUNCH
	db 37, DRAGON_CLAW
	db 40, ROCK_SLIDE
	db 44, EARTHQUAKE
	db 49, HORN_DRILL
	db 0 ; no more level-up moves

TyrantrumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 6, ROAR
	db 13, STOMP
	db 17, BIDE
	db 21, BITE
	db 26, ANCIENTPOWER
	db 30, CHARM
	db 34, CRUNCH
	db 37, DRAGON_CLAW
	db 42, ROCK_SLIDE
	db 47, EARTHQUAKE
	db 53, HORN_DRILL
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	db EVOLVE_LEVEL, 39, AURORUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 5, THUNDER_WAVE
	db 10, ROCK_THROW
	db 14, TAKE_DOWN
	db 18, MIST
	db 22, AURORA_BEAM
	db 26, ANCIENTPOWER
	db 30, ENCORE
	db 34, LIGHT_SCREEN
	db 37, ICE_BEAM
	db 40, ROCK_SLIDE
	db 44, HYPER_BEAM
	db 49, BLIZZARD
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 5, THUNDER_WAVE
	db 10, ROCK_THROW
	db 14, TAKE_DOWN
	db 18, MIST
	db 22, AURORA_BEAM
	db 26, ANCIENTPOWER
	db 30, ENCORE
	db 34, LIGHT_SCREEN
	db 37, ICE_BEAM
	db 42, ROCK_SLIDE
	db 47, HYPER_BEAM
	db 53, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAININGKISS
	db 24, CONFUSION
	db 28, SWEET_KISS
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, REFLECT
	db 45, PSYCH_UP
	db 50, MOONLIGHT
	db 0 ; no more level-up moves

HawluchaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DETECT
	db 1, TACKLE
	db 4, KARATE_CHOP
	db 12, WING_ATTACK
	db 17, ENCORE
	db 23, SWIFT
	db 28, FLYING_PRESS
	db 34, HI_JUMP_KICK
	db 39, SKY_ATTACK
	db 44, SWORDS_DANCE
	db 50, MIND_READER
	db 0 ; no more level-up moves

DedenneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 14, CHARM
	db 17, PARAB_CHARGE
	db 23, THUNDER_WAVE
	db 28, REST
	db 30, SNORE
	db 31, SLEEP_TALK
	db 35, THUNDERBOLT
	db 40, MOONBLAST
	db 45, THUNDER
	db 0 ; no more level-up moves

CarbinkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 5, ROCK_THROW
	db 8, SHARPEN
	db 13, FAIRY_WIND
	db 18, REFLECT
	db 23, ANCIENTPOWER
	db 28, FLAIL
	db 33, DAZZLINGLEAM
	db 37, LIGHT_SCREEN
	db 42, STONE_EDGE
	db 48, MOONBLAST
	db 53, SAFEGUARD
	db 0 ; no more level-up moves

GoomyEvosAttacks:
	db EVOLVE_LEVEL, 35, SLIGGOO
	db 0 ; no more evolutions
	db 1, TWISTER
	db 5, ABSORB
	db 10, PROTECT
	db 13, BIDE
	db 16, BUBBLE
	db 20, DRAGONBREATH
	db 25, RAIN_DANCE
	db 28, FLAIL
	db 32, BODY_SLAM
	db 36, SLUDGE
	db 41, HYDRO_PUMP
	db 43, DRAGON_CLAW
	db 48, GIGA_DRAIN
	db 0 ; no more level-up moves

SliggooEvosAttacks:
	db EVOLVE_LEVEL, 50, GOODRA
	db 0 ; no more evolutions
	db 1, TWISTER
	db 5, ABSORB
	db 10, PROTECT
	db 13, BIDE
	db 16, BUBBLE
	db 20, DRAGONBREATH
	db 25, RAIN_DANCE
	db 28, FLAIL
	db 32, BODY_SLAM
	db 38, SLUDGE
	db 43, HYDRO_PUMP
	db 47, DRAGON_CLAW
	db 50, GIGA_DRAIN
	db 0 ; no more level-up moves

GoodraEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWISTER
	db 5, ABSORB
	db 10, PROTECT
	db 13, BIDE
	db 16, BUBBLE
	db 20, DRAGONBREATH
	db 25, RAIN_DANCE
	db 28, FLAIL
	db 32, BODY_SLAM
	db 38, SLUDGE
	db 43, HYDRO_PUMP
	db 47, DRAGON_CLAW
	db 50, GIGA_DRAIN
	db 55, OUTRAGE
	db 0 ; no more level-up moves

KlefkiEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FAIRY_WIND
	db 10, SHADOW_SNEAK
	db 15, SPIKES
	db 18, DRAININGKISS
	db 23, LOCK_ON
	db 27, FAINT_ATTACK
	db 33, IRON_HEAD
	db 38, DAZZLINGLEAM
	db 43, MIRROR_COAT
	db 50, MOONBLAST
	db 0 ; no more level-up moves

PhantumpEvosAttacks:
	db EVOLVE_LEVEL, 35, TREVENANT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 8, GROWTH
	db 12, SHADOW_SNEAK
	db 15, SPITE
	db 19, RAZOR_LEAF
	db 23, LEECH_SEED
	db 28, CURSE
	db 35, SHADOW_CLAW
	db 38, DESTINY_BOND
	db 43, WOOD_HAMMER
	db 0 ; no more level-up moves

TrevenantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 8, GROWTH
	db 12, SHADOW_SNEAK
	db 15, SPITE
	db 19, RAZOR_LEAF
	db 23, LEECH_SEED
	db 28, CURSE
	db 35, SHADOW_CLAW
	db 40, DESTINY_BOND
	db 46, WOOD_HAMMER
	db 0 ; no more level-up moves

PumpkabooEvosAttacks:
	db EVOLVE_LEVEL, 35, GOURGEIST
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, ABSORB
	db 4, SCARY_FACE
	db 10, SPITE
	db 15, RAZOR_LEAF
	db 19, LEECH_SEED
	db 23, SHADOW_SNEAK
	db 28, CURSE
	db 35, SHADOW_BALL
	db 38, PAIN_SPLIT
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

GourgeistEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, ABSORB
	db 4, SCARY_FACE
	db 10, SPITE
	db 15, RAZOR_LEAF
	db 19, LEECH_SEED
	db 23, SHADOW_SNEAK
	db 28, CURSE
	db 35, SHADOW_BALL
	db 40, PAIN_SPLIT
	db 46, GIGA_DRAIN
	db 50, EXPLOSION
	db 0 ; no more level-up moves

BergmiteEvosAttacks:
	db EVOLVE_LEVEL, 37, AVALUGG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, BITE
	db 10, POWDER_SNOW
	db 15, TAKE_DOWN
	db 18, SHARPEN
	db 22, NASTY_PLOT
	db 28, ICY_WIND
	db 33, RAPID_SPIN
	db 37, BODY_SLAM
	db 40, ICE_BEAM
	db 43, RECOVER
	db 47, BLIZZARD
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

AvaluggEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, BITE
	db 10, POWDER_SNOW
	db 15, TAKE_DOWN
	db 18, SHARPEN
	db 22, NASTY_PLOT
	db 28, ICY_WIND
	db 33, RAPID_SPIN
	db 37, BODY_SLAM
	db 42, ICE_BEAM
	db 46, RECOVER
	db 51, BLIZZARD
	db 56, DOUBLE_EDGE
	db 60, SKULL_BASH
	db 65, CRUNCH
	db 0 ; no more level-up moves

NoibatEvosAttacks:
	db EVOLVE_LEVEL, 40, NOIVERN
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, LEECH_LIFE
	db 11, GUST
	db 15, TWISTER
	db 19, BITE
	db 23, WING_ATTACK
	db 27, AGILITY
	db 30, RAZOR_WIND
	db 34, WHIRLWIND
	db 37, SUPER_FANG
	db 40, DRAGON_CLAW
	db 43, AIR_SLASH
	db 48, HURRICANE
	db 0 ; no more level-up moves

NoivernEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, LEECH_LIFE
	db 11, GUST
	db 15, TWISTER
	db 19, BITE
	db 23, WING_ATTACK
	db 27, AGILITY
	db 30, RAZOR_WIND
	db 34, WHIRLWIND
	db 37, SUPER_FANG
	db 40, DRAGON_CLAW
	db 45, AIR_SLASH
	db 50, HURRICANE
	db 56, BOOMBURST
	db 0 ; no more level-up moves

XerneasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 5, LIGHT_SCREEN
	db 10, AURORA_BEAM
	db 35, MOONBLAST
	db 44, MEGAHORN
	db 51, NIGHT_SLASH
	db 62, PSYCH_UP
	db 68, WOOD_HAMMER
	db 72, HYPER_BEAM
	db 80, OUTRAGE
	db 0 ; no more level-up moves

YveltalEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_WIND
	db 5, DOUBLE_TEAM
	db 10, AIR_SLASH
	db 35, DISABLE
	db 44, NIGHT_SLASH
	db 62, PSYCHIC_M
	db 68, DRAGON_CLAW
	db 72, HURRICANE
	db 80, HYPER_BEAM
	;db 80, SURF
	;db 80, FLY
	;db 80, WATERFALL
	db 0 ; no more level-up moves

ZygardeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 10, BIND
	db 18, DIG
	db 35, SANDSTORM
	db 44, HAZE
	db 48, EARTHQUAKE
	db 51, CRUNCH
	db 55, SAFEGUARD
	db 58, DRAGON_CLAW
	db 62, GLARE
	db 66, OUTRAGE
	db 70, FISSURE
	db 0 ; no more level-up moves

DiancieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 5, ROCK_THROW
	db 8, SHARPEN
	db 13, FAIRY_WIND
	db 18, REFLECT
	db 23, ANCIENTPOWER
	db 28, FLAIL
	db 33, DAZZLINGLEAM
	db 37, LIGHT_SCREEN
	db 42, STONE_EDGE
	db 48, MOONBLAST
	db 53, SAFEGUARD
	db 0 ; no more level-up moves

HoopaEvosAttacks:
	db EVOLVE_LEVEL, 55, HOOPA_U
	db 0 ; no more evolutions
	db 1, DESTINY_BOND
	db 10, SHADOW_SNEAK
	db 15, LIGHT_SCREEN
	db 23, PSYBEAM
	db 35, SHADOW_CLAW
	db 39, NIGHT_SLASH
	db 43, PSYCHIC_M
	db 45, HYPNOSIS
	db 48, NIGHTMARE
	db 53, SHADOW_BALL
	db 58, CRUNCH
	db 63, DREAM_EATER
	db 67, NASTY_PLOT
	db 0 ; no more level-up moves

HoopaUEvosAttacks:
	db 0 ; no more evolutions
	db 1, DESTINY_BOND
	db 10, SHADOW_SNEAK
	db 15, LIGHT_SCREEN
	db 23, PSYBEAM
	db 35, SHADOW_CLAW
	db 39, NIGHT_SLASH
	db 43, PSYCHIC_M
	db 45, HYPNOSIS
	db 48, NIGHTMARE
	db 53, SHADOW_BALL
	db 58, CRUNCH
	db 63, DREAM_EATER
	db 67, NASTY_PLOT
	db 0 ; no more level-up moves

VolcanionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 11, HAZE
	db 15, FLAME_WHEEL
	db 21, WATER_PULSE
	db 28, STOMP
	db 43, MIST
	db 46, FLAMETHROWER
	db 50, HYDRO_PUMP
	db 54, AQUA_JET
	db 58, FLARE_BLITZ
	db 62, EXPLOSION
	db 0 ; no more level-up moves

