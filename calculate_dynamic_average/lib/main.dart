import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:calculate_dynamic_average/views/calculate_average.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) {
                return CalculateAverage();
              },
            );
        }
      },
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        primarySwatch: Constants.mainColor, //13:05
        visualDensity:
            VisualDensity.adaptivePlatformDensity, // her platforma özel görünüm
      ),
    );
  }
}
