import 'package:dio/dio.dart';
import 'package:weatherapp/constants.dart';
import 'package:weatherapp/models/weathermodel.dart';

class weatherservices {
  Future<WeatherModel> GetWeather({required String cityname}) async {
    Response response =
        await Dio().get('$domain/v1/forecast.json?$ApiKey&q=$cityname&days=1');
    WeatherModel weatherModel = WeatherModel.fromjson(response.data);
    return weatherModel;
  }
}
