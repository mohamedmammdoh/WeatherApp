class WeatherModel {
  final double mintemp;
  final double maxtep;
  final double avgtemp;
  final String image;
  final String city;
  final String dateupdated;
  final String weathermode;

  WeatherModel(
      {required this.mintemp,
      required this.maxtep,
      required this.avgtemp,
      required this.image,
      required this.city,
      required this.dateupdated,
      required this.weathermode});
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxtep: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      avgtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      city: json['location']['name'],
      dateupdated: json['current']['last_updated'],
      weathermode: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
