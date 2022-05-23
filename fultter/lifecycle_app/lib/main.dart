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
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String _buttonState;
  late String _buttonAAA;
  late Color _buttonColor;
  

  @override
  void initState() {
    _buttonState = "OFF";
    _buttonAAA = "버튼을 누르세요";
    _buttonColor = Colors.red;
    super.initState();

  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter life Cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _onClick();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_buttonColor),
              ),
              child:  Text(_buttonAAA),
            ),
            const SizedBox(
              height: 50,
            ),
            Text("버튼 상태 : $_buttonState"),
      

          ],
        ),
      ),
    );
  }

//--Function
  _onClick() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
      } else {
        _buttonState = 'OFF';
      }

      if(_buttonAAA == '버튼을 누르세요'){
        _buttonAAA = 'press button';
      }else{
        _buttonAAA = '버튼을 누르세요';
      }

      if(_buttonColor == Colors.red){
        _buttonColor = Colors.yellow ;
      }else{
        _buttonColor = Colors.red ;
      }
    });
  }
}
