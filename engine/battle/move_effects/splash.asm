BattleCommand_Splash:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	ret z
	call AnimateCurrentMove
	call PrintNothingHappened
	ld hl, wBattleScriptBufferAddress
	ld a, LOW(Splash_NotRainingEarlyEnd)
	ld [hli], a
	ld [hl], HIGH(Splash_NotRainingEarlyEnd)
	ret
