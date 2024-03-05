abstract class WeatherState {}

class NoWeatherInfoState extends WeatherState {} //  initial state

class WeatherInfoLoadedState extends WeatherState {}

class WeatherFailerState extends WeatherState {}
