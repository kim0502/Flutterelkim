
import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pika2'),
      ),
      body: Center(
        child: Image.asset(          
                  'images/pika2.png',
                  width: 150,
                  height: 150,
                ),
              ),
      
    );
  }
}