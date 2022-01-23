INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.


INCLUDE "data/pokemon/egg_move_pointers.asm"


EggMoves::

SnivyEggMoves:
	db GLARE
	db MEAN_LOOK
	db MIRROR_COAT
	db PURSUIT
	db SWEET_SCENT
	db TWISTER
	db -1 ; end

TepigEggMoves:
	db BODY_SLAM
	db CURSE
	db MAGNITUDE
	db SLEEP_TALK
	db THRASH
	db -1 ; end

OshawottEggMoves:
	db AIR_SLASH
	db DETECT
	db NIGHT_SLASH
	db SACRED_SWORD
	db SCREECH
	db -1 ; end

PatratEggMoves:
	db FLAIL
	db FORESIGHT
	db PURSUIT
	db SCREECH
	db -1 ; end

LillipupEggMoves:
	db CHARM
	db ENDURE
	db LICK
	db MUD_SLAP
	db PURSUIT
	db SAND_ATTACK
	db -1 ; end

PurrloinEggMoves:
	db CHARM
	db ENCORE
	db FAINT_ATTACK
	db -1 ; end

PansageEggMoves:
	db LOW_KICK
	db NASTY_PLOT
	db -1 ; end

PansearEggMoves:
	db FIRE_PUNCH
	db FIRE_SPIN
	db FLARE_BLITZ
	db LOW_KICK
	db NASTY_PLOT
	db SLEEP_TALK
	db -1 ; end

PanpourEggMoves:
	db HYDRO_PUMP
	db LOW_KICK
	db NASTY_PLOT
	db -1 ; end

MunnaEggMoves:
	db BATON_PASS
	db CURSE
	db SLEEP_TALK
	db SWIFT
	db -1 ; end

PidoveEggMoves:
	db HYPNOSIS
	db NIGHT_SLASH
	db -1 ; end

BlitzleEggMoves:
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db ENDURE
	db RAGE
	db SAND_ATTACK
	db SCREECH
	db TAKE_DOWN
	db -1 ; end

RoggenrolaEggMoves:
	db CURSE
	db LOCK_ON
	db MAGNITUDE
	db TAKE_DOWN
	db -1 ; end

WoobatEggMoves:
	db CHARM
	db SUPERSONIC
	db -1 ; end

DrilburEggMoves:
	db RAPID_SPIN
	db SKULL_BASH
	db SUBMISSION
	db -1 ; end

AudinoEggMoves:
	db AMNESIA
	db DRAININGKISS
	db ENCORE
	db HEAL_BELL
	db SLEEP_TALK
	db SWEET_KISS
	db -1 ; end

TimburrEggMoves:
	db COMET_PUNCH
	db COUNTER
	db DETECT
	db ENDURE
	db FORESIGHT
	db MACH_PUNCH
	db REVERSAL
	db -1 ; end

TympoleEggMoves:
	db MIST
	db SLEEP_TALK
	db SNORE
	db WATER_PULSE
	db -1 ; end

SewaddleEggMoves:
	db AGILITY
	db AIR_SLASH
	db BATON_PASS
	db MIND_READER
	db RAZOR_WIND
	db SCREECH
	db -1 ; end

VenipedeEggMoves:
	db PIN_MISSILE
	db SPIKES
	db TAKE_DOWN
	db TWINEEDLE
	db -1 ; end

CottoneeEggMoves:
	db ENCORE
	db -1 ; end

PetililEggMoves:
	db BIDE
	db CHARM
	db ENCORE
	db ENDURE
	db SWEET_SCENT
	db -1 ; end

BasculinEggMoves:
	db AGILITY
	db BUBBLEBEAM
	db MUD_SHOT
	db RAGE
	db SWIFT
	db WHIRLPOOL
	db -1 ; end

SandileEggMoves:
	db COUNTER
	db DOUBLE_EDGE
	db FOCUS_ENERGY
	db MEAN_LOOK
	db PURSUIT
	db -1 ; end

DarumakaEggMoves:
	db ENCORE
	db ENDURE
	db FLAME_WHEEL
	db FOCUS_ENERGY
	db SLEEP_TALK
	db TAKE_DOWN
	db -1 ; end

