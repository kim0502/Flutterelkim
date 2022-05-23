import 'package:alert_dialog_pr_app/Second.dart';
import 'package:flutter/material.dart';

class Alert1 extends StatelessWidget {
  const Alert1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert and push'),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () => _showDialog(context),
        child: Text('2페이지로'),
      )
      ),
    );
  }
}
//-- Functions
_showDialog(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
     builder: (BuildContext aaa){
       return AlertDialog(
         title: const Text('Page 이동'),
         content: const Text('아래의 버튼을 누르면 페이지 이동을 합니다.'),
         actions: [
           Center(
             child:
             TextButton(
               onPressed: (){
                 Navigator.of(aaa).pop(); // 이미 쌓여있는 alert를 없애고 다시 처음페이지를 보여주는것
                 Navigator.push(context,
                  MaterialPageRoute(
                  builder:(context) => const Second(),
                  ),
                 );
               },
               child: const Text('Page 이동'
               ),
             )
           ),
         ],
       );
     }
  );
}