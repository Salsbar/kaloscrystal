; Footprints are 2x2 tiles each, but are stored as a 16x64-tile image
; (32 rows of 8 footprints per row).
; That means there's a row of the top two tiles for eight footprints,
; then a row of the bottom two tiles for those eight footprints.

; These macros help extract the first and the last two tiles, respectively.
footprint_top    EQUS "0,                 2 * LEN_1BPP_TILE"
footprint_bottom EQUS "2 * LEN_1BPP_TILE, 2 * LEN_1BPP_TILE"

; Entries correspond to Pokémon species, two apiece, 8 tops then 8 bottoms

; 001-008 top halves
INCBIN "gfx/footprints/snivy.1bpp", footprint_top
INCBIN "gfx/footprints/servine.1bpp", footprint_top
INCBIN "gfx/footprints/serperior.1bpp", footprint_top
INCBIN "gfx/footprints/tepig.1bpp", footprint_top
INCBIN "gfx/footprints/pignite.1bpp", footprint_top
INCBIN "gfx/footprints/emboar.1bpp", footprint_top
INCBIN "gfx/footprints/oshawott.1bpp", footprint_top
INCBIN "gfx/footprints/dewott.1bpp", footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/snivy.1bpp",     footprint_bottom
INCBIN "gfx/footprints/servine.1bpp",   footprint_bottom
INCBIN "gfx/footprints/serperior.1bpp", footprint_bottom
INCBIN "gfx/footprints/tepig.1bpp",     footprint_bottom
INCBIN "gfx/footprints/pignite.1bpp",   footprint_bottom
INCBIN "gfx/footprints/emboar.1bpp",    footprint_bottom
INCBIN "gfx/footprints/oshawott.1bpp",  footprint_bottom
INCBIN "gfx/footprints/dewott.1bpp",    footprint_bottom
; 009-016 top halves
INCBIN "gfx/footprints/samurott.1bpp", footprint_top
INCBIN "gfx/footprints/patrat.1bpp", footprint_top
INCBIN "gfx/footprints/watchog.1bpp", footprint_top
INCBIN "gfx/footprints/lillipup.1bpp", footprint_top
INCBIN "gfx/footprints/herdier.1bpp", footprint_top
INCBIN "gfx/footprints/stoutland.1bpp", footprint_top
INCBIN "gfx/footprints/purrloin.1bpp", footprint_top
INCBIN "gfx/footprints/liepard.1bpp", footprint_top
; 009-016 bottom halves
INCBIN "gfx/footprints/samurott.1bpp", footprint_bottom
INCBIN "gfx/footprints/patrat.1bpp", footprint_bottom
INCBIN "gfx/footprints/watchog.1bpp", footprint_bottom
INCBIN "gfx/footprints/lillipup.1bpp", footprint_bottom
INCBIN "gfx/footprints/herdier.1bpp", footprint_bottom
INCBIN "gfx/footprints/stoutland.1bpp", footprint_bottom
INCBIN "gfx/footprints/purrloin.1bpp", footprint_bottom
INCBIN "gfx/footprints/liepard.1bpp", footprint_bottom
; 017-024 top halves
INCBIN "gfx/footprints/pansage.1bpp", footprint_top
INCBIN "gfx/footprints/simisage.1bpp", footprint_top
INCBIN "gfx/footprints/pansear.1bpp", footprint_top
INCBIN "gfx/footprints/simisear.1bpp", footprint_top
INCBIN "gfx/footprints/panpour.1bpp", footprint_top
INCBIN "gfx/footprints/simipour.1bpp", footprint_top
INCBIN "gfx/footprints/munna.1bpp", footprint_top
INCBIN "gfx/footprints/musharna.1bpp", footprint_top
; 017-024 bottom halves
INCBIN "gfx/footprints/pansage.1bpp", footprint_bottom
INCBIN "gfx/footprints/simisage.1bpp", footprint_bottom
INCBIN "gfx/footprints/pansear.1bpp", footprint_bottom
INCBIN "gfx/footprints/simisear.1bpp", footprint_bottom
INCBIN "gfx/footprints/panpour.1bpp", footprint_bottom
INCBIN "gfx/footprints/simipour.1bpp", footprint_bottom
INCBIN "gfx/footprints/munna.1bpp", footprint_bottom
INCBIN "gfx/footprints/musharna.1bpp", footprint_bottom
; 025-032 top halves
INCBIN "gfx/footprints/pidove.1bpp", footprint_top
INCBIN "gfx/footprints/tranquill.1bpp", footprint_top
INCBIN "gfx/footprints/unfezant.1bpp", footprint_top
INCBIN "gfx/footprints/blitzle.1bpp", footprint_top
INCBIN "gfx/footprints/zebstrika.1bpp", footprint_top
INCBIN "gfx/footprints/roggenrola.1bpp", footprint_top
INCBIN "gfx/footprints/boldore.1bpp", footprint_top
INCBIN "gfx/footprints/gigalith.1bpp", footprint_top
; 025-032 bottom halves
INCBIN "gfx/footprints/pidove.1bpp", footprint_bottom
INCBIN "gfx/footprints/tranquill.1bpp", footprint_bottom
INCBIN "gfx/footprints/unfezant.1bpp", footprint_bottom
INCBIN "gfx/footprints/blitzle.1bpp", footprint_bottom
INCBIN "gfx/footprints/zebstrika.1bpp", footprint_bottom
INCBIN "gfx/footprints/roggenrola.1bpp", footprint_bottom
INCBIN "gfx/footprints/boldore.1bpp", footprint_bottom
INCBIN "gfx/footprints/gigalith.1bpp", footprint_bottom
; 033-040 top halves
INCBIN "gfx/footprints/woobat.1bpp", footprint_top
INCBIN "gfx/footprints/swoobat.1bpp", footprint_top
INCBIN "gfx/footprints/drilbur.1bpp", footprint_top
INCBIN "gfx/footprints/excadrill.1bpp", footprint_top
INCBIN "gfx/footprints/audino.1bpp", footprint_top
INCBIN "gfx/footprints/timburr.1bpp", footprint_top
INCBIN "gfx/footprints/gurdurr.1bpp", footprint_top
INCBIN "gfx/footprints/conkeldurr.1bpp", footprint_top
; 033-040 bottom halves
INCBIN "gfx/footprints/woobat.1bpp", footprint_bottom
INCBIN "gfx/footprints/swoobat.1bpp", footprint_bottom
INCBIN "gfx/footprints/drilbur.1bpp", footprint_bottom
INCBIN "gfx/footprints/excadrill.1bpp", footprint_bottom
INCBIN "gfx/footprints/audino.1bpp", footprint_bottom
INCBIN "gfx/footprints/timburr.1bpp", footprint_bottom
INCBIN "gfx/footprints/gurdurr.1bpp", footprint_bottom
INCBIN "gfx/footprints/conkeldurr.1bpp", footprint_bottom
; 041-048 top halves
INCBIN "gfx/footprints/tympole.1bpp", footprint_top
INCBIN "gfx/footprints/palpitoad.1bpp", footprint_top
INCBIN "gfx/footprints/seismitoad.1bpp", footprint_top
INCBIN "gfx/footprints/throh.1bpp", footprint_top
INCBIN "gfx/footprints/sawk.1bpp", footprint_top
INCBIN "gfx/footprints/sewaddle.1bpp", footprint_top
INCBIN "gfx/footprints/swadloon.1bpp", footprint_top
INCBIN "gfx/footprints/leavanny.1bpp", footprint_top
; 041-048 bottom halves
INCBIN "gfx/footprints/tympole.1bpp", footprint_bottom
INCBIN "gfx/footprints/palpitoad.1bpp", footprint_bottom
INCBIN "gfx/footprints/seismitoad.1bpp", footprint_bottom
INCBIN "gfx/footprints/throh.1bpp", footprint_bottom
INCBIN "gfx/footprints/sawk.1bpp", footprint_bottom
INCBIN "gfx/footprints/sewaddle.1bpp", footprint_bottom
INCBIN "gfx/footprints/swadloon.1bpp", footprint_bottom
INCBIN "gfx/footprints/leavanny.1bpp", footprint_bottom
; 049-056 top halves
INCBIN "gfx/footprints/venipede.1bpp", footprint_top
INCBIN "gfx/footprints/whirlipede.1bpp", footprint_top
INCBIN "gfx/footprints/scolipede.1bpp", footprint_top
INCBIN "gfx/footprints/cottonee.1bpp", footprint_top
INCBIN "gfx/footprints/whimsicott.1bpp", footprint_top
INCBIN "gfx/footprints/petilil.1bpp", footprint_top
INCBIN "gfx/footprints/lilligant.1bpp", footprint_top
INCBIN "gfx/footprints/basculin.1bpp", footprint_top
; 049-056 bottom halves
INCBIN "gfx/footprints/venipede.1bpp", footprint_bottom
INCBIN "gfx/footprints/whirlipede.1bpp", footprint_bottom
INCBIN "gfx/footprints/scolipede.1bpp", footprint_bottom
INCBIN "gfx/footprints/cottonee.1bpp", footprint_bottom
INCBIN "gfx/footprints/whimsicott.1bpp", footprint_bottom
INCBIN "gfx/footprints/petilil.1bpp", footprint_bottom
INCBIN "gfx/footprints/lilligant.1bpp", footprint_bottom
INCBIN "gfx/footprints/basculin.1bpp", footprint_bottom
; 057-064 top halves
INCBIN "gfx/footprints/sandile.1bpp", footprint_top
INCBIN "gfx/footprints/krokorok.1bpp", footprint_top
INCBIN "gfx/footprints/krookodile.1bpp", footprint_top
INCBIN "gfx/footprints/darumaka.1bpp", footprint_top
INCBIN "gfx/footprints/darmanitan.1bpp", footprint_top
INCBIN "gfx/footprints/maractus.1bpp", footprint_top
INCBIN "gfx/footprints/dwebble.1bpp", footprint_top
INCBIN "gfx/footprints/crustle.1bpp", footprint_top
; 057-064 bottom halves
INCBIN "gfx/footprints/sandile.1bpp", footprint_bottom
INCBIN "gfx/footprints/krokorok.1bpp", footprint_bottom
INCBIN "gfx/footprints/krookodile.1bpp", footprint_bottom
INCBIN "gfx/footprints/darumaka.1bpp", footprint_bottom
INCBIN "gfx/footprints/darmanitan.1bpp", footprint_bottom
INCBIN "gfx/footprints/maractus.1bpp", footprint_bottom
INCBIN "gfx/footprints/dwebble.1bpp", footprint_bottom
INCBIN "gfx/footprints/crustle.1bpp", footprint_bottom
; 065-072 top halves
INCBIN "gfx/footprints/scraggy.1bpp", footprint_top
INCBIN "gfx/footprints/scrafty.1bpp", footprint_top
INCBIN "gfx/footprints/sigilyph.1bpp", footprint_top
INCBIN "gfx/footprints/yamask.1bpp", footprint_top
INCBIN "gfx/footprints/cofagrigus.1bpp", footprint_top
INCBIN "gfx/footprints/tirtouga.1bpp", footprint_top
INCBIN "gfx/footprints/carracosta.1bpp", footprint_top
INCBIN "gfx/footprints/archen.1bpp", footprint_top
; 065-072 bottom halves
INCBIN "gfx/footprints/scraggy.1bpp", footprint_bottom
INCBIN "gfx/footprints/scrafty.1bpp", footprint_bottom
INCBIN "gfx/footprints/sigilyph.1bpp", footprint_bottom
INCBIN "gfx/footprints/yamask.1bpp", footprint_bottom
INCBIN "gfx/footprints/cofagrigus.1bpp", footprint_bottom
INCBIN "gfx/footprints/tirtouga.1bpp", footprint_bottom
INCBIN "gfx/footprints/carracosta.1bpp", footprint_bottom
INCBIN "gfx/footprints/archen.1bpp", footprint_bottom
; 073-080 top halves
INCBIN "gfx/footprints/archeops.1bpp", footprint_top
INCBIN "gfx/footprints/trubbish.1bpp", footprint_top
INCBIN "gfx/footprints/garbodor.1bpp", footprint_top
INCBIN "gfx/footprints/zorua.1bpp", footprint_top
INCBIN "gfx/footprints/zoroark.1bpp", footprint_top
INCBIN "gfx/footprints/minccino.1bpp", footprint_top
INCBIN "gfx/footprints/cinccino.1bpp", footprint_top
INCBIN "gfx/footprints/gothita.1bpp", footprint_top
; 073-080 bottom halves
INCBIN "gfx/footprints/archeops.1bpp", footprint_bottom
INCBIN "gfx/footprints/trubbish.1bpp", footprint_bottom
INCBIN "gfx/footprints/garbodor.1bpp", footprint_bottom
INCBIN "gfx/footprints/zorua.1bpp", footprint_bottom
INCBIN "gfx/footprints/zoroark.1bpp", footprint_bottom
INCBIN "gfx/footprints/minccino.1bpp", footprint_bottom
INCBIN "gfx/footprints/cinccino.1bpp", footprint_bottom
INCBIN "gfx/footprints/gothita.1bpp", footprint_bottom
; 081-088 top halves
INCBIN "gfx/footprints/gothorita.1bpp", footprint_top
INCBIN "gfx/footprints/gothitelle.1bpp", footprint_top
INCBIN "gfx/footprints/solosis.1bpp", footprint_top
INCBIN "gfx/footprints/duosion.1bpp", footprint_top
INCBIN "gfx/footprints/reuniclus.1bpp", footprint_top
INCBIN "gfx/footprints/ducklett.1bpp", footprint_top
INCBIN "gfx/footprints/swanna.1bpp", footprint_top
INCBIN "gfx/footprints/vanillite.1bpp", footprint_top
; 081-088 bottom halves
INCBIN "gfx/footprints/gothorita.1bpp", footprint_bottom
INCBIN "gfx/footprints/gothitelle.1bpp", footprint_bottom
INCBIN "gfx/footprints/solosis.1bpp", footprint_bottom
INCBIN "gfx/footprints/duosion.1bpp", footprint_bottom
INCBIN "gfx/footprints/reuniclus.1bpp", footprint_bottom
INCBIN "gfx/footprints/ducklett.1bpp", footprint_bottom
INCBIN "gfx/footprints/swanna.1bpp", footprint_bottom
INCBIN "gfx/footprints/vanillite.1bpp", footprint_bottom
; 089-096 top halves
INCBIN "gfx/footprints/vanillish.1bpp", footprint_top
INCBIN "gfx/footprints/vanilluxe.1bpp", footprint_top
INCBIN "gfx/footprints/deerling.1bpp", footprint_top
INCBIN "gfx/footprints/sawsbuck.1bpp", footprint_top
INCBIN "gfx/footprints/emolga.1bpp", footprint_top
INCBIN "gfx/footprints/karrablast.1bpp", footprint_top
INCBIN "gfx/footprints/escavalier.1bpp", footprint_top
INCBIN "gfx/footprints/foongus.1bpp", footprint_top
; 089-096 bottom halves
INCBIN "gfx/footprints/vanillish.1bpp", footprint_bottom
INCBIN "gfx/footprints/vanilluxe.1bpp", footprint_bottom
INCBIN "gfx/footprints/deerling.1bpp", footprint_bottom
INCBIN "gfx/footprints/sawsbuck.1bpp", footprint_bottom
INCBIN "gfx/footprints/emolga.1bpp", footprint_bottom
INCBIN "gfx/footprints/karrablast.1bpp", footprint_bottom
INCBIN "gfx/footprints/escavalier.1bpp", footprint_bottom
INCBIN "gfx/footprints/foongus.1bpp", footprint_bottom
; 097-104 top halves
INCBIN "gfx/footprints/amoonguss.1bpp", footprint_top
INCBIN "gfx/footprints/frillish.1bpp", footprint_top
INCBIN "gfx/footprints/jellicent.1bpp", footprint_top
INCBIN "gfx/footprints/alomomola.1bpp", footprint_top
INCBIN "gfx/footprints/joltik.1bpp", footprint_top
INCBIN "gfx/footprints/galvantula.1bpp", footprint_top
INCBIN "gfx/footprints/ferroseed.1bpp", footprint_top
INCBIN "gfx/footprints/ferrothorn.1bpp", footprint_top
; 097-104 bottom halves
INCBIN "gfx/footprints/amoonguss.1bpp", footprint_bottom
INCBIN "gfx/footprints/frillish.1bpp", footprint_bottom
INCBIN "gfx/footprints/jellicent.1bpp", footprint_bottom
INCBIN "gfx/footprints/alomomola.1bpp", footprint_bottom
INCBIN "gfx/footprints/joltik.1bpp", footprint_bottom
INCBIN "gfx/footprints/galvantula.1bpp", footprint_bottom
INCBIN "gfx/footprints/ferroseed.1bpp", footprint_bottom
INCBIN "gfx/footprints/ferrothorn.1bpp", footprint_bottom
; 105-112 top halves
INCBIN "gfx/footprints/klink.1bpp", footprint_top
INCBIN "gfx/footprints/klang.1bpp", footprint_top
INCBIN "gfx/footprints/klinklang.1bpp", footprint_top
INCBIN "gfx/footprints/tynamo.1bpp", footprint_top
INCBIN "gfx/footprints/eelektrik.1bpp", footprint_top
INCBIN "gfx/footprints/eelektross.1bpp", footprint_top
INCBIN "gfx/footprints/elgyem.1bpp", footprint_top
INCBIN "gfx/footprints/beheeyem.1bpp", footprint_top
; 105-112 bottom halves
INCBIN "gfx/footprints/klink.1bpp", footprint_bottom
INCBIN "gfx/footprints/klang.1bpp", footprint_bottom
INCBIN "gfx/footprints/klinklang.1bpp", footprint_bottom
INCBIN "gfx/footprints/tynamo.1bpp", footprint_bottom
INCBIN "gfx/footprints/eelektrik.1bpp", footprint_bottom
INCBIN "gfx/footprints/eelektross.1bpp", footprint_bottom
INCBIN "gfx/footprints/elgyem.1bpp", footprint_bottom
INCBIN "gfx/footprints/beheeyem.1bpp", footprint_bottom
; 113-120 top halves
INCBIN "gfx/footprints/litwick.1bpp", footprint_top
INCBIN "gfx/footprints/lampent.1bpp", footprint_top
INCBIN "gfx/footprints/chandelure.1bpp", footprint_top
INCBIN "gfx/footprints/axew.1bpp", footprint_top
INCBIN "gfx/footprints/fraxure.1bpp", footprint_top
INCBIN "gfx/footprints/haxorus.1bpp", footprint_top
INCBIN "gfx/footprints/cubchoo.1bpp", footprint_top
INCBIN "gfx/footprints/beartic.1bpp", footprint_top
; 113-120 bottom halves
INCBIN "gfx/footprints/litwick.1bpp", footprint_bottom
INCBIN "gfx/footprints/lampent.1bpp", footprint_bottom
INCBIN "gfx/footprints/chandelure.1bpp", footprint_bottom
INCBIN "gfx/footprints/axew.1bpp", footprint_bottom
INCBIN "gfx/footprints/fraxure.1bpp", footprint_bottom
INCBIN "gfx/footprints/haxorus.1bpp", footprint_bottom
INCBIN "gfx/footprints/cubchoo.1bpp", footprint_bottom
INCBIN "gfx/footprints/beartic.1bpp", footprint_bottom
; 121-128 top halves
INCBIN "gfx/footprints/cryogonal.1bpp", footprint_top
INCBIN "gfx/footprints/shelmet.1bpp", footprint_top
INCBIN "gfx/footprints/accelgor.1bpp", footprint_top
INCBIN "gfx/footprints/stunfisk.1bpp", footprint_top
INCBIN "gfx/footprints/mienfoo.1bpp", footprint_top
INCBIN "gfx/footprints/mienshao.1bpp", footprint_top
INCBIN "gfx/footprints/druddigon.1bpp", footprint_top
INCBIN "gfx/footprints/golett.1bpp", footprint_top
; 121-128 bottom halves
INCBIN "gfx/footprints/cryogonal.1bpp", footprint_bottom
INCBIN "gfx/footprints/shelmet.1bpp", footprint_bottom
INCBIN "gfx/footprints/accelgor.1bpp", footprint_bottom
INCBIN "gfx/footprints/stunfisk.1bpp", footprint_bottom
INCBIN "gfx/footprints/mienfoo.1bpp", footprint_bottom
INCBIN "gfx/footprints/mienshao.1bpp", footprint_bottom
INCBIN "gfx/footprints/druddigon.1bpp", footprint_bottom
INCBIN "gfx/footprints/golett.1bpp", footprint_bottom
; 129-136 top halves
INCBIN "gfx/footprints/golurk.1bpp", footprint_top
INCBIN "gfx/footprints/pawniard.1bpp", footprint_top
INCBIN "gfx/footprints/bisharp.1bpp", footprint_top
INCBIN "gfx/footprints/bouffalant.1bpp", footprint_top
INCBIN "gfx/footprints/rufflet.1bpp", footprint_top
INCBIN "gfx/footprints/braviary.1bpp", footprint_top
INCBIN "gfx/footprints/vullaby.1bpp", footprint_top
INCBIN "gfx/footprints/mandibuzz.1bpp", footprint_top
; 129-136 bottom halves
INCBIN "gfx/footprints/golurk.1bpp", footprint_bottom
INCBIN "gfx/footprints/pawniard.1bpp", footprint_bottom
INCBIN "gfx/footprints/bisharp.1bpp", footprint_bottom
INCBIN "gfx/footprints/bouffalant.1bpp", footprint_bottom
INCBIN "gfx/footprints/rufflet.1bpp", footprint_bottom
INCBIN "gfx/footprints/braviary.1bpp", footprint_bottom
INCBIN "gfx/footprints/vullaby.1bpp", footprint_bottom
INCBIN "gfx/footprints/mandibuzz.1bpp", footprint_bottom
; 137-144 top halves
INCBIN "gfx/footprints/heatmor.1bpp", footprint_top
INCBIN "gfx/footprints/durant.1bpp", footprint_top
INCBIN "gfx/footprints/deino.1bpp", footprint_top
INCBIN "gfx/footprints/zweilous.1bpp", footprint_top
INCBIN "gfx/footprints/hydreigon.1bpp", footprint_top
INCBIN "gfx/footprints/larvesta.1bpp", footprint_top
INCBIN "gfx/footprints/volcarona.1bpp", footprint_top
INCBIN "gfx/footprints/cobalion.1bpp", footprint_top
; 137-144 bottom halves
INCBIN "gfx/footprints/heatmor.1bpp", footprint_bottom
INCBIN "gfx/footprints/durant.1bpp", footprint_bottom
INCBIN "gfx/footprints/deino.1bpp", footprint_bottom
INCBIN "gfx/footprints/zweilous.1bpp", footprint_bottom
INCBIN "gfx/footprints/hydreigon.1bpp", footprint_bottom
INCBIN "gfx/footprints/larvesta.1bpp", footprint_bottom
INCBIN "gfx/footprints/volcarona.1bpp", footprint_bottom
INCBIN "gfx/footprints/cobalion.1bpp", footprint_bottom
; 145-152 top halves
INCBIN "gfx/footprints/terrakion.1bpp", footprint_top
INCBIN "gfx/footprints/virizion.1bpp", footprint_top
INCBIN "gfx/footprints/tornadus.1bpp", footprint_top
INCBIN "gfx/footprints/thundurus.1bpp", footprint_top
INCBIN "gfx/footprints/reshiram.1bpp", footprint_top
INCBIN "gfx/footprints/zekrom.1bpp", footprint_top
INCBIN "gfx/footprints/landorus.1bpp", footprint_top
INCBIN "gfx/footprints/kyurem.1bpp", footprint_top
; 145-152 bottom halves
INCBIN "gfx/footprints/terrakion.1bpp", footprint_bottom
INCBIN "gfx/footprints/virizion.1bpp", footprint_bottom
INCBIN "gfx/footprints/tornadus.1bpp", footprint_bottom
INCBIN "gfx/footprints/thundurus.1bpp", footprint_bottom
INCBIN "gfx/footprints/reshiram.1bpp", footprint_bottom
INCBIN "gfx/footprints/zekrom.1bpp", footprint_bottom
INCBIN "gfx/footprints/landorus.1bpp", footprint_bottom
INCBIN "gfx/footprints/kyurem.1bpp", footprint_bottom
; 153-160 top halves
INCBIN "gfx/footprints/keldeo.1bpp", footprint_top
INCBIN "gfx/footprints/meloetta.1bpp", footprint_top
INCBIN "gfx/footprints/genesect.1bpp", footprint_top
INCBIN "gfx/footprints/victini.1bpp", footprint_top
INCBIN "gfx/footprints/chespin.1bpp", footprint_top
INCBIN "gfx/footprints/quilladin.1bpp", footprint_top
INCBIN "gfx/footprints/chesnaught.1bpp", footprint_top
INCBIN "gfx/footprints/fennekin.1bpp", footprint_top
; 153-160 bottom halves
INCBIN "gfx/footprints/keldeo.1bpp", footprint_bottom
INCBIN "gfx/footprints/meloetta.1bpp", footprint_bottom
INCBIN "gfx/footprints/genesect.1bpp", footprint_bottom
INCBIN "gfx/footprints/victini.1bpp", footprint_bottom
INCBIN "gfx/footprints/chespin.1bpp", footprint_bottom
INCBIN "gfx/footprints/quilladin.1bpp", footprint_bottom
INCBIN "gfx/footprints/chesnaught.1bpp", footprint_bottom
INCBIN "gfx/footprints/fennekin.1bpp", footprint_bottom
; 161-168 top halves
INCBIN "gfx/footprints/braixen.1bpp", footprint_top
INCBIN "gfx/footprints/delphox.1bpp", footprint_top
INCBIN "gfx/footprints/froakie.1bpp", footprint_top
INCBIN "gfx/footprints/frogadier.1bpp", footprint_top
INCBIN "gfx/footprints/greninja.1bpp", footprint_top
INCBIN "gfx/footprints/bunnelby.1bpp", footprint_top
INCBIN "gfx/footprints/diggersby.1bpp", footprint_top
INCBIN "gfx/footprints/fletchling.1bpp", footprint_top
; 161-168 bottom halves
INCBIN "gfx/footprints/braixen.1bpp", footprint_bottom
INCBIN "gfx/footprints/delphox.1bpp", footprint_bottom
INCBIN "gfx/footprints/froakie.1bpp", footprint_bottom
INCBIN "gfx/footprints/frogadier.1bpp", footprint_bottom
INCBIN "gfx/footprints/greninja.1bpp", footprint_bottom
INCBIN "gfx/footprints/bunnelby.1bpp", footprint_bottom
INCBIN "gfx/footprints/diggersby.1bpp", footprint_bottom
INCBIN "gfx/footprints/fletchling.1bpp", footprint_bottom
; 169-176 top halves
INCBIN "gfx/footprints/fletchindr.1bpp", footprint_top
INCBIN "gfx/footprints/talonflame.1bpp", footprint_top
INCBIN "gfx/footprints/scatterbug.1bpp", footprint_top
INCBIN "gfx/footprints/spewpa.1bpp", footprint_top
INCBIN "gfx/footprints/vivillon.1bpp", footprint_top
INCBIN "gfx/footprints/litleo.1bpp", footprint_top
INCBIN "gfx/footprints/pyroar.1bpp", footprint_top
INCBIN "gfx/footprints/flabebe.1bpp", footprint_top
; 169-176 bottom halves
INCBIN "gfx/footprints/fletchindr.1bpp", footprint_bottom
INCBIN "gfx/footprints/talonflame.1bpp", footprint_bottom
INCBIN "gfx/footprints/scatterbug.1bpp", footprint_bottom
INCBIN "gfx/footprints/spewpa.1bpp", footprint_bottom
INCBIN "gfx/footprints/vivillon.1bpp", footprint_bottom
INCBIN "gfx/footprints/litleo.1bpp", footprint_bottom
INCBIN "gfx/footprints/pyroar.1bpp", footprint_bottom
INCBIN "gfx/footprints/flabebe.1bpp", footprint_bottom
; 177-184 top halves
INCBIN "gfx/footprints/floette.1bpp", footprint_top
INCBIN "gfx/footprints/florges.1bpp", footprint_top
INCBIN "gfx/footprints/skiddo.1bpp", footprint_top
INCBIN "gfx/footprints/gogoat.1bpp", footprint_top
INCBIN "gfx/footprints/pancham.1bpp", footprint_top
INCBIN "gfx/footprints/pangoro.1bpp", footprint_top
INCBIN "gfx/footprints/furfrou.1bpp", footprint_top
INCBIN "gfx/footprints/espurr.1bpp", footprint_top
; 177-184 bottom halves
INCBIN "gfx/footprints/floette.1bpp", footprint_bottom
INCBIN "gfx/footprints/florges.1bpp", footprint_bottom
INCBIN "gfx/footprints/skiddo.1bpp", footprint_bottom
INCBIN "gfx/footprints/gogoat.1bpp", footprint_bottom
INCBIN "gfx/footprints/pancham.1bpp", footprint_bottom
INCBIN "gfx/footprints/pangoro.1bpp", footprint_bottom
INCBIN "gfx/footprints/furfrou.1bpp", footprint_bottom
INCBIN "gfx/footprints/espurr.1bpp", footprint_bottom
; 185-192 top halves
INCBIN "gfx/footprints/meowstic.1bpp", footprint_top
INCBIN "gfx/footprints/honedge.1bpp", footprint_top
INCBIN "gfx/footprints/doublade.1bpp", footprint_top
INCBIN "gfx/footprints/aegislash.1bpp", footprint_top
INCBIN "gfx/footprints/spritzee.1bpp", footprint_top
INCBIN "gfx/footprints/aromatisse.1bpp", footprint_top
INCBIN "gfx/footprints/swirlix.1bpp", footprint_top
INCBIN "gfx/footprints/slurpuff.1bpp", footprint_top
; 185-192 bottom halves
INCBIN "gfx/footprints/meowstic.1bpp", footprint_bottom
INCBIN "gfx/footprints/honedge.1bpp", footprint_bottom
INCBIN "gfx/footprints/doublade.1bpp", footprint_bottom
INCBIN "gfx/footprints/aegislash.1bpp", footprint_bottom
INCBIN "gfx/footprints/spritzee.1bpp", footprint_bottom
INCBIN "gfx/footprints/aromatisse.1bpp", footprint_bottom
INCBIN "gfx/footprints/swirlix.1bpp", footprint_bottom
INCBIN "gfx/footprints/slurpuff.1bpp", footprint_bottom
; 193-200 top halves
INCBIN "gfx/footprints/inkay.1bpp", footprint_top
INCBIN "gfx/footprints/malamar.1bpp", footprint_top
INCBIN "gfx/footprints/binacle.1bpp", footprint_top
INCBIN "gfx/footprints/barbaracle.1bpp", footprint_top
INCBIN "gfx/footprints/skrelp.1bpp", footprint_top
INCBIN "gfx/footprints/dragalge.1bpp", footprint_top
INCBIN "gfx/footprints/clauncher.1bpp", footprint_top
INCBIN "gfx/footprints/clawitzer.1bpp", footprint_top

