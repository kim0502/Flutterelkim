import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tabbar_app/first_page.dart';
import 'package:tabbar_app/second.dart';

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
//-----------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //tabbar를 만드는것

  //property
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('tab bar'),
      // ),
      body: TabBarView(
        controller: controller,
        children: [FirstPage(), SecondPage()],
      ),
      bottomNavigationBar: Container(
        color:  Colors.yellowAccent,
        height: 100,
        child: TabBar(
          controller: controller,
          labelColor: Colors.blueAccent,
          indicatorColor: Colors.red,
          tabs: const[
            Tab(
              icon:Icon(
                Icons.looks_one,
            color:Colors.blue,
            ),
            text: "Two",
          ),
          Tab(
              icon:Icon(
                Icons.looks_two,
            color:Colors.red,
            ),
            text: "Two",
          ),
          ],
        ),
      ),
    );
  }
}
