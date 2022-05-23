import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
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
  
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('Image Swiping'),

      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: _onHorizontalSwipe,
        onVerticalSwipe: _onVerticalSwipe,
        child: Center(
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
      ),
    );


  }

  //-- Functions
  _onHorizontalSwipe(SwipeDirection direction){
    setState(() {
      if(direction == SwipeDirection.left){
        currentImage +=1;
        if(currentImage >= imageName.length){
          currentImage = 0;
        }
      }else{
        currentImage -=1;
        if(currentImage < 0 ){
          currentImage = imageName.length -1;
        }
      }
    });
  }

  _onVerticalSwipe(SwipeDirection direction){
    setState(() {
      if(direction == SwipeDirection.down){
         currentImage +=1;
        if(currentImage >= imageName.length){
          currentImage = 0;
        }
      }else{
        currentImage -=1;
        if(currentImage < 0 ){
          currentImage = imageName.length -1;
        }
      }
    });
  }




}