import 'package:flutter/material.dart';
import 'package:listview_todo_app/model/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({Key? key}) : super(key: key);

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;
  late bool _buy;
  late bool _time;
  late bool _study;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
    _buy = true;
    _time = false;
    _study = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '구매',
                  ),
                  Switch(value: _buy, onChanged: (value) {
                    setState(() {
                      _buy=value;
                      _time=false;
                      _study=false;
                      checkTodo();
                      trueSw();
                    });
                  }),
                  Image.asset('images/cart.png'),
                ],
              ),
              Row(
                children: [
                  Text(
                    '약속',
                  ),
                  Switch(value: _time, onChanged: (value) {
                    setState(() {
                      _time=value;
                      _buy=false;
                      _study=false;
                      checkTodo();
                      trueSw();
                    });
                  }),
                  Image.asset('images/clock.png'),
                ],
              ),
              Row(
                children: [
                  Text(
                    '스터디',
                  ),
                  Switch(value: _study, onChanged: (value) {
                    setState(() {
                      _study = value;
                      _buy=false;
                      _time=false;
                      checkTodo();
                      trueSw();
                    });
                  }),
                  Image.asset('images/pencil.png'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: '목록을 입력 하세요.',
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (textEditingController.text.trim().isNotEmpty) {
                    addList();
                    checkTodo();
                  }
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

  //Function
  addList() {
    //Message.imagePath = "images/pencil.png";
    Message.workList = textEditingController.text;
    Message.action = true;
  }
  checkTodo(){
    if(_buy){
      Message.imagePath='images/cart.png';
    }else if(_time ){
      Message.imagePath='images/clock.png';
    }else{
       Message.imagePath='images/pencil.png';
    }
  }
  trueSw(){
    if(!_time && !_study){
      _buy=true;
    }
  }
}//End