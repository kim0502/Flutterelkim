import 'package:flutter/material.dart';
import 'package:tappbar_animals_app/animal_item.dart';
import 'package:tappbar_animals_app/first_page.dart';
import 'package:tappbar_animals_app/second_page.dart';

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
  List<Animal> animalList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);

    animalList.add(Animal(
        animalName: '벌',
        kind: '곤충',
        imagePath: "images/bee.png",
        flyExist: true));

    animalList.add(Animal(
        animalName: '고양이',
        kind: '포유류',
        imagePath: "images/cat.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '소',
        kind: '포유류',
        imagePath: "images/cow.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '개',
        kind: '포유류',
        imagePath: "images/dog.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '여우',
        kind: '포유류',
        imagePath: "images/fox.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '원숭이',
        kind: '포유류',
        imagePath: "images/monkey.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '돼지',
        kind: '포유류',
        imagePath: "images/pig.png",
        flyExist: false));

    animalList.add(Animal(
        animalName: '늑대',
        kind: '포유류',
        imagePath: "images/wolf.png",
        flyExist: false));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animal List"),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(list: animalList),
          SecondPage(list: animalList),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.purple,
        height: 70,
        child: TabBar(
          controller: controller,
          tabs: const[
            Tab(
              icon: Icon(
                Icons.looks_one,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