MaractusEggMoves:
	db LEECH_SEED
	db SPIKES
	db WOOD_HAMMER
	db -1 ; end

DwebbleEggMoves:
	db COUNTER
	db CURSE
	db ENDURE
	db NIGHT_SLASH
	db SPIKES
	db -1 ; end

ScraggyEggMoves:
	db AMNESIA
	db COUNTER
	db DETECT
	db FAINT_ATTACK
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db -1 ; end

SigilyphEggMoves:
	db ANCIENTPOWER
	db FUTURE_SIGHT
	db -1 ; end

YamaskEggMoves:
	db DISABLE
	db ENDURE
	db NASTY_PLOT
	db NIGHTMARE
	db -1 ; end

TirtougaEggMoves:
	db BIDE
	db BODY_SLAM
	db FLAIL
	db ROCK_THROW
	db SLAM
	db WATER_PULSE
	db WHIRLPOOL
	db -1 ; end

ArchenEggMoves:
	db BITE
	db -1 ; end

TrubbishEggMoves:
	db CURSE
	db HAZE
	db ROLLOUT
	db SAND_ATTACK
	db SELFDESTRUCT
	db SPIKES
	db -1 ; end

ZoruaEggMoves:
	db COUNTER
	db DETECT
	db -1 ; end

MinccinoEggMoves:
	db ENDURE
	db FLAIL
	db MUD_SLAP
	db SLEEP_TALK
	db TAIL_WHIP
	db -1 ; end

GothitaEggMoves:
	db MEAN_LOOK
	db MIRROR_COAT
	db -1 ; end

SolosisEggMoves:
	db ACID_ARMOR
	db CONFUSE_RAY
	db NIGHT_SHADE
	db -1 ; end

DucklettEggMoves:
	db AQUA_JET
	db GUST
	db MIRROR_MOVE
	db -1 ; end

VanilliteEggMoves:
	db POWDER_SNOW
	db WATER_PULSE
	db -1 ; end

DeerlingEggMoves:
	db AGILITY
	db BATON_PASS
	db HEADBUTT
	db SLEEP_TALK
	db SYNTHESIS
	db -1 ; end

EmolgaEggMoves:
	db AIR_SLASH
	db BATON_PASS
	db CHARM
	db -1 ; end

KarrablastEggMoves:
	db BUG_BITE
	db COUNTER
	db FAINT_ATTACK
	db HORN_ATTACK
	db MEGAHORN
	db PURSUIT
	db SCREECH
	db -1 ; end

FoongusEggMoves:
	db BODY_SLAM
	db DEFENSE_CURL
	db ENDURE
	db GROWTH
	db POISONPOWDER
	db ROLLOUT
	db STUN_SPORE
	db -1 ; end

FrillishEggMoves:
	db ACID_ARMOR
	db CONFUSE_RAY
	db MIST
	db PAIN_SPLIT
	db RECOVER
	db -1 ; end

AlomomolaEggMoves:
	db ENDURE
	db MIRROR_COAT
	db MIST
	db PAIN_SPLIT
	db -1 ; end

JoltikEggMoves:
	db DISABLE
	db FAINT_ATTACK
	db PIN_MISSILE
	db POISON_STING
	db PURSUIT
	db -1 ; end

FerroseedEggMoves:
	db LEECH_SEED
	db SPIKES
	db -1 ; end

ElgyemEggMoves:
	db DISABLE
	db NASTY_PLOT
	db TELEPORT
	db -1 ; end

LitwickEggMoves:
	db ACID
	db ACID_ARMOR
	db ENDURE
	db HAZE
	db -1 ; end

AxewEggMoves:
	db COUNTER
	db ENDURE
	db FOCUS_ENERGY
	db HARDEN
	db NIGHT_SLASH
	db RAZOR_WIND
	db REVERSAL
	db -1 ; end

CubchooEggMoves:
	db ENCORE
	db ICE_PUNCH
	db NIGHT_SLASH
	db SLEEP_TALK
	db -1 ; end

ShelmetEggMoves:
	db BATON_PASS
	db DOUBLE_EDGE
	db ENCORE
	db ENDURE
	db MIND_READER
	db MUD_SLAP
	db PURSUIT
	db SPIKES
	db -1 ; end

