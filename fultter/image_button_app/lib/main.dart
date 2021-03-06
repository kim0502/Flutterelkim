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
        primarySwatch: Colors.red,
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

class _MyHomePageState extends State<MyHomePage> {
  late List imageFile;
  late int currentPage;
  late int currentPage2;

  @override
  void initState() {
    super.initState();
    imageFile = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    currentPage = 0;
    currentPage2 = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('무한 이미지 반복'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                imageFile[currentPage],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 10,
                      ),
                    ),
                    child: Image.asset(
                      'images/${imageFile[currentPage]}',
                      width: 400,
                      height: 600,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 18,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 5
                      )
                    ),
                    child: Image.asset(
                      'images/${imageFile[currentPage2]}',
                      fit: BoxFit.fill,
                      width: 100,
                      height: 150,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        prevButton();
                        
                      });
                    },
                    child: const Text('<< 이전'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nextButton();
                       
                      });
                    },
                    child: const Text('다음 >>'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // --- Functions
  nextButton() {
    currentPage++;
    
    if (currentPage >= imageFile.length) {
      currentPage = 0;
    }
       currentPage2++;
    if (currentPage2 >= imageFile.length) {
      currentPage2 = 0;
    }
  }

  prevButton() {
    currentPage--;
    if (currentPage < 0) {
      currentPage = imageFile.length - 1;
    }
    currentPage2--;
  if(currentPage2 <0){
  currentPage2 = imageFile.length -1;
  }
}

  } // End
