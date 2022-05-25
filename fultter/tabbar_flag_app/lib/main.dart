import 'package:flutter/material.dart';
import 'package:tabbar_flag_app/first_page.dart';
import 'package:tabbar_flag_app/flag_item.dart';
import 'package:tabbar_flag_app/second_page.dart';

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

class _MyHomePageState extends State<MyHomePage>
with SingleTickerProviderStateMixin {
  //property
  late TabController controller;
  List<Flag> flagList =[];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);

    flagList.add(Flag(
      firstName: '오.....',
       flagName: 'austria',
      imagePath: 'images/austria.png'));

    flagList.add(Flag(
      firstName: '벨.....',
       flagName: 'belgium',
      imagePath: 'images/belgium.png'));

    flagList.add(Flag(
      firstName: '이.....',
       flagName: 'estonia',
      imagePath: 'images/estonia.png'));

    flagList.add(Flag(
      firstName: '프.....',
       flagName: 'france',
      imagePath: 'images/france.png'));

    flagList.add(Flag(
      firstName: '독.....',
       flagName: 'germany',
      imagePath: 'images/germany.png'));

    flagList.add(Flag(
      firstName: '헝.....',
       flagName: 'hungary',
      imagePath: 'images/hungary.png'));

    flagList.add(Flag(
      firstName: '이.....',
       flagName: 'italy',
      imagePath: 'images/italy.png'));

    flagList.add(Flag(
      firstName: '라.....',
       flagName: 'latvia',
      imagePath: 'images/latvia.png'));

    flagList.add(Flag(
      firstName: '이.....',
       flagName: 'lithuania',
      imagePath: 'images/lithuania.png'));

    flagList.add(Flag(
      firstName: '룩.....',
       flagName: 'luxemburg',
      imagePath: 'images/luxemburg.png'));

    flagList.add(Flag(
      firstName: '네.....',
       flagName: 'netherland',
      imagePath: 'images/netherland.png'));

    flagList.add(Flag(
      firstName: '루.....',
       flagName: 'romania',
      imagePath: 'images/netherland.png'));

    flagList.add(Flag(
      firstName: '대.....',
       flagName: 'korea',
      imagePath: 'images/korea.png'));


  }

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:  const Text(" 국기 "),
    ),
    body: TabBarView(
      controller: controller,
      children: [
        FirstPage(list: flagList),
        SecondPage(),
      ],
    ),
    bottomNavigationBar: Container(
      color: Colors.black,
      height: 70,
      child: TabBar(
        controller: controller,
        tabs: const[
          Tab(
            icon: Icon(
              Icons.ac_unit_sharp,
              color: Colors.white,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.ac_unit_sharp,
              color: Colors.white60,
              ),
          )
        ]

      )
    ),
  );  
  }
}


