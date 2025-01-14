INCLUDE "constants.asm"


; PokemonPicPointers and UnownPicPointers are assumed to start at the same
; address, but in different banks. This is enforced in pokecrystal.link.

SECTION "Pic Pointers", ROMX

INCLUDE "data/pokemon/pic_pointers.asm"


SECTION "Unown Pic Pointers", ROMX

;INCLUDE "data/pokemon/unown_pic_pointers.asm"


SECTION "Trainer Pic Pointers", ROMX

INCLUDE "data/trainers/pic_pointers.asm"


SECTION "Pics 1", ROMX

SnivyFrontpic:      INCBIN "gfx/pokemon/snivy/front.animated.2bpp.lz"
ServineFrontpic:    INCBIN "gfx/pokemon/servine/front.animated.2bpp.lz"
SerperiorFrontpic:  INCBIN "gfx/pokemon/serperior/front.animated.2bpp.lz"
TepigFrontpic:      INCBIN "gfx/pokemon/tepig/front.animated.2bpp.lz"
PigniteFrontpic:    INCBIN "gfx/pokemon/pignite/front.animated.2bpp.lz"
EmboarFrontpic:     INCBIN "gfx/pokemon/emboar/front.animated.2bpp.lz"
OshawottFrontpic:   INCBIN "gfx/pokemon/oshawott/front.animated.2bpp.lz"
DewottFrontpic:     INCBIN "gfx/pokemon/dewott/front.animated.2bpp.lz"
SamurottFrontpic:   INCBIN "gfx/pokemon/samurott/front.animated.2bpp.lz"
PatratFrontpic:     INCBIN "gfx/pokemon/patrat/front.animated.2bpp.lz"
WatchogFrontpic:    INCBIN "gfx/pokemon/watchog/front.animated.2bpp.lz"
LillipupFrontpic:   INCBIN "gfx/pokemon/lillipup/front.animated.2bpp.lz"
HerdierFrontpic:    INCBIN "gfx/pokemon/herdier/front.animated.2bpp.lz"
; 123ffa


SECTION "Pics 2", ROMX

StoutlandFrontpic:  INCBIN "gfx/pokemon/stoutland/front.animated.2bpp.lz"
PurrloinFrontpic:   INCBIN "gfx/pokemon/purrloin/front.animated.2bpp.lz"
LiepardFrontpic:    INCBIN "gfx/pokemon/liepard/front.animated.2bpp.lz"
PansageFrontpic:    INCBIN "gfx/pokemon/pansage/front.animated.2bpp.lz"
SimisageFrontpic:   INCBIN "gfx/pokemon/simisage/front.animated.2bpp.lz"
PansearFrontpic:    INCBIN "gfx/pokemon/pansear/front.animated.2bpp.lz"
SimisearFrontpic:   INCBIN "gfx/pokemon/simisear/front.animated.2bpp.lz"
PanpourFrontpic:    INCBIN "gfx/pokemon/panpour/front.animated.2bpp.lz"
SimipourFrontpic:   INCBIN "gfx/pokemon/simipour/front.animated.2bpp.lz"
MunnaFrontpic:      INCBIN "gfx/pokemon/munna/front.animated.2bpp.lz"
MusharnaFrontpic:   INCBIN "gfx/pokemon/musharna/front.animated.2bpp.lz"
PidoveFrontpic:     INCBIN "gfx/pokemon/pidove/front.animated.2bpp.lz"
TranquillFrontpic:  INCBIN "gfx/pokemon/tranquill/front.animated.2bpp.lz"
UnfezantFrontpic:   INCBIN "gfx/pokemon/unfezant/front.animated.2bpp.lz"
BlitzleFrontpic:    INCBIN "gfx/pokemon/blitzle/front.animated.2bpp.lz"
ZebstrikaFrontpic:  INCBIN "gfx/pokemon/zebstrika/front.animated.2bpp.lz"
; 127ffe


SECTION "Pics 3", ROMX

RoggenrolaFrontpic: INCBIN "gfx/pokemon/roggenrola/front.animated.2bpp.lz"
BoldoreFrontpic:    INCBIN "gfx/pokemon/boldore/front.animated.2bpp.lz"
GigalithFrontpic:   INCBIN "gfx/pokemon/gigalith/front.animated.2bpp.lz"
WoobatFrontpic:     INCBIN "gfx/pokemon/woobat/front.animated.2bpp.lz"
SwoobatFrontpic:    INCBIN "gfx/pokemon/swoobat/front.animated.2bpp.lz"
DrilburFrontpic:    INCBIN "gfx/pokemon/drilbur/front.animated.2bpp.lz"
ExcadrillFrontpic:  INCBIN "gfx/pokemon/excadrill/front.animated.2bpp.lz"
AudinoFrontpic:     INCBIN "gfx/pokemon/audino/front.animated.2bpp.lz"
TimburrFrontpic:    INCBIN "gfx/pokemon/timburr/front.animated.2bpp.lz"
GurdurrFrontpic:    INCBIN "gfx/pokemon/gurdurr/front.animated.2bpp.lz"
ConkeldurrFrontpic: INCBIN "gfx/pokemon/conkeldurr/front.animated.2bpp.lz"
TympoleFrontpic:    INCBIN "gfx/pokemon/tympole/front.animated.2bpp.lz"
PalpitoadFrontpic:  INCBIN "gfx/pokemon/palpitoad/front.animated.2bpp.lz"
SeismitoadFrontpic: INCBIN "gfx/pokemon/seismitoad/front.animated.2bpp.lz"
ThrohFrontpic:      INCBIN "gfx/pokemon/throh/front.animated.2bpp.lz"
SawkFrontpic:       INCBIN "gfx/pokemon/sawk/front.animated.2bpp.lz"
SewaddleFrontpic:   INCBIN "gfx/pokemon/sewaddle/front.animated.2bpp.lz"
SwadloonFrontpic:   INCBIN "gfx/pokemon/swadloon/front.animated.2bpp.lz"
; 12bffe


SECTION "Pics 4", ROMX

LeavannyFrontpic:   INCBIN "gfx/pokemon/leavanny/front.animated.2bpp.lz"
VenipedeFrontpic:   INCBIN "gfx/pokemon/venipede/front.animated.2bpp.lz"
WhirlipedeFrontpic: INCBIN "gfx/pokemon/whirlipede/front.animated.2bpp.lz"
ScolipedeFrontpic:  INCBIN "gfx/pokemon/scolipede/front.animated.2bpp.lz"
CottoneeFrontpic:   INCBIN "gfx/pokemon/cottonee/front.animated.2bpp.lz"
WhimsicottFrontpic: INCBIN "gfx/pokemon/whimsicott/front.animated.2bpp.lz"
PetililFrontpic:    INCBIN "gfx/pokemon/petilil/front.animated.2bpp.lz"
LilligantFrontpic:  INCBIN "gfx/pokemon/lilligant/front.animated.2bpp.lz"
BasculinFrontpic:   INCBIN "gfx/pokemon/basculin/front.animated.2bpp.lz"
SandileFrontpic:    INCBIN "gfx/pokemon/sandile/front.animated.2bpp.lz"
KrokorokFrontpic:   INCBIN "gfx/pokemon/krokorok/front.animated.2bpp.lz"
KrookodileFrontpic: INCBIN "gfx/pokemon/krookodile/front.animated.2bpp.lz"
DarumakaFrontpic:   INCBIN "gfx/pokemon/darumaka/front.animated.2bpp.lz"
DarmanitanFrontpic: INCBIN "gfx/pokemon/darmanitan/front.animated.2bpp.lz"
MaractusFrontpic:   INCBIN "gfx/pokemon/maractus/front.animated.2bpp.lz"
DwebbleFrontpic:    INCBIN "gfx/pokemon/dwebble/front.animated.2bpp.lz"
CrustleFrontpic:    INCBIN "gfx/pokemon/crustle/front.animated.2bpp.lz"
ScraggyFrontpic:    INCBIN "gfx/pokemon/scraggy/front.animated.2bpp.lz"
ScraftyFrontpic:    INCBIN "gfx/pokemon/scrafty/front.animated.2bpp.lz"
SigilyphFrontpic:   INCBIN "gfx/pokemon/sigilyph/front.animated.2bpp.lz"
; 130000


