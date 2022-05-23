import 'package:flutter/material.dart';
import 'package:navigator_app/Pages/fourth.dart';
import 'package:navigator_app/Pages/second_page.dart';
import 'package:navigator_app/Pages/third.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
            child: const Text('Go to the second Page'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ));
            },
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo),
             ),
            child: const Text('Go to the third Page'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FourthPage(),
                  ));
            },
               style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lime),
             ),
            child: const Text('Go to the fourth Page'),
          ),
          ],
          ),
        
         
      ),
    );
  }
}
