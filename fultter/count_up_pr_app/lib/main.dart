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
       
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _Homestate();
}

class _Homestate extends State<MyHomePage> {
  //-
  late int num1;

  void initState(){
    num1 = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up & Down'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '현재 클릭수는 $num1 입니다.'
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed:(){
                    setState(() {
                      num1++;
                    });
                  },
                   child: const Icon(Icons.add),
                   ),
                   const SizedBox(
                     width: 30,
                   ),
                 FloatingActionButton(
                  onPressed:(){
                    setState(() {
                      num1--;
                    });
                  },
                   child: const Icon(Icons.remove),
                   ),  

              ],
            )
          ],
        ),
      ),
    );
  }
}
