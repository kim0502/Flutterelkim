import 'dart:convert';

import 'package:crud_pr_student_app/delete.dart';
import 'package:crud_pr_student_app/insert.dart';
import 'package:crud_pr_student_app/message.dart';
import 'package:crud_pr_student_app/update.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  late List data;

  @override
  void initState() {
    super.initState();
    data = [];
    getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD for Student'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
               MaterialPageRoute(builder:((context) => const InsertPage()
               ),
               ));
              
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
          child: data.isEmpty
              ? const Text('데이터가 없습니다.')
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        updateData(index);
                   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpdatePage(),
                    )).then((value) => getJSONData());
                      },
                      onLongPress: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeletePage(),
                    ));//.then((value) => deleteData());
                      },
                      child: Card(
                        
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Code :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[index]['code'],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Name :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[index]['name'],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Dept :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[index]['dept'],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Phone :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[index]['phone'],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
    );
  }

//function

updateData(int index) {
    Message.code = data[index]["code"];
    Message.name = data[index]["name"];
    Message.dept = data[index]["dept"];
    Message.phone = data[index]["phone"];
}
upresultData(int index){
  data[index]['code'] = Message.code;
  data[index]['name'] = Message.name;
  data[index]['dept'] = Message.dept;
  data[index]['phone'] = Message.phone;
}
  Future<bool> getJSONData() async {
    var url =
        Uri.parse('http://localhost:8080/Flutter/student_query_flutter.jsp');
    var response = await http.get(url);

    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];
      data = result;
    });

    return true;
  }
}//end
