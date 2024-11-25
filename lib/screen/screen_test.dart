import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class ScreenTest extends StatefulWidget {
  const ScreenTest({super.key});

  @override
  State<ScreenTest> createState() => _ScreenTestState();
}

class _ScreenTestState extends State<ScreenTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('press me'),
                ),
                InkWell(
                  onTap: () => setState(() {
                    counter = counter + 1;
                  }),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Text('ddd'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
