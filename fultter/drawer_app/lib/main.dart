import 'package:flutter/material.dart';

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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer'),
      ),
      drawer: Drawer(             //햄버거바로 옆구리에서 가지고 오기
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage('images/pika1.png'
               ),
             ),
             otherAccountsPictures: [
               CircleAvatar(
                 backgroundImage: AssetImage('images/pika2.png'
                 ),
               ),
               CircleAvatar(
                 backgroundImage: AssetImage('images/pika3.png'
                 ),
               ),
             ],
             accountName: Text('Pika'),
             accountEmail: Text('Pika@gmail.com'),
             decoration: BoxDecoration(
               color: Colors.red,
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(40),
                 bottomRight: Radius.circular(40),
               )
             ),
            ),
            ListTile(
              onTap: (){
                //
              },
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title:  const Text('Home'),
              trailing: const Icon(
                Icons.add,
              ),
            )
          ],
        ),
      ),
    );
  }
}