SECTION "Pics 5", ROMX

YamaskFrontpic:     INCBIN "gfx/pokemon/yamask/front.animated.2bpp.lz"
CofagrigusFrontpic: INCBIN "gfx/pokemon/cofagrigus/front.animated.2bpp.lz"
TirtougaFrontpic:   INCBIN "gfx/pokemon/tirtouga/front.animated.2bpp.lz"
CarracostaFrontpic: INCBIN "gfx/pokemon/carracosta/front.animated.2bpp.lz"
ArchenFrontpic:     INCBIN "gfx/pokemon/archen/front.animated.2bpp.lz"
ArcheopsFrontpic:   INCBIN "gfx/pokemon/archeops/front.animated.2bpp.lz"
TrubbishFrontpic:   INCBIN "gfx/pokemon/trubbish/front.animated.2bpp.lz"
GarbodorFrontpic:   INCBIN "gfx/pokemon/garbodor/front.animated.2bpp.lz"
ZoruaFrontpic:      INCBIN "gfx/pokemon/zorua/front.animated.2bpp.lz"
ZoroarkFrontpic:    INCBIN "gfx/pokemon/zoroark/front.animated.2bpp.lz"
MinccinoFrontpic:   INCBIN "gfx/pokemon/minccino/front.animated.2bpp.lz"
CinccinoFrontpic:   INCBIN "gfx/pokemon/cinccino/front.animated.2bpp.lz"
GothitaFrontpic:    INCBIN "gfx/pokemon/gothita/front.animated.2bpp.lz"
GothoritaFrontpic:  INCBIN "gfx/pokemon/gothorita/front.animated.2bpp.lz"
GothitelleFrontpic: INCBIN "gfx/pokemon/gothitelle/front.animated.2bpp.lz"
SolosisFrontpic:    INCBIN "gfx/pokemon/solosis/front.animated.2bpp.lz"
DuosionFrontpic:    INCBIN "gfx/pokemon/duosion/front.animated.2bpp.lz"
ReuniclusFrontpic:  INCBIN "gfx/pokemon/reuniclus/front.animated.2bpp.lz"
DucklettFrontpic:   INCBIN "gfx/pokemon/ducklett/front.animated.2bpp.lz"
SwannaFrontpic:     INCBIN "gfx/pokemon/swanna/front.animated.2bpp.lz"
VanilliteFrontpic:  INCBIN "gfx/pokemon/vanillite/front.animated.2bpp.lz"
; 133fff


SECTION "Pics 6", ROMX

VanillishFrontpic:  INCBIN "gfx/pokemon/vanillish/front.animated.2bpp.lz"
VanilluxeFrontpic:  INCBIN "gfx/pokemon/vanilluxe/front.animated.2bpp.lz"
DeerlingFrontpic:   INCBIN "gfx/pokemon/deerling/front.animated.2bpp.lz"
SawsbuckFrontpic:   INCBIN "gfx/pokemon/sawsbuck/front.animated.2bpp.lz"
EmolgaFrontpic:     INCBIN "gfx/pokemon/emolga/front.animated.2bpp.lz"
KarrablastFrontpic: INCBIN "gfx/pokemon/karrablast/front.animated.2bpp.lz"
EscavalierFrontpic: INCBIN "gfx/pokemon/escavalier/front.animated.2bpp.lz"
FoongusFrontpic:    INCBIN "gfx/pokemon/foongus/front.animated.2bpp.lz"
AmoongussFrontpic:  INCBIN "gfx/pokemon/amoonguss/front.animated.2bpp.lz"
FrillishFrontpic:   INCBIN "gfx/pokemon/frillish/front.animated.2bpp.lz"
JellicentFrontpic:  INCBIN "gfx/pokemon/jellicent/front.animated.2bpp.lz"
AlomomolaFrontpic:  INCBIN "gfx/pokemon/alomomola/front.animated.2bpp.lz"
JoltikFrontpic:     INCBIN "gfx/pokemon/joltik/front.animated.2bpp.lz"
GalvantulaFrontpic: INCBIN "gfx/pokemon/galvantula/front.animated.2bpp.lz"
FerroseedFrontpic:  INCBIN "gfx/pokemon/ferroseed/front.animated.2bpp.lz"
FerrothornFrontpic: INCBIN "gfx/pokemon/ferrothorn/front.animated.2bpp.lz"
KlinkFrontpic:      INCBIN "gfx/pokemon/klink/front.animated.2bpp.lz"
KlangFrontpic:      INCBIN "gfx/pokemon/klang/front.animated.2bpp.lz"
KlinklangFrontpic:  INCBIN "gfx/pokemon/klinklang/front.animated.2bpp.lz"
TynamoFrontpic:     INCBIN "gfx/pokemon/tynamo/front.animated.2bpp.lz"
EelektrikFrontpic:  INCBIN "gfx/pokemon/eelektrik/front.animated.2bpp.lz"
EelektrossFrontpic: INCBIN "gfx/pokemon/eelektross/front.animated.2bpp.lz"
ElgyemFrontpic:     INCBIN "gfx/pokemon/elgyem/front.animated.2bpp.lz"
; 137fff


SECTION "Pics 7", ROMX

