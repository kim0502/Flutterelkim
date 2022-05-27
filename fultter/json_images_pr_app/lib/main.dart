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
        primarySwatch: Colors.yellow,
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
    getMOVIEData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Movies Test'),
      ),
      body: Center(
          child: data.isEmpty
              ? const Text('데이터가 없어요...') // 조건 ? T : F 즉 data.isEmpty가 조건임.
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                      SizedBox(
                        width: 60,
                        height: 80,
                        child: Card( 
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    data[index]['image'],
                                    width: 10,
                                  ),
                                  Text(
                                    "   ${data[index]['title']} ",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ]);
                  })),
    );
  }

  //functions
  Future<bool> getMOVIEData() async {
    var url = Uri.parse('https://zeushahn.github.io/Test/movies.json');
    var response = await http.get(url);

    setState(() {
      var dataConvertedMOVIE = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedMOVIE['results'];
      data.addAll(result);
    });

    return true;
  }
}//end
