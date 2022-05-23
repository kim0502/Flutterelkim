
import 'package:bmi_mini_team/hyeog/calPage.dart';
import 'package:bmi_mini_team/hyeog/resultPage.dart';
import 'package:bmi_mini_team/hyeog/startPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "startPage" :(context) => const StartPage(),
        "calPage" :(context) => const CalPage(),
        "resultPage" :(context) => const ResultPage(),
      },
      initialRoute: "startPage",
      debugShowCheckedModeBanner: false,
    );
  }
}
