import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        primary : true,
        elevation : 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          //이미지 넣기
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 600,
              ),
             ElevatedButton(
               onPressed:(){
                Navigator.pushNamed(context
                , '/loginPage');
               }, child: Text("로그인"))
               ],
          ),
        ),
        ),
        
      ),
    );
  }
}