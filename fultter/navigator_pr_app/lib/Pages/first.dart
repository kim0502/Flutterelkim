import 'package:flutter/material.dart';
import 'package:navigator_pr_app/Pages/second.dart';
import 'package:navigator_pr_app/Pages/third.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainPage'),
      ),
      body: Center(
        child:Column(
          children: [
            ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const second(),
                ));
          },
          child: const Text('pika2'),
        ),
            ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const third(),
                ));
          },
          child: const Text('pika3'),
        ),




          ],
          
        ) 
        

      ),
    );
  }
}
