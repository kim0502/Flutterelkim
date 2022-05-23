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
      debugShowCheckedModeBanner: false, //위에 버그없애는법
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Icon'),
      backgroundColor: Colors.amberAccent,
      foregroundColor: Colors.black,
      leading: IconButton(
        onPressed:(){},
        icon: const Icon(Icons.menu),    //햄버거 버튼
        ),
        actions: [
          IconButton(onPressed:(){},
          icon: const Icon(Icons.email),  //오른쪽 정렬
          ),
          IconButton(onPressed:(){},
          icon: const Icon(Icons.alarm),  //오른쪽 정렬
          ),
          IconButton(onPressed:(){},
          icon: const Icon(Icons.add_outlined  //오른쪽 정렬
          ),
          ),
          GestureDetector(
           onTap: () {
             //
           }, 
            child:Image.asset(
            'images/smile.png',
            width: 30,
            height: 30,
            ), 
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),

    );
  }
}
