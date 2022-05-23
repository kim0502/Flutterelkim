import 'dart:async';

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
  // Property
  late List imageName;
  late int currentImage;

  
  @override
  void initState(){
    imageName =[
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png'
      ];
      currentImage = 0;

      //Timer설치
      Timer.periodic(const Duration(seconds:3),(Timer timer) {
        changeImage();
       });
  
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('3초 마다 이미지 무한 반복'),

      ),
      body: 
      // SimpleGestureDetector(
      //   onHorizontalSwipe: _onHorizontalSwipe,
      //   onVerticalSwipe: _onVerticalSwipe,
      //   child: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageName[currentImage],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 10,
                      ),
                    ),
                  child: Image.asset(
                    'images/${imageName[currentImage]}',
                    width: 250,
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                  ),
                ),
        

            ],
          ),
        ),
      // ),
    );


  }
  //--Functions
  changeImage(){
    setState(() {
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage = 0;
      }
    });
  }

  //-- Functions
  // _onHorizontalSwipe(SwipeDirection direction){
  //   setState(() {
  //     if(direction == SwipeDirection.left){
  //       currentImage +=1;
  //       if(currentImage >= imageName.length){
  //         currentImage = 0;
  //       }
  //     }else{
  //       currentImage -=1;
  //       if(currentImage < 0 ){
  //         currentImage = imageName.length -1;
  //       }
  //     }
  //   });
  // }

  // _onVerticalSwipe(SwipeDirection direction){
  //   setState(() {
  //     if(direction == SwipeDirection.down){
  //        currentImage +=1;
  //       if(currentImage >= imageName.length){
  //         currentImage = 0;
  //       }
  //     }else{
  //       currentImage -=1;
  //       if(currentImage < 0 ){
  //         currentImage = imageName.length -1;
  //       }
  //     }
  //   });
  // }




}