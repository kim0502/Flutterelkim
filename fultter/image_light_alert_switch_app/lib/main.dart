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
  late String _lampImage;
  late String _button;
  late String _alert;

  void initState() {
    super.initState();
    _lampImage = 'images/lamp_on.png';

    _alert = "";
    _button = "on";
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert를 이용한 메세지 출력'),
      ),
      body: Center(
        child : Column(
          children: [
          // GestureDetector(
        
          // ),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _lampImage,
              width: 350,
              height: 650,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      TurnONoff();
                    });
                 },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    "켜기",
                  ),
                ),
                const SizedBox(
                  width: 30,
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      TurnonOFF();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    "끄기",
                  ),
                ),
              ],
            )
          ],
        ), 
          ],
        )
        
      ),
    );
  }

 //Function
TurnONoff(){
  if(_button=='on'){
    _lampImage = 'images/lamp_on.png';
  }else
  {_lampImage = 'images/lamp_off.png';}
}
TurnonOFF(){
  if(_button=='on'){_lampImage = 'images/lamp_off.png';
  }
}

// _showDialog(BuildContext context){
//   showDialog(
//     context: context,
//     barrierDismissible: false, //user must tap button!
//     builder: (BuildContext ctx){    //화면을 만드는건 builder이다.
//      return AlertDialog(
//        title:  const Text('경고'),
//        content: const Text('현재 램프가 켜진 상태입니다.'),
//        actions: [
//          Center( 
//            child:
//             TextButton(
//            onPressed:(){
//            Navigator.of(ctx).pop(); // pop 위에 내용을 날리면서 실행
//            },
//           child: const Text('네, 알겠습니다.'
//           ), 
//           ),
//          ),
//        ],
//      );
//     });
}