BeheeyemFrontpic:   INCBIN "gfx/pokemon/beheeyem/front.animated.2bpp.lz"
LitwickFrontpic:    INCBIN "gfx/pokemon/litwick/front.animated.2bpp.lz"
LampentFrontpic:    INCBIN "gfx/pokemon/lampent/front.animated.2bpp.lz"
ChandelureFrontpic: INCBIN "gfx/pokemon/chandelure/front.animated.2bpp.lz"
AxewFrontpic:       INCBIN "gfx/pokemon/axew/front.animated.2bpp.lz"
FraxureFrontpic:    INCBIN "gfx/pokemon/fraxure/front.animated.2bpp.lz"
HaxorusFrontpic:    INCBIN "gfx/pokemon/haxorus/front.animated.2bpp.lz"
CubchooFrontpic:    INCBIN "gfx/pokemon/cubchoo/front.animated.2bpp.lz"
BearticFrontpic:    INCBIN "gfx/pokemon/beartic/front.animated.2bpp.lz"
CryogonalFrontpic:  INCBIN "gfx/pokemon/cryogonal/front.animated.2bpp.lz"
ShelmetFrontpic:    INCBIN "gfx/pokemon/shelmet/front.animated.2bpp.lz"
AccelgorFrontpic:   INCBIN "gfx/pokemon/accelgor/front.animated.2bpp.lz"
StunfiskFrontpic:   INCBIN "gfx/pokemon/stunfisk/front.animated.2bpp.lz"
MienfooFrontpic:    INCBIN "gfx/pokemon/mienfoo/front.animated.2bpp.lz"
MienshaoFrontpic:   INCBIN "gfx/pokemon/mienshao/front.animated.2bpp.lz"
DruddigonFrontpic:  INCBIN "gfx/pokemon/druddigon/front.animated.2bpp.lz"
GolettFrontpic:     INCBIN "gfx/pokemon/golett/front.animated.2bpp.lz"
GolurkFrontpic:     INCBIN "gfx/pokemon/golurk/front.animated.2bpp.lz"
PawniardFrontpic:   INCBIN "gfx/pokemon/pawniard/front.animated.2bpp.lz"
BisharpFrontpic:    INCBIN "gfx/pokemon/bisharp/front.animated.2bpp.lz"
BouffalantFrontpic: INCBIN "gfx/pokemon/bouffalant/front.animated.2bpp.lz"
RuffletFrontpic:    INCBIN "gfx/pokemon/rufflet/front.animated.2bpp.lz"
BraviaryFrontpic:   INCBIN "gfx/pokemon/braviary/front.animated.2bpp.lz"
VullabyFrontpic:    INCBIN "gfx/pokemon/vullaby/front.animated.2bpp.lz"
MandibuzzFrontpic:  INCBIN "gfx/pokemon/mandibuzz/front.animated.2bpp.lz"
; 13c000


SECTION "Pics 8", ROMX

HeatmorFrontpic:    INCBIN "gfx/pokemon/heatmor/front.animated.2bpp.lz"
DurantFrontpic:     INCBIN "gfx/pokemon/durant/front.animated.2bpp.lz"
DeinoFrontpic:      INCBIN "gfx/pokemon/deino/front.animated.2bpp.lz"
ZweilousFrontpic:   INCBIN "gfx/pokemon/zweilous/front.animated.2bpp.lz"
HydreigonFrontpic:  INCBIN "gfx/pokemon/hydreigon/front.animated.2bpp.lz"
LarvestaFrontpic:   INCBIN "gfx/pokemon/larvesta/front.animated.2bpp.lz"
VolcaronaFrontpic:  INCBIN "gfx/pokemon/volcarona/front.animated.2bpp.lz"
CobalionFrontpic:   INCBIN "gfx/pokemon/cobalion/front.animated.2bpp.lz"
TerrakionFrontpic:  INCBIN "gfx/pokemon/terrakion/front.animated.2bpp.lz"
VirizionFrontpic:   INCBIN "gfx/pokemon/virizion/front.animated.2bpp.lz"
TornadusFrontpic:   INCBIN "gfx/pokemon/tornadus/front.animated.2bpp.lz"
ThundurusFrontpic:  INCBIN "gfx/pokemon/thundurus/front.animated.2bpp.lz"
ReshiramFrontpic:   INCBIN "gfx/pokemon/reshiram/front.animated.2bpp.lz"
ZekromFrontpic:     INCBIN "gfx/pokemon/zekrom/front.animated.2bpp.lz"
LandorusFrontpic:   INCBIN "gfx/pokemon/landorus/front.animated.2bpp.lz"
KyuremFrontpic:     INCBIN "gfx/pokemon/kyurem/front.animated.2bpp.lz"
KeldeoFrontpic:     INCBIN "gfx/pokemon/keldeo/front.animated.2bpp.lz"
MeloettaFrontpic:   INCBIN "gfx/pokemon/meloetta/front.animated.2bpp.lz"
GenesectFrontpic:   INCBIN "gfx/pokemon/genesect/front.animated.2bpp.lz"
VictiniFrontpic:    INCBIN "gfx/pokemon/victini/front.animated.2bpp.lz"
ChespinFrontpic:    INCBIN "gfx/pokemon/chespin/front.animated.2bpp.lz"
QuilladinFrontpic:  INCBIN "gfx/pokemon/quilladin/front.animated.2bpp.lz"
ChesnaughtFrontpic: INCBIN "gfx/pokemon/chesnaught/front.animated.2bpp.lz"
FennekinFrontpic:   INCBIN "gfx/pokemon/fennekin/front.animated.2bpp.lz"
BraixenFrontpic:    INCBIN "gfx/pokemon/braixen/front.animated.2bpp.lz"
DelphoxFrontpic:    INCBIN "gfx/pokemon/delphox/front.animated.2bpp.lz"
FroakieFrontpic:    INCBIN "gfx/pokemon/froakie/front.animated.2bpp.lz"
; 13fff7


SECTION "Pics 9", ROMX

FrogadierFrontpic:  INCBIN "gfx/pokemon/frogadier/front.animated.2bpp.lz"
GreninjaFrontpic:   INCBIN "gfx/pokemon/greninja/front.animated.2bpp.lz"
BunnelbyFrontpic:   INCBIN "gfx/pokemon/bunnelby/front.animated.2bpp.lz"
DiggersbyFrontpic:  INCBIN "gfx/pokemon/diggersby/front.animated.2bpp.lz"
FletchlingFrontpic: INCBIN "gfx/pokemon/fletchling/front.animated.2bpp.lz"
FletchindrFrontpic: INCBIN "gfx/pokemon/fletchindr/front.animated.2bpp.lz"
TalonflameFrontpic: INCBIN "gfx/pokemon/talonflame/front.animated.2bpp.lz"
ScatterbugFrontpic: INCBIN "gfx/pokemon/scatterbug/front.animated.2bpp.lz"
FirebreatherPic:     INCBIN "gfx/trainers/firebreather.2bpp.lz"
SpewpaFrontpic:     INCBIN "gfx/pokemon/spewpa/front.animated.2bpp.lz"
VivillonFrontpic:   INCBIN "gfx/pokemon/vivillon/front.animated.2bpp.lz"
LitleoFrontpic:     INCBIN "gfx/pokemon/litleo/front.animated.2bpp.lz"
ChampionPic:         INCBIN "gfx/trainers/champion.2bpp.lz"
PyroarFrontpic:     INCBIN "gfx/pokemon/pyroar/front.animated.2bpp.lz"
FlabebeFrontpic:    INCBIN "gfx/pokemon/flabebe/front.animated.2bpp.lz"
FloetteFrontpic:    INCBIN "gfx/pokemon/floette/front.animated.2bpp.lz"
FlorgesFrontpic:    INCBIN "gfx/pokemon/florges/front.animated.2bpp.lz"
BlackbeltTPic:       INCBIN "gfx/trainers/blackbelt_t.2bpp.lz"
BikerPic:            INCBIN "gfx/trainers/biker.2bpp.lz"
SkiddoFrontpic:     INCBIN "gfx/pokemon/skiddo/front.animated.2bpp.lz"
GogoatFrontpic:     INCBIN "gfx/pokemon/gogoat/front.animated.2bpp.lz"
BrunoPic:            INCBIN "gfx/trainers/bruno.2bpp.lz"
PanchamFrontpic:    INCBIN "gfx/pokemon/pancham/front.animated.2bpp.lz"
PangoroFrontpic:    INCBIN "gfx/pokemon/pangoro/front.animated.2bpp.lz"
HikerPic:            INCBIN "gfx/trainers/hiker.2bpp.lz"
FurfrouFrontpic:    INCBIN "gfx/pokemon/furfrou/front.animated.2bpp.lz"
EspurrFrontpic:     INCBIN "gfx/pokemon/espurr/front.animated.2bpp.lz"
MeowsticFrontpic:   INCBIN "gfx/pokemon/meowstic/front.animated.2bpp.lz"
HonedgeFrontpic:    INCBIN "gfx/pokemon/honedge/front.animated.2bpp.lz"
DoubladeFrontpic:   INCBIN "gfx/pokemon/doublade/front.animated.2bpp.lz"
AegislashFrontpic:  INCBIN "gfx/pokemon/aegislash/front.animated.2bpp.lz"
; 144000


