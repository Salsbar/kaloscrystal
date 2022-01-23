; Pokémon swarms in grass

SwarmGrassWildMons: ; 0x2b8d0

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, ROGGENROLA
	db 3, KLEFKI
	db 2, WOOBAT
	db 2, AUDINO
	db 2, KLEFKI
	db 4, KLEFKI
	db 4, KLEFKI
	; day
	db 3, ROGGENROLA
	db 3, KLEFKI
	db 2, WOOBAT
	db 2, AUDINO
	db 2, KLEFKI
	db 4, KLEFKI
	db 4, KLEFKI
	; nite
	db 3, ROGGENROLA
	db 3, KLEFKI
	db 2, WOOBAT
	db 2, AUDINO
	db 2, KLEFKI
	db 4, KLEFKI
	db 4, KLEFKI

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, LILLIPUP
	db 12, PANCHAM
	db 12, DURANT
	db 14, DURANT
	db 14, FLETCHLING
	db 10, GOTHITA
	db 10, GOTHITA
	; day
	db 12, LILLIPUP
	db 12, PANCHAM
	db 12, DURANT
	db 14, DURANT
	db 14, FLETCHLING
	db 10, GOTHITA
	db 10, GOTHITA
	; nite
	db 12, LILLIPUP
	db 12, PANCHAM
	db 12, DURANT
	db 14, DURANT
	db 14, DUCKLETT
	db 10, MUNNA
	db 10, MUNNA

	db -1 ; end
