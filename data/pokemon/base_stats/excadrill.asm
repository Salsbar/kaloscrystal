	db EXCADRILL ; 063

	db 110, 135,  60,  88,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, STEEL ; type
	db 60 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/excadrill/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, FLASH_CANNON, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, ROCK_SLIDE, DETECT, REST, ATTRACT, CUT, STRENGTH
	; end
