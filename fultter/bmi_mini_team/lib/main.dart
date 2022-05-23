import 'package:bmi_mini_team/eun/main.dart';
import 'package:bmi_mini_team/hyeog/startPage.dart';
import 'package:bmi_mini_team/sung/first.dart';
import 'package:bmi_mini_team/sunga/screen.dart';
import 'package:bmi_mini_team/tae/home.dart';
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
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Team Mini Project"),
      ),
      body: TabBarView(
        controller: controller,
        children: [Eun(),StartPage(),FirstPage(),First(),Home()],
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
            text: "me",
          ),
           Tab(
              icon:Icon(
                Icons.add_link,
            color:Colors.yellow,
            ),
            text: "hyeog",
          ),
           Tab(
              icon:Icon(
                Icons.account_balance,
            color:Colors.purple,
            ),
            text: "sung",
          ),
           Tab(
              icon:Icon(
                Icons.account_circle,
            color:Colors.orange,
            ),
            text: "sunga",
          ),
          Tab(
              icon:Icon(
                Icons.access_alarm,
            color:Colors.red,
            ),
            text: "tae",
          ),
          ],
        ),
        ),
    );
  }
}