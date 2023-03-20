import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color(0xFF0A0E21),
            onPrimary: Colors.white,
            secondary: Color(0xFF68FFDA),
            onSecondary: Color(0xFF0A0E21),
            error: Colors.grey,
            onError: Colors.red,
            background: Color(0xFF0A0E21),
            onBackground: Colors.white,
            surface: Color(0xFF0A0E21),
            onSurface: Colors.white),
      ),
      home: const InputPage(),
    );
  }
}
