import 'package:flutter/material.dart';
import 'package:tabbar_flag_app/flag_item.dart';

class FirstPage extends StatefulWidget {
  final List<Flag>list;
  const FirstPage({Key? key, required this.list}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context,position){
            return GestureDetector(
              onTap:() => _showDialog(context,position),
          child: Card(
            child: Row(
              children: [
                Image.asset(
                  widget.list[position].imagePath,
                  height: 100,
                  width: 100,
                  fit:  BoxFit.contain,
                ),
                Text("      ${widget.list[position].firstName}"),
              ],
            ),
          ),
            );
          },
        ),
         
      ),
    );
  }
//Functions

_showDialog(BuildContext context,int position){
  showDialog(
    context: context,
    barrierDismissible: false,
     builder: (BuildContext ctx){
       return AlertDialog(
         title: Text("국가명"),
         content: Text("이 국가는 ${widget.list[position].flagName} 국가 입니다."),
       actions: [
         Center(
           child: TextButton(
             onPressed: (){
             Navigator.of(ctx).pop();
           }, 
           child: const Text('종료'),
           ),
         )
       ],
       );
     });
}

}//End