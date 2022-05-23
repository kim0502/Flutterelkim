import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scond Page'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('2 페이지!!!!!!!!'),
      ),
    );
  }
}