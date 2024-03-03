import 'package:flutter/material.dart';

class WeatherInfoView extends StatelessWidget {
  const WeatherInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
          ),
          Text(
            'Updated at 23:46',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image.asset(''),
              Text(
                '17',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Max temp : 20',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Min temp: 10',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 80),
          Text(
            'Cloudy',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 35,
            ),
          )
        ],
      ),
    );
  }
}
