import 'dart:convert';

import 'package:crud_pr_student_app/main.dart';
import 'package:crud_pr_student_app/message.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  //
  late TextEditingController codeController;
  late TextEditingController nameController;
  late TextEditingController deptController;
  late TextEditingController phoneController;

  late String code;
  late String name;
  late String dept;
  late String phone;
  late String result;

  @override
  void initState() {
    super.initState();
   codeController = TextEditingController();
    nameController = TextEditingController();
    deptController = TextEditingController();
    phoneController = TextEditingController();

   codeController.text =Message.code;
    nameController.text =Message.name;
    deptController.text =Message.dept;
    phoneController.text =Message.phone;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update page'
        ),
      ),
      body: Center(
      child: Column(
            children: [
              TextField(
                controller: codeController,
                decoration: const InputDecoration(
                  labelText: '학번을 입니다.',
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: '성명을 수정하세요.',
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: deptController,
                decoration: const InputDecoration(
                  labelText: '전공을 수정하세요.',
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: '전화번호를 수정하세요.',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  insertAction();
                },
                child: const Text('수정'),
              ),
            ],
          ),
        ),
      );
    
  }
  //function
 insertAction() async {
    var url = Uri.parse(
        'http://localhost:8080/Flutter/student_update_return_flutter.jsp?code=${codeController.text}&name=${nameController.text}&dept=${deptController.text}&phone=${phoneController.text}');
    var response = await http.get(url);
    print(url);
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      result = dataConvertedJSON['result'];
    });

    Navigator.pop(context);
  }


}