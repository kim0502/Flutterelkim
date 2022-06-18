import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
        primary: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
           const Text('회원가입',
            style: TextStyle(
              fontSize: 40,
              letterSpacing: 5,
              color: Colors.white,
              fontStyle: FontStyle.normal,
               ) ,
            ),
            TextField(
              decoration: InputDecoration(labelText: '이름을 입력하세요'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(labelText: '아이디를 입력하세요'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(labelText: '비밀번호를 입력하세요'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(labelText: '이메일을 입력하세요'),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}