StunfiskEggMoves:
	db CURSE
	db PAIN_SPLIT
	db SLEEP_TALK
	db SPARK
	db SPITE
	db -1 ; end

MienfooEggMoves:
	db BATON_PASS
	db ENDURE
	db LOW_KICK
	db VITAL_THROW
	db -1 ; end

DruddigonEggMoves:
	db FAINT_ATTACK
	db GLARE
	db METAL_CLAW
	db PURSUIT
	db -1 ; end

PawniardEggMoves:
	db HEADBUTT
	db MEAN_LOOK
	db PURSUIT
	db -1 ; end

BouffalantEggMoves:
	db AMNESIA
	db HEADBUTT
	db IRON_HEAD
	db MUD_SHOT
	db SKULL_BASH
	db STOMP
	db -1 ; end

VullabyEggMoves:
	db MEAN_LOOK
	db SCARY_FACE
	db -1 ; end

HeatmorEggMoves:
	db BODY_SLAM
	db CURSE
	db FAINT_ATTACK
	db NIGHT_SLASH
	db PURSUIT
	db SLEEP_TALK
	db WRAP
	db -1 ; end

DurantEggMoves:
	db BATON_PASS
	db ENDURE
	db FAINT_ATTACK
	db SCREECH
	db -1 ; end

DeinoEggMoves:
	db SCREECH
	db -1 ; end

LarvestaEggMoves:
	db ENDURE
	db FORESIGHT
	db HARDEN
	db STRING_SHOT
	db -1 ; end

ChespinEggMoves:
	db BELLY_DRUM
	db CURSE
	db DEFENSE_CURL
	db ROLLOUT
	db SPIKES
	db SYNTHESIS
	db -1 ; end

FennekinEggMoves:
	db HYPNOSIS
	db -1 ; end

FroakieEggMoves:
	db MIND_READER
	db -1 ; end

BunnelbyEggMoves:
	db DEFENSE_CURL
	db ROLLOUT
	db SPIKES
	db -1 ; end

FletchlingEggMoves:
	db WING_ATTACK
	db -1 ; end

ScatterbugEggMoves:
	db POISONPOWDER
	db STUN_SPORE
	db -1 ; end

LitleoEggMoves:
	db FIRE_SPIN
	db FLARE_BLITZ
	db -1 ; end

SkiddoEggMoves:
	db DEFENSE_CURL
	db ROLLOUT
	db -1 ; end

PanchamEggMoves:
	db STORM_THROW
	db -1 ; end

FurfrouEggMoves:
	db MIMIC
	db -1 ; end

HonedgeEggMoves:
	db DESTINY_BOND
	db SHADOW_SNEAK
	db -1 ; end

SpritzeeEggMoves:
	db DISABLE
	db NASTY_PLOT
	db -1 ; end

SwirlixEggMoves:
	db BELLY_DRUM
	db -1 ; end

InkayEggMoves:
	db DESTINY_BOND
	db -1 ; end

SkrelpEggMoves:
	db ACID_ARMOR
	db HAZE
	db -1 ; end

ClauncherEggMoves:
	db AQUA_JET
	db ENDURE
	db -1 ; end

HelioptileEggMoves:
	db AGILITY
	db GLARE
	db -1 ; end

TyruntEggMoves:
	db CURSE
	db -1 ; end

AmauraEggMoves:
	db HAZE
	db MIRROR_COAT
	db -1 ; end

SylveonEggMoves:
	db CHARM
	db CURSE
	db DETECT
	db ENDURE
	db FLAIL
	db -1 ; end

HawluchaEggMoves:
	db AGILITY
	db BATON_PASS
	db -1 ; end

GoomyEggMoves:
	db ACID_ARMOR
	db COUNTER
	db CURSE
	db ENDURE
	db -1 ; end

KlefkiEggMoves:
	db LOCK_ON
	db THIEF
	db -1 ; end

PumpkabooEggMoves:
	db CURSE
	db DESTINY_BOND
	db DISABLE
	db -1 ; end

BergmiteEggMoves:
	db MIRROR_COAT
	db MIST
	db RECOVER
	db -1 ; end

NoibatEggMoves:
	db OUTRAGE
	db -1 ; end

NoEggMoves:
	db -1 ; end
