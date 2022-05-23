import 'package:flutter/material.dart';
import 'package:image_button_tabbar/bottom.dart';
import 'package:image_button_tabbar/swipe.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
 
 //property
 late TabController controller;

@override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('bar'),
      // ),
      body: TabBarView(
        controller: controller,
        children: [BottonPage(),SwipePage()],
        ),
        bottomNavigationBar: Container(
          child: TabBar(
          controller: controller,
          labelColor: Colors.blueAccent,
          indicatorColor: Colors.red,
          tabs: const[
            Tab(
              icon:Icon(
                Icons.ac_unit,
            color:Colors.blue,
            ),
            text: "Button",
          ),
          Tab(
              icon:Icon(
                Icons.access_alarm,
            color:Colors.red,
            ),
            text: "Swipe",
          ),
          ],
        ),
        ),
    );
  }
}


