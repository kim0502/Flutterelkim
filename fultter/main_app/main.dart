import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text(
        'Text Exercise 01',
        ),
    ),
    body : Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            '유비',
          ),
          Text(
            '관우',
          ),
          Text(
            '장비',
          ),
          Text(
            '',
          ),
          Text(
            '조조'
          ),
          Text(
            '여포',
            ),
            Text(
              '동탁',
              ),
        ],
      ),
    )
    );
  }
}