import 'dart:ffi';

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
    
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
 class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //--
  late int count;

  void initState(){
    count = 0;
    super.initState();      // 미정
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count App',
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            '현재 클릭 수는 $count 입니다.'
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              onPressed:(){
                setState((){
                  count++;
                });
              },
             child: const Icon(Icons.add),
             ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            count++;
          });
        },
         child: const Icon(Icons.add),
         ),
        
    );
  }
}
