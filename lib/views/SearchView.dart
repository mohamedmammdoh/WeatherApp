import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getweathercubit/getweathercubit.dart';

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
          onSubmitted: (cityname) {
            var getweathercubit = BlocProvider.of<WeatherCubit>(context);
            getweathercubit.getweather(cityname: cityname);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
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
