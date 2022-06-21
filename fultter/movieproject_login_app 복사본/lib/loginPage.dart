import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            Row(
              children: [
                SizedBox(
                  height: 100,
                ),
                const Text(
                  '로그인',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 14, 5, 193)),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintText: '아이디를 입력해주세요.',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 14, 5, 193)),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: '비밀번호를 입력해주세요.',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mainPage');
              },
              child: Text('로그인'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/joinPage');
                },
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}