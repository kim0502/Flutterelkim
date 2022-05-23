

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
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

  class _HomeState extends State<Home> {
  late TextEditingController First;
  late TextEditingController Second;
  late int result;
  late String emt;
  
  void initState(){
  First = TextEditingController();
  Second = TextEditingController(); 
  result = 0;  
  emt = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(                   // 첫번째 숫자를 입력하세요. 두번째 숫자를 입력하세요.를 입력할때 글이 작아진다.
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('간단한 덧셈 계산기'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  '결과 : $result 입니다.',
                style: const TextStyle(
                  fontSize : 20,
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: First,
                    decoration: const InputDecoration(labelText: '첫번째 숫자를 입력하세요.'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: Second,
                  decoration: const InputDecoration(labelText: '두번째 숫자를 입력하세요.'),
                  keyboardType: TextInputType.number,
                ),
                
                ElevatedButton.icon(    //.icon으로 class가 변하면, 아이콘과 라벨을 같이작성 할 수 있다. 단, icon은 무조건 앞에 있다.
                  onPressed:(){
                  error(context);
                  },
                   icon: const Icon(Icons.add),
                   label : const Text(
                     "덧셈 계산"
                   ),
                   ),
                  Text(
                    emt,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                    ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //--Functions
error(BuildContext context){
  if (First.text.isEmpty || Second.text.isEmpty){       //둘다 없어도 라는 의미도 포함되어있다.
    showSnackBar(context, "숫자를 입력해주세요", Colors.red);
    setState(() {
      emt = "";
    });
  }else{
    showSnackBar(context, "덧셈 진행", Colors.blueAccent);
    setState(() {
      result = int.parse(First.text)+int.parse(Second.text);
      emt = "압력한 숫자의 합은 $result 입니다.";
    });
  }
}
// snackbar 제공 함수
  showSnackBar(BuildContext context, String result, Color col) {    //위에 showSnackBar(context,string,color)로 구성된것을 변수로 묶어서 만들었다. 
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          result,
          ),
          duration: Duration(seconds: 2),
          backgroundColor: col,
        ),
      );
  }
    
  }

 










