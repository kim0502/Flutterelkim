
import 'package:bmi_mini_team/sung/first.dart';
import 'package:bmi_mini_team/sung/second.dart';
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
        '/' :(context) => const FirstPage(),
        '/2' :(context) => const SecondPage()
      },

      initialRoute: '/',
 
    );
  }
}

