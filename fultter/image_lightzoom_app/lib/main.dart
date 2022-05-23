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
        primarySwatch: Colors.red
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
  //property
  late String _lampImage; //Image Name
  late double _lampWidth; //Image Width 크기는 더블로
  late double _lampHeight; //Image Height 크기는 더블로
  late String _buttonName; //Button Name
  late bool _switch; //switch status
  late String _lampSizeStatus; //lamp Size status

  @override
  void initState() {
    // TODO: implement setState
    super.initState();  //화면이 뜨기전에 실행 되는것
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _buttonName = "Image 확대";
    _switch =true;
    _lampSizeStatus = 'small';

    
    
    

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:  const Text('Image확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 650,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset
                (_lampImage,
                width: _lampWidth,
                height: _lampHeight,
                ),
             ],
           ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed:(){
                    setState(() {
                      decisionLampSize();
                    });
                  },
                    child: Text(_buttonName),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '전구 스위치',
                        ),
                        Switch(
                          value: _switch,  //화면에 보여주는 값
                        onChanged:(value){
                          setState(() {  //화면이 바뀐다.
                          _switch =value;
                          decisionOnOff();
                            
                          });
                        },)
                      ],
                    )
              ],
            )
          ],
        ),
      ),
    );
  }


//Functions
decisionOnOff(){   //(넘겨줄 데이터 값)하지만 지금은 없다.
if(_switch){
  _lampImage = 'images/lamp_on.png';
}else{
  _lampImage = 'images/lamp_off.png';
}
}
decisionLampSize(){
 if(_lampSizeStatus == 'small'){
   _lampWidth = 300;
   _lampHeight = 600;
   _buttonName = "Image 축소";
   _lampSizeStatus = 'large';
 }else{
   _lampWidth = 150;
   _lampHeight = 300;
   _buttonName = "Image 확대";
   _lampSizeStatus = 'small';
 }
}

}
