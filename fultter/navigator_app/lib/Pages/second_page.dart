

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
       backgroundColor: Colors.red, 
       elevation: 1.0, //bar에 그림자 없애기
      ),
      
       body: Center(
        child: ElevatedButton(
          onPressed: () {
        Navigator.pop(context);   
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all (Colors.red),
          ),
          
          child: const Text('Go to the second Page'),
        ),
      ),

    );
    
  }
}