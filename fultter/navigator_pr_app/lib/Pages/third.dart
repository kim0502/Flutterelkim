

import 'package:flutter/material.dart';

class third extends StatelessWidget {
  const third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pika3'),
      ),
      body: Center(
        child: Image.asset(          
                  'images/pika3.png',
                  width: 150,
                  height: 150,
                ),
              ),
    );
    
  }
}