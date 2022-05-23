import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.yellow,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'text01_app'
        ),

      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,  
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'James',
                    style: TextStyle(
                      color : Colors.orange,
                      fontSize :10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cathy',
                    style: TextStyle(
                      color : Colors.orange,
                      fontSize :15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  Text(
                    'Karry',
                    style: TextStyle(
                      color : Colors.orange,
                      fontSize :20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                 child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                  Text(
                    'James',
                    style: TextStyle(
                      color : Colors.purple,
                      fontSize :20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cathy',
                    style: TextStyle(
                      color : Colors.purple,
                      fontSize :15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ), 
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Karry',
                    style: TextStyle(
                      color : Colors.purple,
                      fontSize :10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
              ],
            ),
               ),
          ],
          
        ),
      ),
         

    );
  }
}