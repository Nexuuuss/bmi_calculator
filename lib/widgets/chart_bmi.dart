import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/home_screen.dart';

class ChartBmi extends StatelessWidget {
  const ChartBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI نمودار'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Image(
                // height: 400,
                image: AssetImage(
                  'images/bmii.png',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'تحلیل شاخص توده بدنی بزرگسالان ( سن ۱۹ سال و بالاتر )',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: blueDeep,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'تحلیل نتیجه محاسبه BMI بزرگسالان ۱۹ ساله یا سن بالاتر ، مطابق تقسیم بندی زیر میباشد. (جنسیت تاثیری ندارد)',
                style: TextStyle(color: black),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 30),
              textTode(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textTode() {
    var list = [
      ' کمتر از ۱۸/۵ : کمبود وزن BMI',
      ' بین ۱۸/۵ تا ۲۴/۵ : وزن سلامت BMI',
      ' بین ۲۵ تا ۲۹/۹ : اضافه وزن BMI',
      'بیشتر از ۳۰ : چاقی  BMI         ',
    ];
    return Wrap(
      spacing: 30,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: [
        for (var Lists in list)
          Text(
            '$Lists',
            style: TextStyle(color: greenBackground),
            textAlign: TextAlign.center,
          ),
        // SizedBox(height: ),
      ],
    );
  }
}
