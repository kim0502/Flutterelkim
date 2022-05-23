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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {   //stl엔터치기, class의 마이 홈페이지를 작성해주기
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(                        //키값은 소문자, 데이터는 대문자
      title: const Text(
        'Text Exercise 01',
        ),
        centerTitle: false,
       backgroundColor: Colors.green, 
    ),
    body : Center(
      child: Column(                    //여러줄이 필요하니깐 컬럼사용
        mainAxisAlignment: MainAxisAlignment.center,                     
        children: const [
          Divider(
          height: 30,
         color: Colors.grey,
         thickness: 1.5,
         ),
         Text(
            '유비',
          ),
          Text(
            '관우',
          ),
          Text(
            '장비',
          ),
        Divider(
          height: 30,
         color: Colors.grey,
         thickness: 1.5,
         ),
          Text(
            '조조',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
          ),
          Text(
            '여포',
            ),
            Text(
              '동탁',
              ),
              Divider(
          height: 30,
         color: Colors.grey,
         thickness: 1.5,
         ),
        ],
      ),
    )
    );
  }
}