import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getweathercubit/getweathercubit.dart';
import 'package:weatherapp/cubits/getweathercubit/getweatherstates.dart';
import 'package:weatherapp/models/WeatherInfoView.dart';
import 'package:weatherapp/views/NoWeatherview.dart';
import 'package:weatherapp/views/SearchView.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ));
              },
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        //to listen the cubit

        builder: (context, state) {
          if (state is NoWeatherInfoState) {
            return const NoWeatheView();
          } else if (state is WeatherInfoLoadedState) {
            return const WeatherInfoView();
          } else {
            return const Text('Opps there is an error');
          }
        },
      ),
    );
  }
}
