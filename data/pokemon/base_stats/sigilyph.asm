	db SIGILYPH ; 063

	db  72,  58,  80,  97, 103,  80
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sigilyph/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SNORE, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, DAZZLINGLEAM, NIGHTMARE, FLY, FLASH, ICE_BEAM
	; end
