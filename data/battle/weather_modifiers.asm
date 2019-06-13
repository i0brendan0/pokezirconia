WeatherTypeModifiers:
	db WEATHER_RAIN, WATER, MORE_EFFECTIVE
	db WEATHER_RAIN, FIRE,  NOT_VERY_EFFECTIVE
	db WEATHER_SUN,  FIRE,  MORE_EFFECTIVE
	db WEATHER_SUN,  WATER, NOT_VERY_EFFECTIVE
	db -1 ; end

WeatherMoveModifiers:
	db WEATHER_RAIN, EFFECT_SOLARBEAM, NOT_VERY_EFFECTIVE
	db WEATHER_SANDSTORM, EFFECT_SOLARBEAM, NOT_VERY_EFFECTIVE
	db WEATHER_HAIL, EFFECT_SOLARBEAM, NOT_VERY_EFFECTIVE
	db WEATHER_SUNNY, EFFECT_BLIZZARD, NOT_VERY_EFFECTIVE
	db WEATHER_SANDSTORM, EFFECT_ROCK_STORM, MORE_EFFECTIVE
	db -1 ; end
