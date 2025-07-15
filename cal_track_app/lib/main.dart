import 'package:flutter/material.dart';

void main() {
  runApp(const CalorieTrackApp());
}

class CalorieTrackApp extends StatelessWidget {
  const CalorieTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorie Track App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Scaffold(
        body: Center(
          child: Text('Hello Calorie Track App!'),
        ),
      ),
    );
  }
}
