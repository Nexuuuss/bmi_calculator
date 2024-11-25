import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/home_screen.dart';
import 'package:bmi_calculator/widgets/background_shape_left.dart';
import 'package:bmi_calculator/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';
// import 'screen/screen_test.dart';

void main() {
  runApp(Appllication());
}

class Appllication extends StatelessWidget {
  const Appllication({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
