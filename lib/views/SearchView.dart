import 'package:flutter/material.dart';
import 'package:weatherapp/models/weathermodel.dart';
import 'package:weatherapp/services/weatherservices.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'Search a City',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 230.0,
          right: 8.0,
          left: 8.0,
        ),
        child: TextField(
          onSubmitted: (cityname) async {
            WeatherModel weatherModel = await WeatherServices().GetWeather(
              cityname: cityname,
            );
            print(weatherModel.city);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            // enabledBorder: const OutlineInputBorder(
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(20),
            //   ),
            // ),
            // focusedBorder: const OutlineInputBorder(
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(20),
            //   ),
            // ),
            contentPadding: EdgeInsets.all(25),
            hintText: 'Enter City Name',
            labelText: 'Search',
            suffixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }
}
