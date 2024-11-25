import 'package:bmi_calculator/widgets/background_shape_left.dart';
import 'package:bmi_calculator/widgets/background_shape_right.dart';
import 'package:bmi_calculator/widgets/chart_bmi.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final heightControl = TextEditingController();
  final weightControl = TextEditingController();
  double resultBmi = 0;
  String resultText = '';
  double withBad = 10;
  double withGood = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('تو چنده؟ BMI '),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: weightControl,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                        color: redBackground,
                        fontSize: 30,
                      ),
                      cursorColor: redBackground,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: redBackground.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightControl,
                      cursorColor: redBackground,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: redBackground, fontSize: 30),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: Colors.red.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightControl.text);
                  final height = double.parse(heightControl.text);
                  setState(() {
                    resultBmi = weight / (height * height);
                    if (resultBmi > 25) {
                      withBad = 270;
                      withGood = 30;
                      resultText = 'شما اضافه وزن دارید';
                    } else if (resultBmi <= 25 && resultBmi >= 18.5) {
                      withBad = 30;
                      withGood = 270;
                      resultText = 'وزن شما نرمال است';
                    } else {
                      withBad = 10;
                      withGood = 10;
                      resultText = 'وزن شما از حد نرمال خارج است';
                    }
                  });
                },
                child: Text(
                  '!محاسبه کن',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              SizedBox(height: 40),
              Text(
                '${resultBmi.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 64,
                ),
              ),
              Text(
                '$resultText',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: red500,
                ),
              ),
              SizedBox(height: 80),
              RightShape(width: withBad),
              SizedBox(height: 15),
              LeftShape(width: withGood),
              SizedBox(height: 70),
              TextButton(
                style: TextButton.styleFrom(
                    minimumSize: Size(300, 40), backgroundColor: redBackground),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ChartBmi();
                      },
                    ),
                  );
                },
                child: Text(
                  'دیدن نمودار',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