SECTION "Pics 10", ROMX

SpritzeeFrontpic:   INCBIN "gfx/pokemon/spritzee/front.animated.2bpp.lz"
AromatisseFrontpic: INCBIN "gfx/pokemon/aromatisse/front.animated.2bpp.lz"
SwirlixFrontpic:    INCBIN "gfx/pokemon/swirlix/front.animated.2bpp.lz"
SlurpuffFrontpic:   INCBIN "gfx/pokemon/slurpuff/front.animated.2bpp.lz"
MediumPic:           INCBIN "gfx/trainers/medium.2bpp.lz"
InkayFrontpic:      INCBIN "gfx/pokemon/inkay/front.animated.2bpp.lz"
MalamarFrontpic:    INCBIN "gfx/pokemon/malamar/front.animated.2bpp.lz"
FisherPic:           INCBIN "gfx/trainers/fisher.2bpp.lz"
BinacleFrontpic:    INCBIN "gfx/pokemon/binacle/front.animated.2bpp.lz"
BarbaracleFrontpic: INCBIN "gfx/pokemon/barbaracle/front.animated.2bpp.lz"
SkrelpFrontpic:     INCBIN "gfx/pokemon/skrelp/front.animated.2bpp.lz"
PokefanmPic:         INCBIN "gfx/trainers/pokefan_m.2bpp.lz"
BoarderPic:          INCBIN "gfx/trainers/boarder.2bpp.lz"
DragalgeFrontpic:   INCBIN "gfx/pokemon/dragalge/front.animated.2bpp.lz"
ClauncherFrontpic:  INCBIN "gfx/pokemon/clauncher/front.animated.2bpp.lz"
ClawitzerFrontpic:  INCBIN "gfx/pokemon/clawitzer/front.animated.2bpp.lz"
HelioptileFrontpic: INCBIN "gfx/pokemon/helioptile/front.animated.2bpp.lz"
HelioliskFrontpic:  INCBIN "gfx/pokemon/heliolisk/front.animated.2bpp.lz"
TyruntFrontpic:     INCBIN "gfx/pokemon/tyrunt/front.animated.2bpp.lz"
TyrantrumFrontpic:  INCBIN "gfx/pokemon/tyrantrum/front.animated.2bpp.lz"
AmauraFrontpic:     INCBIN "gfx/pokemon/amaura/front.animated.2bpp.lz"
AurorusFrontpic:    INCBIN "gfx/pokemon/aurorus/front.animated.2bpp.lz"
SylveonFrontpic:    INCBIN "gfx/pokemon/sylveon/front.animated.2bpp.lz"
ChuckPic:            INCBIN "gfx/trainers/chuck.2bpp.lz"
HawluchaFrontpic:   INCBIN "gfx/pokemon/hawlucha/front.animated.2bpp.lz"
DedenneFrontpic:    INCBIN "gfx/pokemon/dedenne/front.animated.2bpp.lz"
CarbinkFrontpic:    INCBIN "gfx/pokemon/carbink/front.animated.2bpp.lz"
KimonoGirlPic:       INCBIN "gfx/trainers/kimono_girl.2bpp.lz"
GoomyFrontpic:      INCBIN "gfx/pokemon/goomy/front.animated.2bpp.lz"
SliggooFrontpic:    INCBIN "gfx/pokemon/sliggoo/front.animated.2bpp.lz"
GoodraFrontpic:     INCBIN "gfx/pokemon/goodra/front.animated.2bpp.lz"
KlefkiFrontpic:     INCBIN "gfx/pokemon/klefki/front.animated.2bpp.lz"
PhantumpFrontpic:   INCBIN "gfx/pokemon/phantump/front.animated.2bpp.lz"
TrevenantFrontpic:  INCBIN "gfx/pokemon/trevenant/front.animated.2bpp.lz"
PumpkabooFrontpic:  INCBIN "gfx/pokemon/pumpkaboo/front.animated.2bpp.lz"
; 148000


SECTION "Pics 11", ROMX

GourgeistFrontpic:  INCBIN "gfx/pokemon/gourgeist/front.animated.2bpp.lz"
BergmiteFrontpic:   INCBIN "gfx/pokemon/bergmite/front.animated.2bpp.lz"
AvaluggFrontpic:    INCBIN "gfx/pokemon/avalugg/front.animated.2bpp.lz"
NoibatFrontpic:     INCBIN "gfx/pokemon/noibat/front.animated.2bpp.lz"
NoivernFrontpic:    INCBIN "gfx/pokemon/noivern/front.animated.2bpp.lz"
XerneasFrontpic:    INCBIN "gfx/pokemon/xerneas/front.animated.2bpp.lz"
JugglerPic:          INCBIN "gfx/trainers/juggler.2bpp.lz"
YveltalFrontpic:    INCBIN "gfx/pokemon/yveltal/front.animated.2bpp.lz"
GuitaristPic:        INCBIN "gfx/trainers/guitarist.2bpp.lz"
PokefanfPic:         INCBIN "gfx/trainers/pokefan_f.2bpp.lz"
ZygardeFrontpic:    INCBIN "gfx/pokemon/zygarde/front.animated.2bpp.lz"
ClairPic:            INCBIN "gfx/trainers/clair.2bpp.lz"
PokemaniacPic:       INCBIN "gfx/trainers/pokemaniac.2bpp.lz"
DiancieFrontpic:    INCBIN "gfx/pokemon/diancie/front.animated.2bpp.lz"
SkierPic:            INCBIN "gfx/trainers/skier.2bpp.lz"
HoopaFrontpic:      INCBIN "gfx/pokemon/hoopa/front.animated.2bpp.lz"
HoopaUFrontpic:     INCBIN "gfx/pokemon/hoopa_u/front.animated.2bpp.lz"
VolcanionFrontpic:  INCBIN "gfx/pokemon/volcanion/front.animated.2bpp.lz"
EggPic:             INCBIN "gfx/pokemon/egg/front.animated.2bpp.lz"
SnivyBackpic:      INCBIN "gfx/pokemon/snivy/back.2bpp.lz"
ServineBackpic:    INCBIN "gfx/pokemon/servine/back.2bpp.lz"
SerperiorBackpic:  INCBIN "gfx/pokemon/serperior/back.2bpp.lz"
TepigBackpic:      INCBIN "gfx/pokemon/tepig/back.2bpp.lz"
PigniteBackpic:    INCBIN "gfx/pokemon/pignite/back.2bpp.lz"
LassPic:             INCBIN "gfx/trainers/lass.2bpp.lz"
EmboarBackpic:     INCBIN "gfx/pokemon/emboar/back.2bpp.lz"
OshawottBackpic:   INCBIN "gfx/pokemon/oshawott/back.2bpp.lz"
DewottBackpic:     INCBIN "gfx/pokemon/dewott/back.2bpp.lz"
SamurottBackpic:   INCBIN "gfx/pokemon/samurott/back.2bpp.lz"
PatratBackpic:     INCBIN "gfx/pokemon/patrat/back.2bpp.lz"
WatchogBackpic:    INCBIN "gfx/pokemon/watchog/back.2bpp.lz"
LillipupBackpic:   INCBIN "gfx/pokemon/lillipup/back.2bpp.lz"
HerdierBackpic:    INCBIN "gfx/pokemon/herdier/back.2bpp.lz"
StoutlandBackpic:  INCBIN "gfx/pokemon/stoutland/back.2bpp.lz"
PurrloinBackpic:   INCBIN "gfx/pokemon/purrloin/back.2bpp.lz"
LiepardBackpic:    INCBIN "gfx/pokemon/liepard/back.2bpp.lz"
BugCatcherPic:       INCBIN "gfx/trainers/bug_catcher.2bpp.lz"
PansageBackpic:    INCBIN "gfx/pokemon/pansage/back.2bpp.lz"
; 14bffb


