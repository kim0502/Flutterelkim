
import 'package:flutter/material.dart';
import 'package:tappbar_animals_app/animal_item.dart';

class SecondPage extends StatefulWidget {
  final List<Animal> list;
  const SecondPage({Key? key, required this.list}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final nameController = TextEditingController();
  int _radioValue = 0;
  bool flyExist = false;
  var _imagePath;
  String imageName = "";
  //그냥 써봄 이렇게 쓸수있다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _radioChange,
                ),
                const Text('양서류'),
                Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _radioChange,
                ),
                const Text('파충류'),
                Radio(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: _radioChange,
                ),
                const Text('포유류'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('날 수 있나요?'),
                Checkbox(
                    value: flyExist,
                    onChanged: (check) {
                      setState(() {
                        flyExist = check!;
                      });
                    })
              ],
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection:
                    Axis.horizontal, //리스트빌더는 데이터 있는 만큼 만들어주고 리스트는 다 만든다.
                children: [
                  GestureDetector(
                    onTap: () {
                      _imagePath = "images/cow.png";
                      setState(() {
                        imageName = '젖소';
                      });
                    },
                    child: Image.asset(
                      'images/cow.png',
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _imagePath = "images/pig.png";
                      setState(() {
                        imageName = '돼지';
                      });
                    },
                    child: Image.asset(
                      'images/pig.png',
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _imagePath = "images/dog.png";
                      setState(() {
                        imageName = '개';
                      });
                    },
                    child: Image.asset(
                      'images/dog.png',
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _imagePath = "images/fox.png";
                      setState(() {
                        imageName = '여우';
                      });
                    },
                    child: Image.asset(
                      'images/fox.png',
                      width: 80,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _imagePath = "images/monkey.png";
                      setState(() {
                        imageName = '원숭이';
                      });
                    },
                    child: Image.asset(
                      'images/monkey.png',
                      width: 80,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(imageName),
            ),
            ElevatedButton(
              onPressed: () {
                var animal = Animal(
                    //int,String 이라고하기에 애매하면 var로 쓴다.
                    animalName: nameController.text,
                    kind: getKind(_radioValue),
                    imagePath: _imagePath,
                    flyExist: flyExist);

                AlertDialog dialog = AlertDialog(
                  title: Text('동물 추가하기'),
                  content: Text(
                    '이 동물은 ${animal.animalName} 입니다.\n'
                    '또 동물의 종류는 ${animal.kind} 입니다. \n'
                    '이 동물은 ${animal.flyExist ? "날 수 있습니다" : "날 수 없습니다."}\n'
                    '이 동물을 추가 하시겠습니까?',
                    style: const TextStyle(fontSize: 17),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        widget.list.add(animal);
                        Navigator.of(context).pop();
                      },
                      child: const Text('예'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        '아니오',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return dialog;
                    });
              },
              child: const Text('동물 추가하기'),
            ),
          ],
        ),
      ),
    );
  }

  //Functions
  _radioChange(int? value) {
    //디폴츠 값이 없을 경우 널값이 들어와야하기에 널값을 들어오는게 ?로 표현
    setState(() {
      _radioValue = value!; //널값이 나가는게 !으로 표현
    });
  }

  getKind(int _radioValue) {
    switch (_radioValue) {
      case 0:
        return '양서류';
      case 1:
        return '파충류';
      case 2:
        return '포유류';
    }
  }
}//End