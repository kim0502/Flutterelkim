import 'dart:async';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late TextEditingController controller1;
  late String displayCharacter;
  late String character;
  late List str;
  late int index;

  @override
  void initState() {
    controller1 = TextEditingController();
    displayCharacter = '';
    character = "";
    str = displayCharacter.split('');
    index = -1;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('광고 문구를 입력하세요.'),
                    //Decoration(),
                  ],
                ),
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                 controller: controller1,
                decoration: const InputDecoration(labelText: '글자를 입력하세요.'),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 40,
              ),
              OutlinedButton(     
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 5, 5, 5),
                  side: const BorderSide(
                      color: Color.fromARGB(240, 246, 3, 3), width: 2.0),
                ),
                child: const Text(
                  '광고 문구 생성',
                ),
              ),
            ],
           ),
         ),
       ),
      body: Center(
        child: Text(character),
      ),
    );
  }

//-- Functions
  displayChars() {
    setState(() {
      index++;
      if (index >= displayCharacter.length) {
        index = 0;
         character = '';
       
      }

      character += str[index];
    });
  }
}
