BattleCommand_StartRain:
; startrain
	ld b, WEATHER_RAIN
	ld hl, DownpourText
	jr StartWeather

BattleCommand_StartSun:
; startsun
	ld b, WEATHER_SUN
	ld hl, SunGotBrightText
	jr StartWeather
	
BattleCommand_StartSandstorm:
; startsandstorm
	ld b, WEATHER_SANDSTORM
	ld hl, SandstormBrewedText
	jr StartWeather

BattleCommand_StartHail:
; starthail
	ld b, WEATHER_HAIL
	ld hl, StartedToHailText
StartWeather:
	ld a, [wBattleWeather]
	cp b
	jr z, .failed
	
	ld a, b
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	jp StdBattleTextBox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
