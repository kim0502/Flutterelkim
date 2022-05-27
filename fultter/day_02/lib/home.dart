import 'package:day_02/controller.dart';
import 'package:day_02/message.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//property
  late TextEditingController _messageBox;
  late String _lampImage;

  @override
  void initState() {
    super.initState();
    _messageBox = TextEditingController();
    _lampImage = 'images/lamp_on.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Main 화면'),
          actions: [
            IconButton(
              onPressed: () {
                Message.content = _messageBox.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Controller();
                    },
                  ),
                ).then((value) => getData());
              },
              icon: const Icon(Icons.edit),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _messageBox,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: '글자를 입력하세요.',
                  ),
                ),
                Image.asset(
                  _lampImage,
                  width: 150,
                  height: 300,
                ),
              ],
            ),
          ),
        ));
  }

//function
  getData() {
    _messageBox.text = Message.content;
    setState(() {
      if (Message.lampStatus) {
        _lampImage = 'images/lamp_on.png';
      } else {
        _lampImage = 'images/lamp_off.png';
      }
    });
  }
}//end
