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
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alert'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context),
          child: Text(
            'Hello World'
            ),
          ),
      ),
    );
  }
}
//-- Functions
_showDialog(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false, //user must tap button!
    builder: (BuildContext ctx){    //화면을 만드는건 builder이다.
     return AlertDialog(
       title:  const Text('Alert Title'),
       content: const Text('Hello World를\n Touch했습니다.'),
       actions: [
         Center( 
           child:
            TextButton(
           onPressed:(){
           Navigator.of(ctx).pop(); // pop 위에 내용을 날리면서 실행
           },
          child: const Text('종료'
          ), 
          ),
         ),
       ],
     );
    });
}