; 193-200 bottom halves
INCBIN "gfx/footprints/inkay.1bpp", footprint_bottom
INCBIN "gfx/footprints/malamar.1bpp", footprint_bottom
INCBIN "gfx/footprints/binacle.1bpp", footprint_bottom
INCBIN "gfx/footprints/barbaracle.1bpp", footprint_bottom
INCBIN "gfx/footprints/skrelp.1bpp", footprint_bottom
INCBIN "gfx/footprints/dragalge.1bpp", footprint_bottom
INCBIN "gfx/footprints/clauncher.1bpp", footprint_bottom
INCBIN "gfx/footprints/clawitzer.1bpp", footprint_bottom
; 201-208 top halves
INCBIN "gfx/footprints/helioptile.1bpp", footprint_top
INCBIN "gfx/footprints/heliolisk.1bpp", footprint_top
INCBIN "gfx/footprints/tyrunt.1bpp", footprint_top
INCBIN "gfx/footprints/tyrantrum.1bpp", footprint_top
INCBIN "gfx/footprints/amaura.1bpp", footprint_top
INCBIN "gfx/footprints/aurorus.1bpp", footprint_top
INCBIN "gfx/footprints/sylveon.1bpp", footprint_top
INCBIN "gfx/footprints/hawlucha.1bpp", footprint_top
; 201-208 bottom halves
INCBIN "gfx/footprints/helioptile.1bpp", footprint_bottom
INCBIN "gfx/footprints/heliolisk.1bpp", footprint_bottom
INCBIN "gfx/footprints/tyrunt.1bpp", footprint_bottom
INCBIN "gfx/footprints/tyrantrum.1bpp", footprint_bottom
INCBIN "gfx/footprints/amaura.1bpp", footprint_bottom
INCBIN "gfx/footprints/aurorus.1bpp", footprint_bottom
INCBIN "gfx/footprints/sylveon.1bpp", footprint_bottom
INCBIN "gfx/footprints/hawlucha.1bpp", footprint_bottom
; 209-216 top halves
INCBIN "gfx/footprints/dedenne.1bpp", footprint_top
INCBIN "gfx/footprints/carbink.1bpp", footprint_top
INCBIN "gfx/footprints/goomy.1bpp", footprint_top
INCBIN "gfx/footprints/sliggoo.1bpp", footprint_top
INCBIN "gfx/footprints/goodra.1bpp", footprint_top
INCBIN "gfx/footprints/klefki.1bpp", footprint_top
INCBIN "gfx/footprints/phantump.1bpp", footprint_top
INCBIN "gfx/footprints/trevenant.1bpp", footprint_top
; 209-216 bottom halves
INCBIN "gfx/footprints/dedenne.1bpp",    footprint_bottom
INCBIN "gfx/footprints/carbink.1bpp",    footprint_bottom
INCBIN "gfx/footprints/goomy.1bpp",      footprint_bottom
INCBIN "gfx/footprints/sliggoo.1bpp",    footprint_bottom
INCBIN "gfx/footprints/goodra.1bpp",     footprint_bottom
INCBIN "gfx/footprints/klefki.1bpp",     footprint_bottom
INCBIN "gfx/footprints/phantump.1bpp",   footprint_bottom
INCBIN "gfx/footprints/trevenant.1bpp",  footprint_bottom
; 217-224 top halves
INCBIN "gfx/footprints/pumpkaboo.1bpp",  footprint_top
INCBIN "gfx/footprints/gourgeist.1bpp",  footprint_top
INCBIN "gfx/footprints/bergmite.1bpp",   footprint_top
INCBIN "gfx/footprints/avalugg.1bpp",    footprint_top
INCBIN "gfx/footprints/noibat.1bpp",     footprint_top
INCBIN "gfx/footprints/noivern.1bpp",    footprint_top
INCBIN "gfx/footprints/xerneas.1bpp",    footprint_top
INCBIN "gfx/footprints/yveltal.1bpp",    footprint_top
; 217-224 bottom halves
INCBIN "gfx/footprints/pumpkaboo.1bpp",  footprint_bottom
INCBIN "gfx/footprints/gourgeist.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bergmite.1bpp",   footprint_bottom
INCBIN "gfx/footprints/avalugg.1bpp",    footprint_bottom
INCBIN "gfx/footprints/noibat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/noivern.1bpp",    footprint_bottom
INCBIN "gfx/footprints/xerneas.1bpp",    footprint_bottom
INCBIN "gfx/footprints/yveltal.1bpp",    footprint_bottom
; 225-232 top halves
INCBIN "gfx/footprints/zygarde.1bpp",    footprint_top
INCBIN "gfx/footprints/diancie.1bpp",    footprint_top
INCBIN "gfx/footprints/hoopa.1bpp",      footprint_top
INCBIN "gfx/footprints/hoopa_u.1bpp",    footprint_top
INCBIN "gfx/footprints/volcanion.1bpp",  footprint_top
INCBIN "gfx/footprints/230.1bpp",        footprint_top
INCBIN "gfx/footprints/231.1bpp",        footprint_top
INCBIN "gfx/footprints/232.1bpp",        footprint_top
; 225-232 bottom halves
INCBIN "gfx/footprints/zygarde.1bpp",    footprint_bottom
INCBIN "gfx/footprints/diancie.1bpp",    footprint_bottom
INCBIN "gfx/footprints/hoopa.1bpp",      footprint_bottom
INCBIN "gfx/footprints/hoopa_u.1bpp",    footprint_bottom
INCBIN "gfx/footprints/volcanion.1bpp",  footprint_bottom
INCBIN "gfx/footprints/230.1bpp",        footprint_bottom
INCBIN "gfx/footprints/231.1bpp",        footprint_bottom
INCBIN "gfx/footprints/232.1bpp",        footprint_bottom
; 233-240 top halves
INCBIN "gfx/footprints/233.1bpp",        footprint_top
INCBIN "gfx/footprints/234.1bpp",        footprint_top
INCBIN "gfx/footprints/235.1bpp",        footprint_top
INCBIN "gfx/footprints/236.1bpp",        footprint_top
INCBIN "gfx/footprints/237.1bpp",        footprint_top
INCBIN "gfx/footprints/238.1bpp",        footprint_top
INCBIN "gfx/footprints/239.1bpp",        footprint_top
INCBIN "gfx/footprints/240.1bpp",        footprint_top
; 233-240 bottom halves
INCBIN "gfx/footprints/233.1bpp",        footprint_bottom
INCBIN "gfx/footprints/234.1bpp",        footprint_bottom
INCBIN "gfx/footprints/235.1bpp",        footprint_bottom
INCBIN "gfx/footprints/236.1bpp",        footprint_bottom
INCBIN "gfx/footprints/237.1bpp",        footprint_bottom
INCBIN "gfx/footprints/238.1bpp",        footprint_bottom
INCBIN "gfx/footprints/239.1bpp",        footprint_bottom
INCBIN "gfx/footprints/240.1bpp",        footprint_bottom
; 241-248 top halves
INCBIN "gfx/footprints/241.1bpp",        footprint_top
INCBIN "gfx/footprints/242.1bpp",        footprint_top
INCBIN "gfx/footprints/243.1bpp",        footprint_top
INCBIN "gfx/footprints/244.1bpp",        footprint_top
INCBIN "gfx/footprints/245.1bpp",        footprint_top
INCBIN "gfx/footprints/246.1bpp",        footprint_top
INCBIN "gfx/footprints/247.1bpp",        footprint_top
INCBIN "gfx/footprints/248.1bpp",        footprint_top
; 241-248 bottom halves
INCBIN "gfx/footprints/241.1bpp",        footprint_bottom
INCBIN "gfx/footprints/242.1bpp",        footprint_bottom
INCBIN "gfx/footprints/243.1bpp",        footprint_bottom
INCBIN "gfx/footprints/244.1bpp",        footprint_bottom
INCBIN "gfx/footprints/245.1bpp",        footprint_bottom
INCBIN "gfx/footprints/246.1bpp",        footprint_bottom
INCBIN "gfx/footprints/247.1bpp",        footprint_bottom
INCBIN "gfx/footprints/248.1bpp",        footprint_bottom
; 249-256 top halves
INCBIN "gfx/footprints/249.1bpp",        footprint_top
INCBIN "gfx/footprints/250.1bpp",        footprint_top
INCBIN "gfx/footprints/251.1bpp",        footprint_top
INCBIN "gfx/footprints/252.1bpp",        footprint_top
INCBIN "gfx/footprints/253.1bpp",        footprint_top
INCBIN "gfx/footprints/254.1bpp",        footprint_top
INCBIN "gfx/footprints/255.1bpp",        footprint_top
INCBIN "gfx/footprints/256.1bpp",        footprint_top
; 249-256 bottom halves
INCBIN "gfx/footprints/249.1bpp",        footprint_bottom
INCBIN "gfx/footprints/250.1bpp",        footprint_bottom
INCBIN "gfx/footprints/251.1bpp",        footprint_bottom
INCBIN "gfx/footprints/252.1bpp",        footprint_bottom
INCBIN "gfx/footprints/253.1bpp",        footprint_bottom
INCBIN "gfx/footprints/254.1bpp",        footprint_bottom
INCBIN "gfx/footprints/255.1bpp",        footprint_bottom
INCBIN "gfx/footprints/256.1bpp",        footprint_bottom
