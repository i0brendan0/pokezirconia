; Multiplier ratios for all stats from modifier -6 to +6
; (except accuracy, see data/battle/accuracy_multipliers.asm).

; This table is identical to data/battle/stat_multipliers_2.asm.
; This one is used by CalcBattleStats.

StatLevelMultipliers:
	db 2, 8 ; -6 =  25%
	db 2, 7 ; -5 =  28%
	db 2, 6 ; -4 =  33%
	db 2, 5 ; -3 =  40%
	db 2, 4 ; -2 =  50%
	db 2, 3 ; -1 =  66%
	db 2, 2 ;  0 = 100%
	db 3, 2 ; +1 = 150%
	db 4, 2 ; +2 = 200%
	db 5, 2 ; +3 = 250%
	db 6, 2 ; +4 = 300%
	db 7, 2 ; +5 = 350%
	db 8, 2 ; +6 = 400%
