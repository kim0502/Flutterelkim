
import 'package:bmi_mini_team/sunga/bmi_result.dart';
import 'package:bmi_mini_team/sunga/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
         '/': (context) => const First(),
        '/second': (context) => const Second(),
      },
      initialRoute: '/',
    );
  }
}
