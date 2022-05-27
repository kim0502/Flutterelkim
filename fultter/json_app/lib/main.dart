import 'dart:convert';

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
        title: const Text('Json Test'),
      ),
      body: Center(
          child: data.isEmpty
              ? const Text('데이터가 없습니다.')
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  'Code : ',
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
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
    );
  }

  //functions   async : 비동기 함수 -같이뛰기
  Future<bool> getJSONData() async {
    var url = Uri.parse('http://localhost:8080/Flutter/student_query_flutter.jsp');
    var response = await http.get(url); //실행은 되고 데이터를 가지고 왔고 기다리는중ㅡ, 
    //전체를 세트로 생각하기

    setState(() {
      var dataConvertedJSON =
          json.decode(utf8.decode(response.bodyBytes)); //한글해줄때 외국에서 사용안함 
      List result = dataConvertedJSON['results'];
      data.addAll(result);
    });//값을 가지고 와서 results가 class명이라고 생각함. 물어보기

    // print(result);
     print(data[1]['code']);
    return true;
  }
}//end
