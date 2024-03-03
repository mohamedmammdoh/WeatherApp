import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp/constants.dart';
import 'package:weatherapp/models/weathermodel.dart';

class WeatherServices {
  // ignore: non_constant_identifier_names
  Future<WeatherModel> GetWeather({required String cityname}) async {
    try {
      Response response = await Dio()
          .get('$domain/v1/forecast.json?$ApiKey&q=$cityname&days=1');

      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errormassage = e.response?.data['error']['message'] ??
          'opps there is error , try later';
      throw Exception(errormassage);
    } catch (e) {
      log(e.toString());
      throw Exception('there is error , try later');
    }
  }
}