SECTION "Pics 12", ROMX

SimisageBackpic:   INCBIN "gfx/pokemon/simisage/back.2bpp.lz"
PansearBackpic:    INCBIN "gfx/pokemon/pansear/back.2bpp.lz"
SimisearBackpic:   INCBIN "gfx/pokemon/simisear/back.2bpp.lz"
PanpourBackpic:    INCBIN "gfx/pokemon/panpour/back.2bpp.lz"
SimipourBackpic:   INCBIN "gfx/pokemon/simipour/back.2bpp.lz"
MunnaBackpic:      INCBIN "gfx/pokemon/munna/back.2bpp.lz"
MusharnaBackpic:   INCBIN "gfx/pokemon/musharna/back.2bpp.lz"
PidoveBackpic:     INCBIN "gfx/pokemon/pidove/back.2bpp.lz"
TranquillBackpic:  INCBIN "gfx/pokemon/tranquill/back.2bpp.lz"
TwinsPic:            INCBIN "gfx/trainers/twins.2bpp.lz"
UnfezantBackpic:   INCBIN "gfx/pokemon/unfezant/back.2bpp.lz"
BlitzleBackpic:    INCBIN "gfx/pokemon/blitzle/back.2bpp.lz"
ZebstrikaBackpic:  INCBIN "gfx/pokemon/zebstrika/back.2bpp.lz"
RoggenrolaBackpic: INCBIN "gfx/pokemon/roggenrola/back.2bpp.lz"
BoldoreBackpic:    INCBIN "gfx/pokemon/boldore/back.2bpp.lz"
GigalithBackpic:   INCBIN "gfx/pokemon/gigalith/back.2bpp.lz"
WoobatBackpic:     INCBIN "gfx/pokemon/woobat/back.2bpp.lz"
SwoobatBackpic:    INCBIN "gfx/pokemon/swoobat/back.2bpp.lz"
DrilburBackpic:    INCBIN "gfx/pokemon/drilbur/back.2bpp.lz"
ExcadrillBackpic:  INCBIN "gfx/pokemon/excadrill/back.2bpp.lz"
AudinoBackpic:     INCBIN "gfx/pokemon/audino/back.2bpp.lz"
TimburrBackpic:    INCBIN "gfx/pokemon/timburr/back.2bpp.lz"
GurdurrBackpic:    INCBIN "gfx/pokemon/gurdurr/back.2bpp.lz"
ConkeldurrBackpic: INCBIN "gfx/pokemon/conkeldurr/back.2bpp.lz"
TympoleBackpic:    INCBIN "gfx/pokemon/tympole/back.2bpp.lz"
SailorPic:           INCBIN "gfx/trainers/sailor.2bpp.lz"
BeautyPic:           INCBIN "gfx/trainers/beauty.2bpp.lz"
PalpitoadBackpic:  INCBIN "gfx/pokemon/palpitoad/back.2bpp.lz"
SeismitoadBackpic: INCBIN "gfx/pokemon/seismitoad/back.2bpp.lz"
ThrohBackpic:      INCBIN "gfx/pokemon/throh/back.2bpp.lz"
SawkBackpic:       INCBIN "gfx/pokemon/sawk/back.2bpp.lz"
GruntmPic:           INCBIN "gfx/trainers/grunt_m.2bpp.lz"
SewaddleBackpic:   INCBIN "gfx/pokemon/sewaddle/back.2bpp.lz"
SwadloonBackpic:   INCBIN "gfx/pokemon/swadloon/back.2bpp.lz"
LeavannyBackpic:   INCBIN "gfx/pokemon/leavanny/back.2bpp.lz"
VenipedeBackpic:   INCBIN "gfx/pokemon/venipede/back.2bpp.lz"
WhirlipedeBackpic: INCBIN "gfx/pokemon/whirlipede/back.2bpp.lz"
ScolipedeBackpic:  INCBIN "gfx/pokemon/scolipede/back.2bpp.lz"
CottoneeBackpic:   INCBIN "gfx/pokemon/cottonee/back.2bpp.lz"
WhimsicottBackpic: INCBIN "gfx/pokemon/whimsicott/back.2bpp.lz"
PetililBackpic:    INCBIN "gfx/pokemon/petilil/back.2bpp.lz"
; 150000


SECTION "Pics 13", ROMX

