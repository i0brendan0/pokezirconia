BattleCommand_RockStormAccuracy:
; thunderaccuracy

	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	inc hl
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	ret nz
	ld [hl], 60 percent
	ret
