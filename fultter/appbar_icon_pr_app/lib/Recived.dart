import 'package:flutter/material.dart';

class Received extends StatelessWidget {
  const Received({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recived'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          '메일 받았다!',
        ),
      ),
    );
  }
}