LilligantBackpic:  INCBIN "gfx/pokemon/lilligant/back.2bpp.lz"
BasculinBackpic:   INCBIN "gfx/pokemon/basculin/back.2bpp.lz"
ScientistPic:        INCBIN "gfx/trainers/scientist.2bpp.lz"
SandileBackpic:    INCBIN "gfx/pokemon/sandile/back.2bpp.lz"
KrokorokBackpic:   INCBIN "gfx/pokemon/krokorok/back.2bpp.lz"
KrookodileBackpic: INCBIN "gfx/pokemon/krookodile/back.2bpp.lz"
DarumakaBackpic:   INCBIN "gfx/pokemon/darumaka/back.2bpp.lz"
DarmanitanBackpic: INCBIN "gfx/pokemon/darmanitan/back.2bpp.lz"
MaractusBackpic:   INCBIN "gfx/pokemon/maractus/back.2bpp.lz"
DwebbleBackpic:    INCBIN "gfx/pokemon/dwebble/back.2bpp.lz"
CrustleBackpic:    INCBIN "gfx/pokemon/crustle/back.2bpp.lz"
ScraggyBackpic:    INCBIN "gfx/pokemon/scraggy/back.2bpp.lz"
ScraftyBackpic:    INCBIN "gfx/pokemon/scrafty/back.2bpp.lz"
SigilyphBackpic:   INCBIN "gfx/pokemon/sigilyph/back.2bpp.lz"
YamaskBackpic:     INCBIN "gfx/pokemon/yamask/back.2bpp.lz"
CofagrigusBackpic: INCBIN "gfx/pokemon/cofagrigus/back.2bpp.lz"
TirtougaBackpic:   INCBIN "gfx/pokemon/tirtouga/back.2bpp.lz"
LtSurgePic:          INCBIN "gfx/trainers/lt_surge.2bpp.lz"
TeacherPic:          INCBIN "gfx/trainers/teacher.2bpp.lz"
CarracostaBackpic: INCBIN "gfx/pokemon/carracosta/back.2bpp.lz"
ArchenBackpic:     INCBIN "gfx/pokemon/archen/back.2bpp.lz"
ArcheopsBackpic:   INCBIN "gfx/pokemon/archeops/back.2bpp.lz"
TrubbishBackpic:   INCBIN "gfx/pokemon/trubbish/back.2bpp.lz"
GarbodorBackpic:   INCBIN "gfx/pokemon/garbodor/back.2bpp.lz"
ZoruaBackpic:      INCBIN "gfx/pokemon/zorua/back.2bpp.lz"
ZoroarkBackpic:    INCBIN "gfx/pokemon/zoroark/back.2bpp.lz"
MinccinoBackpic:   INCBIN "gfx/pokemon/minccino/back.2bpp.lz"
BirdKeeperPic:       INCBIN "gfx/trainers/bird_keeper.2bpp.lz"
FalknerPic:          INCBIN "gfx/trainers/falkner.2bpp.lz"
KarenPic:            INCBIN "gfx/trainers/karen.2bpp.lz"
CinccinoBackpic:   INCBIN "gfx/pokemon/cinccino/back.2bpp.lz"
GothitaBackpic:    INCBIN "gfx/pokemon/gothita/back.2bpp.lz"
GothoritaBackpic:  INCBIN "gfx/pokemon/gothorita/back.2bpp.lz"
KogaPic:             INCBIN "gfx/trainers/koga.2bpp.lz"
GothitelleBackpic: INCBIN "gfx/pokemon/gothitelle/back.2bpp.lz"
SolosisBackpic:    INCBIN "gfx/pokemon/solosis/back.2bpp.lz"
DuosionBackpic:    INCBIN "gfx/pokemon/duosion/back.2bpp.lz"
SwimmermPic:         INCBIN "gfx/trainers/swimmer_m.2bpp.lz"
ReuniclusBackpic:  INCBIN "gfx/pokemon/reuniclus/back.2bpp.lz"
DucklettBackpic:   INCBIN "gfx/pokemon/ducklett/back.2bpp.lz"
MysticalmanPic:      INCBIN "gfx/trainers/mysticalman.2bpp.lz"
CooltrainerfPic:     INCBIN "gfx/trainers/cooltrainer_f.2bpp.lz"
SwannaBackpic:     INCBIN "gfx/pokemon/swanna/back.2bpp.lz"
; 153fe3


SECTION "Pics 14", ROMX

VanilliteBackpic:  INCBIN "gfx/pokemon/vanillite/back.2bpp.lz"
VanillishBackpic:  INCBIN "gfx/pokemon/vanillish/back.2bpp.lz"
VanilluxeBackpic:  INCBIN "gfx/pokemon/vanilluxe/back.2bpp.lz"
DeerlingBackpic:   INCBIN "gfx/pokemon/deerling/back.2bpp.lz"
BugsyPic:            INCBIN "gfx/trainers/bugsy.2bpp.lz"
SawsbuckBackpic:   INCBIN "gfx/pokemon/sawsbuck/back.2bpp.lz"
EmolgaBackpic:     INCBIN "gfx/pokemon/emolga/back.2bpp.lz"
KarrablastBackpic: INCBIN "gfx/pokemon/karrablast/back.2bpp.lz"
EscavalierBackpic: INCBIN "gfx/pokemon/escavalier/back.2bpp.lz"
FoongusBackpic:    INCBIN "gfx/pokemon/foongus/back.2bpp.lz"
AmoongussBackpic:  INCBIN "gfx/pokemon/amoonguss/back.2bpp.lz"
CooltrainermPic:     INCBIN "gfx/trainers/cooltrainer_m.2bpp.lz"
FrillishBackpic:   INCBIN "gfx/pokemon/frillish/back.2bpp.lz"
JellicentBackpic:  INCBIN "gfx/pokemon/jellicent/back.2bpp.lz"
AlomomolaBackpic:  INCBIN "gfx/pokemon/alomomola/back.2bpp.lz"
JoltikBackpic:     INCBIN "gfx/pokemon/joltik/back.2bpp.lz"
GalvantulaBackpic: INCBIN "gfx/pokemon/galvantula/back.2bpp.lz"
FerroseedBackpic:  INCBIN "gfx/pokemon/ferroseed/back.2bpp.lz"
FerrothornBackpic: INCBIN "gfx/pokemon/ferrothorn/back.2bpp.lz"
KlinkBackpic:      INCBIN "gfx/pokemon/klink/back.2bpp.lz"
KlangBackpic:      INCBIN "gfx/pokemon/klang/back.2bpp.lz"
KlinklangBackpic:  INCBIN "gfx/pokemon/klinklang/back.2bpp.lz"
TynamoBackpic:     INCBIN "gfx/pokemon/tynamo/back.2bpp.lz"
EelektrikBackpic:  INCBIN "gfx/pokemon/eelektrik/back.2bpp.lz"
EelektrossBackpic: INCBIN "gfx/pokemon/eelektross/back.2bpp.lz"
ElgyemBackpic:     INCBIN "gfx/pokemon/elgyem/back.2bpp.lz"
BeheeyemBackpic:   INCBIN "gfx/pokemon/beheeyem/back.2bpp.lz"
LitwickBackpic:    INCBIN "gfx/pokemon/litwick/back.2bpp.lz"
LampentBackpic:    INCBIN "gfx/pokemon/lampent/back.2bpp.lz"
ChandelureBackpic: INCBIN "gfx/pokemon/chandelure/back.2bpp.lz"
AxewBackpic:       INCBIN "gfx/pokemon/axew/back.2bpp.lz"
BurglarPic:          INCBIN "gfx/trainers/burglar.2bpp.lz"
FraxureBackpic:    INCBIN "gfx/pokemon/fraxure/back.2bpp.lz"
HaxorusBackpic:    INCBIN "gfx/pokemon/haxorus/back.2bpp.lz"
CubchooBackpic:    INCBIN "gfx/pokemon/cubchoo/back.2bpp.lz"
BearticBackpic:    INCBIN "gfx/pokemon/beartic/back.2bpp.lz"
CryogonalBackpic:  INCBIN "gfx/pokemon/cryogonal/back.2bpp.lz"
ShelmetBackpic:    INCBIN "gfx/pokemon/shelmet/back.2bpp.lz"
AccelgorBackpic:   INCBIN "gfx/pokemon/accelgor/back.2bpp.lz"
CamperPic:           INCBIN "gfx/trainers/camper.2bpp.lz"
StunfiskBackpic:   INCBIN "gfx/pokemon/stunfisk/back.2bpp.lz"
MienfooBackpic:    INCBIN "gfx/pokemon/mienfoo/back.2bpp.lz"
MienshaoBackpic:   INCBIN "gfx/pokemon/mienshao/back.2bpp.lz"
DruddigonBackpic:  INCBIN "gfx/pokemon/druddigon/back.2bpp.lz"
Rival1Pic:           INCBIN "gfx/trainers/rival1.2bpp.lz"
GolettBackpic:     INCBIN "gfx/pokemon/golett/back.2bpp.lz"
; 158000


