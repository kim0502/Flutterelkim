import 'package:flutter/material.dart';


class Send extends StatelessWidget {
  const Send({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send'),
      backgroundColor: Colors.blue,
      ),
      body: Center(
        child:
        Text('문자보내내내엔 다아아아',),
      ),
    );
  }
}