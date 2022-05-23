import 'package:flutter/material.dart';
import 'package:listview_todo_app/message.dart';

class DetailList extends StatefulWidget {
  const DetailList({Key? key}) : super(key: key);

  @override
  State<DetailList> createState() => _DetailListState();
}

class _DetailListState extends State<DetailList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datail List'),
      ),
      body: Center(
        child :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Message.imagePath), 
            SizedBox(
              height: 20,
            ),
            Text(Message.workList),
           
          ],
        ),
      ),
    );
  }
}
