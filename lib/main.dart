import 'package:bmi/bmi_calc.dart';
import 'package:flutter/material.dart';
import 'bmi_res.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: BmiCalc(),
   );
  }



}


