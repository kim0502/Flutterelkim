
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Third Page'),
       backgroundColor: Colors.brown, 
       elevation: 1.0, //bar에 그림자 없애기
      ),
      
       body: Center(
         child:Column(
           children: [
            Image.asset(
           'images/pika1.png',
            width: 150,
            height: 300,
            ),
         ElevatedButton(
          onPressed: () {
        Navigator.pop(context);   
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all (Colors.deepPurple),
          ),
          
          child: const Text('Go to the third Page'),
        ),

           ],
         ),

         
      ),
    );
  }
}