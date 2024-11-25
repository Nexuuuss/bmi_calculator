import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({super.key, this.width = 0});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(width: 5),
        Text(
          'شاخص مثبت',
          style: TextStyle(color: greenBackground),
        ),
      ],
    );
  }
}
