import 'package:appbar_icon_pr_app/Recived.dart';
import 'package:appbar_icon_pr_app/Send.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator_AppBar'),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Send(),
                ),
              );
            },
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Received(),
                ),
              );
            },
            icon: const Icon(Icons.email_outlined),
          ),
        ],
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/pika1.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/pika2.png'),
                ),
              ],
              accountName: Text('Pika'),
              accountEmail: Text('Pika@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Send(),
                ),
              );
              },
              leading: const Icon(
                Icons.email,
                color: Colors.brown,
                ),
                title: const Text('보낸 편지함'),
            ),
                
             ListTile(
               onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Received(),
                ),
              );
               },
               leading: const Icon(
                Icons.email_outlined,
                color: Colors.blue,
                ),
                title: const Text('보낸 편지함'),

             ) ,  
                
            
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Send(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('보낸편지함'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Received(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('받은 편지함'),
            ),
          ],
        ),
      ),
    );
  }
}
