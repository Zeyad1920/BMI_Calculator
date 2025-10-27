import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/widgets/home_screem.dart';

void main() {
  runApp(const BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: HomeScreen(),
    );
  }
}

