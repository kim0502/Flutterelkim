import 'package:flutter/material.dart';
import 'package:tappbar_animals_app/animal_item.dart';

class FirstPage extends StatefulWidget {
  final List<Animal> list;
  const FirstPage({Key? key, required this.list}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

//////////////////위 아래 list는 다르다.
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () => _showDialog(context, position),
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      widget.list[position].imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Text("     ${widget.list[position].animalName}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
//--functions

  _showDialog(BuildContext context, int position) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext ctx) {
          return AlertDialog(
              title: Text("${widget.list[position].animalName}"),
              content: Text("이 동물은 ${widget.list[position].kind} 입니다."),
              actions: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text('종료'),
                  ),
                ),
              ]);
        });
  }
}//end