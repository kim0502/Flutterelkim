import 'package:day_02/message.dart';
import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  //property
  late TextEditingController _messagesBox;
  late bool switchValue;
  late String switchLable;

  @override
  void initState() {
    super.initState();
    _messagesBox = TextEditingController();
    _messagesBox.text = Message.content;

    if (Message.lampStatus) {
      switchValue = true;
      switchLable = 'On';
    } else {
      switchValue = false;
      switchLable = 'Off';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정화면'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _messagesBox,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(switchLable),
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                        if (value) {
                          switchLable = 'On';
                        } else {
                          switchLable = 'Off';
                        }
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Message.content = _messagesBox.text;
                  Message.lampStatus = switchValue;
                  Navigator.pop(context);
                },
                child: const Text('ok'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
