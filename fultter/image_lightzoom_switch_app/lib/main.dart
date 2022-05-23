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

class _MyHomePageState extends State<MyHomePage> {
  //Property
  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;
  late bool _lampSize;
  late bool _lampSwitch;
  late String _lampSizeStatus;

  void initState(){
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _lampSize = true;
    _lampSwitch = true;
    _lampSizeStatus = 'samll';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              _lampImage,
              width: _lampWidth,
              height: _lampHeight,
            )
          ],
        ),
      ),
    );
  }
}
