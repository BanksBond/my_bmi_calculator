import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0A0D22),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff0A0D22), centerTitle: true),
      ),
      home: InputPage(),
    );
  }
}
