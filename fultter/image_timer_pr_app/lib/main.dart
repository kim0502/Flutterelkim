import 'dart:async';

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
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String displayCharacter;
  late String character;
  late List str;
  late int index;

  @override
  void initState() {
    displayCharacter = '대한민국';
    character = "";
    str = displayCharacter.split('');
    index = -1;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      displayChars();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      body: Center(
        child: Text(character),
      ),
    );
  }

//-- Functions
  displayChars() {
    setState(() {
      index++;
      if (index >= displayCharacter.length) {
        index = 0;
        character = '';
      }

      character += str[index];
    });
  }
}
