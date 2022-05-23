import 'package:flutter/material.dart';

class H extends StatelessWidget {
  const H({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                         //전체배경 바꿀때 작성하기
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Image Padding'),
        centerTitle: false,                //왼쪽으로 타이틀을 붙일때
      ),
      body:  SingleChildScrollView(   //위젯하고 적기 싱글모시기 스크롤하려면!
        child: Center(
          child: Column(                      //여러개이니 컬럼으로 진행
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(          //Image.asset는 딱 한개밖에 못한다.
                  'images/pikachu-1.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/pikachu-2.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/pikachu-3.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
