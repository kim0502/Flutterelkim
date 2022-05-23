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

  void initState() {
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
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('램프크기'),
                Switch(
                    value: _lampSize,
                    onChanged: (value) {
                      setState(() {
                        _lampSize = value;
                        decisionBigSmall();
                      });
                    }),
                Text('램프 온오프'),
                Switch(
                    value: _lampSwitch,
                    onChanged: (value) {
                      setState(() {
                        _lampSwitch = value;
                        decisionOnOff();
                      });
                    }),
              ],
            ),
          ],
        ),
        ),
        );
  }

//Function
  decisionBigSmall() {
    if (_lampSizeStatus == 'small') {
      _lampWidth = 300;
      _lampHeight = 600;
      _lampSizeStatus = 'large';
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
      _lampSizeStatus = 'small';
    }
  }

  decisionOnOff() {
    if (_lampSwitch) {
      _lampImage = 'images/lamp_on.png';
    } else {
      _lampImage = 'images/lamp_off.png';
    }
  }
}
