

import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Fourth Page'),
       backgroundColor: Colors.lightGreen, 
       elevation: 1.0, //bar에 그림자 없애기
      ),
      
       body: Center(
         child:Column(
           children: [
            Image.asset(
           'images/pika2.png',
            width: 150,
            height: 300,
            ),
         ElevatedButton(
          onPressed: () {
        Navigator.pop(context);   
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all (Colors.white24),
          ),
          
          child: const Text('Go to the fourth Page'),
        ),

           ],
         ),

         
      ),
    );
  }
}