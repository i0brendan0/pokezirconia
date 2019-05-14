	const_def
	const PAL_TOWNMAP_BORDER   ; 0 [border/road] WHITE, BLUE, YELLOW, ORANGE
	const PAL_TOWNMAP_EARTH    ; 1 [shore]       LIGHT, BLUE, GREEN, DARK
	const PAL_TOWNMAP_MOUNTAIN ; 2 [inland]      ???, BROWN, GREEN, DARK
	const PAL_TOWNMAP_CITY     ; 3 [no change]   
	const PAL_TOWNMAP_POI      ; 4 [city]        GRAY, LIGHT,  RED, DARK
	const PAL_TOWNMAP_POI_MTN  ; 5 [poi]         GRAY, LIGHT, BLUE, DARK

townmappals: MACRO
rept _NARG / 2
	dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
	shift
	shift
endr
ENDM

; gfx/pokegear/town_map.png
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   POI,      EARTH,    EARTH,    BORDER
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, EARTH,    POI_MTN,  EARTH,    EARTH,    BORDER
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER,   BORDER,   BORDER
; gfx/pokegear/pokegear.png
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   POI,      POI,      POI,      BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
