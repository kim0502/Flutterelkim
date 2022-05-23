import 'package:flutter/material.dart';

class Screen2nd extends StatelessWidget {
  const Screen2nd ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2nd'),
          backgroundColor: Colors.cyan,
      ),
      body: const Center(
        child: Text(
          '22222222',
          style:  TextStyle(fontSize: 20),
        ),
      ),
      
    );
  }
}