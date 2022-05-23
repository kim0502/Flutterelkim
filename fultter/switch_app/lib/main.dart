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
  late bool switchValue;
  late Color _switchColor;

@override
  void initState() {
    // TODO: implement initState
    switchValue = false;
    _switchColor=Colors.red;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Switch(
    value: switchValue,
    onChanged: (value){   //실행조건
      setState(() { // builder에게 알려주는것
        switchValue = value;
      if(_switchColor == Colors.red){
        _switchColor = Colors.blue;
      }else{
        _switchColor = Colors.red;
      }
      });
     
    },
  ),
    ElevatedButton(
      
      onPressed:(){
        _onClick();
        },
        style:  ButtonStyle(
          backgroundColor: MaterialStateProperty.all(_switchColor),
        ),
        child: Text('버튼이야'),
        ),
    ],
  ) 
  

),
    );
  }
  _onClick(){
    setState(() {
      if(_switchColor == Colors.red){
        _switchColor = Colors.blue;
      }else{
        _switchColor = Colors.red;
      }
    });
  }
}