SECTION "Pics 15", ROMX

GolurkBackpic:     INCBIN "gfx/pokemon/golurk/back.2bpp.lz"
PokemonProfPic:      INCBIN "gfx/trainers/oak.2bpp.lz"
CalPic:              INCBIN "gfx/trainers/cal.2bpp.lz"
SwimmerfPic:         INCBIN "gfx/trainers/swimmer_f.2bpp.lz"
PawniardBackpic:   INCBIN "gfx/pokemon/pawniard/back.2bpp.lz"
OfficerPic:          INCBIN "gfx/trainers/officer.2bpp.lz"
BisharpBackpic:    INCBIN "gfx/pokemon/bisharp/back.2bpp.lz"
BouffalantBackpic: INCBIN "gfx/pokemon/bouffalant/back.2bpp.lz"
SabrinaPic:          INCBIN "gfx/trainers/sabrina.2bpp.lz"
RuffletBackpic:    INCBIN "gfx/pokemon/rufflet/back.2bpp.lz"
BraviaryBackpic:   INCBIN "gfx/pokemon/braviary/back.2bpp.lz"
VullabyBackpic:    INCBIN "gfx/pokemon/vullaby/back.2bpp.lz"
MandibuzzBackpic:  INCBIN "gfx/pokemon/mandibuzz/back.2bpp.lz"
HeatmorBackpic:    INCBIN "gfx/pokemon/heatmor/back.2bpp.lz"
DurantBackpic:     INCBIN "gfx/pokemon/durant/back.2bpp.lz"
DeinoBackpic:      INCBIN "gfx/pokemon/deino/back.2bpp.lz"
PsychicTPic:         INCBIN "gfx/trainers/psychic_t.2bpp.lz"
ZweilousBackpic:   INCBIN "gfx/pokemon/zweilous/back.2bpp.lz"
HydreigonBackpic:  INCBIN "gfx/pokemon/hydreigon/back.2bpp.lz"
LarvestaBackpic:   INCBIN "gfx/pokemon/larvesta/back.2bpp.lz"
GruntfPic:           INCBIN "gfx/trainers/grunt_f.2bpp.lz"
VolcaronaBackpic:  INCBIN "gfx/pokemon/volcarona/back.2bpp.lz"
CobalionBackpic:   INCBIN "gfx/pokemon/cobalion/back.2bpp.lz"
TerrakionBackpic:  INCBIN "gfx/pokemon/terrakion/back.2bpp.lz"
VirizionBackpic:   INCBIN "gfx/pokemon/virizion/back.2bpp.lz"
TornadusBackpic:   INCBIN "gfx/pokemon/tornadus/back.2bpp.lz"
ThundurusBackpic:  INCBIN "gfx/pokemon/thundurus/back.2bpp.lz"
ReshiramBackpic:   INCBIN "gfx/pokemon/reshiram/back.2bpp.lz"
ZekromBackpic:     INCBIN "gfx/pokemon/zekrom/back.2bpp.lz"
LandorusBackpic:   INCBIN "gfx/pokemon/landorus/back.2bpp.lz"
KyuremBackpic:     INCBIN "gfx/pokemon/kyurem/back.2bpp.lz"
KeldeoBackpic:     INCBIN "gfx/pokemon/keldeo/back.2bpp.lz"
MeloettaBackpic:   INCBIN "gfx/pokemon/meloetta/back.2bpp.lz"
GenesectBackpic:   INCBIN "gfx/pokemon/genesect/back.2bpp.lz"
VictiniBackpic:    INCBIN "gfx/pokemon/victini/back.2bpp.lz"
ChespinBackpic:    INCBIN "gfx/pokemon/chespin/back.2bpp.lz"
QuilladinBackpic:  INCBIN "gfx/pokemon/quilladin/back.2bpp.lz"
ChesnaughtBackpic: INCBIN "gfx/pokemon/chesnaught/back.2bpp.lz"
FennekinBackpic:   INCBIN "gfx/pokemon/fennekin/back.2bpp.lz"
BraixenBackpic:    INCBIN "gfx/pokemon/braixen/back.2bpp.lz"
DelphoxBackpic:    INCBIN "gfx/pokemon/delphox/back.2bpp.lz"
FroakieBackpic:    INCBIN "gfx/pokemon/froakie/back.2bpp.lz"
YoungsterPic:        INCBIN "gfx/trainers/youngster.2bpp.lz"
WillPic:             INCBIN "gfx/trainers/will.2bpp.lz"
SchoolboyPic:        INCBIN "gfx/trainers/schoolboy.2bpp.lz"
FrogadierBackpic:  INCBIN "gfx/pokemon/frogadier/back.2bpp.lz"
ErikaPic:            INCBIN "gfx/trainers/erika.2bpp.lz"
JaninePic:           INCBIN "gfx/trainers/janine.2bpp.lz"
GreninjaBackpic:   INCBIN "gfx/pokemon/greninja/back.2bpp.lz"
; 15bffa


SECTION "Pics 16", ROMX

