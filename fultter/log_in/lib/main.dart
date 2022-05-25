import 'package:flutter/material.dart';
import 'package:log_in/second.dart';

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
  late String id;
  late String pw;

  @override
  void initState() {
    id = "aaa";
    pw = "aaa";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.account_circle),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(labelText: '사용자 ID 입력하세요.'),
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: '패스워드를 입력하세요.'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {    
                setState(() {
                LogIn();  
                _showDialog(context);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('다시 입력하세요.'),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.red,
                  ),
                
                );
              },
              child: const Text(
                'Log in',
              ),
            ),
            // GestureDetector(
            //   onTap: () => _showDialog(context),
            // )
          ],
        ),
      ),
    );
  }

  //functions
_showDialog(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
     builder: (BuildContext context){
       return AlertDialog(
         title: const Text('Log in'),
         content: const Text('환영합니다.'),
         actions: [
           Center(
             child:
             TextButton(
               onPressed: (){
                 Navigator.of(context).pop(); // 이미 쌓여있는 alert를 없애고 다시 처음페이지를 보여주는것
                 Navigator.push(context,
                  MaterialPageRoute(
                  builder:(context) => const Second(),
                  ),
                 );
               },
               child: const Text('ok'
               ),
             )
           ),
         ],
       );
     }
  );
}

  LogIn(){
    if(id=='aaa' && pw=='aaa'){
      _showDialog(context);
    }
  }


  // _showDialog(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: const Text('Page 이동'),
  //           content: const Text('아래의 버튼을 누르면 페이지 이동을 합니다.'),
  //           actions: [
  //             Center(
  //                 child: TextButton(
  //               onPressed: () {
  //                 //  LogIn();
  //                 Navigator.of(context)
  //                     .pop(); // 이미 쌓여있는 alert를 없애고 다시 처음페이지를 보여주는것
  //                 Navigator.push(
  //                   context,
  //                   MaterialPageRoute(
  //                     builder: (context) => const Second(),
  //                   ),
  //                 );
  //               },
  //               child: const Text('Page 이동'),
  //             )),
  //           ],
  //         );
  //       });
  // }



}//end
