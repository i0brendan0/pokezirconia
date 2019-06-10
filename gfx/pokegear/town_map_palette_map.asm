	const_def
	const PAL_TOWNMAP_BORDER    ; 0 [border/icons]     WHITE, YELLOW, ORANGE, BLACK
	const PAL_TOWNMAP_SHORE     ; 1 [water/lowland]    BLUE,  TAN,    GREEN,  DARK
	const PAL_TOWNMAP_MOUNTAIN  ; 2 [lowland/highland] GREEN, DARK,   BROWN,  BLACK
	const PAL_TOWNMAP_SNOWY     ; 3 [snowy]            GREEN, DARK,   BROWN,  GRAY
	const PAL_TOWNMAP_TOWN      ; 4 [town]             WHITE, LIGHT,  BLUE,   DARK
	const PAL_TOWNMAP_CITY      ; 5 [city]             WHITE, LIGHT,  RED,    DARK
	const PAL_TOWNMAP_POI       ; 6 [poi]              WHITE, LIGHT,  GREEN,  DARK
	const PAL_TOWNMAP_LANDMARK  ; 7 [cave/forest]      BLUE,  GREEN,  BROWN,  BLACK

townmappals: MACRO
rept _NARG / 2
	dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
	shift
	shift
endr
ENDM

; gfx/pokegear/town_map.png
	townmappals SHORE,    SHORE,    SHORE,    SHORE, SHORE, SHORE,    BORDER, BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, TOWN,  SHORE, LANDMARK, SHORE,  SHORE

	townmappals SHORE,    SHORE,    SHORE,    SHORE, SHORE,    SHORE,    BORDER, BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, CITY,  LANDMARK, LANDMARK, SHORE,  SHORE

	townmappals SHORE,    SHORE,    SHORE,    SHORE, SHORE,  SHORE,  BORDER, BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, POI,   BORDER, BORDER, BORDER, BORDER

	townmappals SNOWY, SNOWY, SNOWY, SNOWY,  SNOWY,  SNOWY, SNOWY, SNOWY
	townmappals SNOWY, SNOWY, SNOWY, BORDER, BORDER, SHORE, SHORE, SHORE

	townmappals SNOWY, SNOWY, SNOWY,  SNOWY,  MOUNTAIN, SNOWY,    SNOWY,    SNOWY
	townmappals SNOWY, SNOWY, BORDER, BORDER, BORDER,   MOUNTAIN, MOUNTAIN, MOUNTAIN
; gfx/pokegear/pokegear.png
	townmappals BORDER, BORDER, BORDER, BORDER, CITY,   CITY,   CITY,   BORDER
	townmappals BORDER, BORDER, BORDER, BORDER, BORDER, BORDER, BORDER, BORDER

	townmappals CITY, CITY, CITY, CITY, CITY, CITY, CITY, CITY
	townmappals CITY, CITY, CITY, CITY, CITY, CITY, CITY, BORDER
	
	townmappals CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY
	townmappals BORDER, BORDER, BORDER, BORDER, BORDER, BORDER, BORDER, BORDER