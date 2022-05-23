import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  //Property
  late TextEditingController textEditingController;
  // 매번 setState로 작업해주기 귀찮아서 만들어둔 컨드롤러
  
  void initState(){
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
        title: const Text(
          '오후는 너무 졸렵다'
        ),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(labelText: '글자를 입력 하세요!!' ),
                keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed:(){
                    // 사용자 입력 내용 확인
                    // textEditingController.text에 사용자가 입력한 내용이 들어옴
                    if(textEditingController.text.trim().isEmpty){
                      error(context);
                    }else{
                      show(context);
                    }
                  },
                   child: const Text('출력'),
                   ),
            ],
          ),
        ),
      ),
    );
  }




  //--- Functions
  // Desc : 텍스트필드에 입력을 안하고 버튼을 눌렀을 경우
  error(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
        "글자를 입력하기",
        ),
         duration: Duration(seconds: 2),
         backgroundColor: Colors.amber,
          ),
    );
  }

  // Desc: 정상적으로 글자 보여주기
  show(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "입력하신 글자는 ${textEditingController.text.trim()} 입니다."
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.orange,
        )
    );
  }
}
