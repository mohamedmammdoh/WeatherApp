import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getweathercubit/getweatherstates.dart';
import 'package:weatherapp/models/weathermodel.dart';
import 'package:weatherapp/services/weatherservices.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(NoWeatherInfoState()); //    initial state

  getweather({required String cityname}) async {
    try {
      WeatherModel weatherModel = await WeatherServices().GetWeather(
        cityname: cityname,
      );
      emit(WeatherInfoLoadedState());
    } on Exception catch (e) {
      emit(WeatherFailerState());
    }
  }
}
