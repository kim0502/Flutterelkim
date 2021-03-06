import 'package:flutter/material.dart';

import 'view/insert_list.dart';
import 'view/table_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const TableList(),
        '/insert': (context) => const InsertList(),
      
      },
      initialRoute: '/',
    );
  }
}
