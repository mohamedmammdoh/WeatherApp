import 'package:flutter/material.dart';

class NoWeatheView extends StatelessWidget {
  const NoWeatheView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        textAlign: TextAlign.center,
        'There is No weather ! Start Searching Now ',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30,
        ),
      ),
    );
  }
}
