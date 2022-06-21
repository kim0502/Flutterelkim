// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animation_list/animation_list.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {
      'title': '배우',
      //'text': const Text('배우'),
      'backgroundColor': Colors.grey,
    },
    {
      'title': '감독',
      //'text': const Text('감독'),
      'backgroundColor': Colors.grey,
    },
    {
      'title': '예측',
      // 'text': const Text('예측'),
      'backgroundColor': Colors.grey,
    },
    {
      'title': '그래프',
      // 'text': const Text('그래프'),
      'backgroundColor': Colors.grey,
    },
  ];

  Widget _buildTile(String str, Color backgroundColor, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (str == "배우") {
          Navigator.pushNamed(context, '/aPage');
        }
        if (str == "감독") {
          Navigator.pushNamed(context, '/dPage');
        }
        if (str == "예측") {
          Navigator.pushNamed(context, '/pPage');
        }
        if (str == "그래프") {
          Navigator.pushNamed(context, '/gPage');
        }
      },
      child: Container(
        child: Center(
          child: Text(
            str,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: backgroundColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimationList(
            children: data.map((item) {
          return _buildTile(item['title'], item['backgroundColor'], context);
        }).toList()),
      ),
    );
  }
}