BunnelbyBackpic:   INCBIN "gfx/pokemon/bunnelby/back.2bpp.lz"
DiggersbyBackpic:  INCBIN "gfx/pokemon/diggersby/back.2bpp.lz"
MortyPic:            INCBIN "gfx/trainers/morty.2bpp.lz"
FletchlingBackpic: INCBIN "gfx/pokemon/fletchling/back.2bpp.lz"
FletchindrBackpic: INCBIN "gfx/pokemon/fletchindr/back.2bpp.lz"
TalonflameBackpic: INCBIN "gfx/pokemon/talonflame/back.2bpp.lz"
ScatterbugBackpic: INCBIN "gfx/pokemon/scatterbug/back.2bpp.lz"
SpewpaBackpic:     INCBIN "gfx/pokemon/spewpa/back.2bpp.lz"
PicnickerPic:        INCBIN "gfx/trainers/picnicker.2bpp.lz"
VivillonBackpic:   INCBIN "gfx/pokemon/vivillon/back.2bpp.lz"
LitleoBackpic:     INCBIN "gfx/pokemon/litleo/back.2bpp.lz"
SuperNerdPic:        INCBIN "gfx/trainers/super_nerd.2bpp.lz"
PyroarBackpic:     INCBIN "gfx/pokemon/pyroar/back.2bpp.lz"
FlabebeBackpic:    INCBIN "gfx/pokemon/flabebe/back.2bpp.lz"
RedPic:              INCBIN "gfx/trainers/red.2bpp.lz"
FloetteBackpic:    INCBIN "gfx/pokemon/floette/back.2bpp.lz"
JasminePic:          INCBIN "gfx/trainers/jasmine.2bpp.lz"
FlorgesBackpic:    INCBIN "gfx/pokemon/florges/back.2bpp.lz"
SkiddoBackpic:     INCBIN "gfx/pokemon/skiddo/back.2bpp.lz"
GogoatBackpic:     INCBIN "gfx/pokemon/gogoat/back.2bpp.lz"
PanchamBackpic:    INCBIN "gfx/pokemon/pancham/back.2bpp.lz"
WhitneyPic:          INCBIN "gfx/trainers/whitney.2bpp.lz"
PangoroBackpic:    INCBIN "gfx/pokemon/pangoro/back.2bpp.lz"
FurfrouBackpic:    INCBIN "gfx/pokemon/furfrou/back.2bpp.lz"
EspurrBackpic:     INCBIN "gfx/pokemon/espurr/back.2bpp.lz"
BluePic:             INCBIN "gfx/trainers/blue.2bpp.lz"
MeowsticBackpic:   INCBIN "gfx/pokemon/meowstic/back.2bpp.lz"
GentlemanPic:        INCBIN "gfx/trainers/gentleman.2bpp.lz"
ExecutivemPic:       INCBIN "gfx/trainers/executive_m.2bpp.lz"
HonedgeBackpic:    INCBIN "gfx/pokemon/honedge/back.2bpp.lz"
DoubladeBackpic:   INCBIN "gfx/pokemon/doublade/back.2bpp.lz"
AegislashBackpic:  INCBIN "gfx/pokemon/aegislash/back.2bpp.lz"
SpritzeeBackpic:   INCBIN "gfx/pokemon/spritzee/back.2bpp.lz"
AromatisseBackpic: INCBIN "gfx/pokemon/aromatisse/back.2bpp.lz"
SwirlixBackpic:    INCBIN "gfx/pokemon/swirlix/back.2bpp.lz"
SlurpuffBackpic:   INCBIN "gfx/pokemon/slurpuff/back.2bpp.lz"
InkayBackpic:      INCBIN "gfx/pokemon/inkay/back.2bpp.lz"
MalamarBackpic:    INCBIN "gfx/pokemon/malamar/back.2bpp.lz"
BinacleBackpic:    INCBIN "gfx/pokemon/binacle/back.2bpp.lz"
BarbaracleBackpic: INCBIN "gfx/pokemon/barbaracle/back.2bpp.lz"
SkrelpBackpic:     INCBIN "gfx/pokemon/skrelp/back.2bpp.lz"
Rival2Pic:           INCBIN "gfx/trainers/rival2.2bpp.lz"
DragalgeBackpic:   INCBIN "gfx/pokemon/dragalge/back.2bpp.lz"
ClauncherBackpic:  INCBIN "gfx/pokemon/clauncher/back.2bpp.lz"
ClawitzerBackpic:  INCBIN "gfx/pokemon/clawitzer/back.2bpp.lz"
HelioptileBackpic: INCBIN "gfx/pokemon/helioptile/back.2bpp.lz"
MistyPic:            INCBIN "gfx/trainers/misty.2bpp.lz"
BlainePic:           INCBIN "gfx/trainers/blaine.2bpp.lz"
HelioliskBackpic:  INCBIN "gfx/pokemon/heliolisk/back.2bpp.lz"
TyruntBackpic:     INCBIN "gfx/pokemon/tyrunt/back.2bpp.lz"
TyrantrumBackpic:  INCBIN "gfx/pokemon/tyrantrum/back.2bpp.lz"
; 15ffff


SECTION "Pics 17", ROMX

AmauraBackpic:     INCBIN "gfx/pokemon/amaura/back.2bpp.lz"
AurorusBackpic:    INCBIN "gfx/pokemon/aurorus/back.2bpp.lz"
SylveonBackpic:    INCBIN "gfx/pokemon/sylveon/back.2bpp.lz"
HawluchaBackpic:   INCBIN "gfx/pokemon/hawlucha/back.2bpp.lz"
DedenneBackpic:    INCBIN "gfx/pokemon/dedenne/back.2bpp.lz"
ExecutivefPic:       INCBIN "gfx/trainers/executive_f.2bpp.lz"
CarbinkBackpic:    INCBIN "gfx/pokemon/carbink/back.2bpp.lz"
GoomyBackpic:      INCBIN "gfx/pokemon/goomy/back.2bpp.lz"
SliggooBackpic:    INCBIN "gfx/pokemon/sliggoo/back.2bpp.lz"
GoodraBackpic:     INCBIN "gfx/pokemon/goodra/back.2bpp.lz"
KlefkiBackpic:     INCBIN "gfx/pokemon/klefki/back.2bpp.lz"
PhantumpBackpic:   INCBIN "gfx/pokemon/phantump/back.2bpp.lz"
TrevenantBackpic:  INCBIN "gfx/pokemon/trevenant/back.2bpp.lz"
PumpkabooBackpic:  INCBIN "gfx/pokemon/pumpkaboo/back.2bpp.lz"
GourgeistBackpic:  INCBIN "gfx/pokemon/gourgeist/back.2bpp.lz"
BergmiteBackpic:   INCBIN "gfx/pokemon/bergmite/back.2bpp.lz"
AvaluggBackpic:    INCBIN "gfx/pokemon/avalugg/back.2bpp.lz"
NoibatBackpic:     INCBIN "gfx/pokemon/noibat/back.2bpp.lz"
NoivernBackpic:    INCBIN "gfx/pokemon/noivern/back.2bpp.lz"
PrycePic:            INCBIN "gfx/trainers/pryce.2bpp.lz"
BrockPic:            INCBIN "gfx/trainers/brock.2bpp.lz"
XerneasBackpic:    INCBIN "gfx/pokemon/xerneas/back.2bpp.lz"
YveltalBackpic:    INCBIN "gfx/pokemon/yveltal/back.2bpp.lz"
ZygardeBackpic:    INCBIN "gfx/pokemon/zygarde/back.2bpp.lz"
DiancieBackpic:    INCBIN "gfx/pokemon/diancie/back.2bpp.lz"
HoopaBackpic:      INCBIN "gfx/pokemon/hoopa/back.2bpp.lz"
HoopaUBackpic:     INCBIN "gfx/pokemon/hoopa_u/back.2bpp.lz"
VolcanionBackpic:  INCBIN "gfx/pokemon/volcanion/back.2bpp.lz"
SagePic:             INCBIN "gfx/trainers/sage.2bpp.lz"
; 163ffc


SECTION "Pics 18", ROMX

; 1669d3


SECTION "Pics 19", ROMX




; Sections "Pics 20" to "Pics 24" are not used for any graphics,
; but entries for their banks exist in FixPicBank (see engine/gfx/load_pics.asm).

SECTION "Pics 20", ROMX


SECTION "Pics 21", ROMX


SECTION "Pics 22", ROMX


SECTION "Pics 23", ROMX


SECTION "Pics 24", ROMX
