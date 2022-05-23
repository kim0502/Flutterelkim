
import 'package:bmi_mini_team/tae/bmiinsert.dart';
import 'package:bmi_mini_team/tae/bmiresult.dart';
import 'package:bmi_mini_team/tae/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        '/' :(context) => const Home(),
        'bmiinsert' :(context) => const BmiInsert(),
        'bmiresult' :(context) => const BmiResult(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
