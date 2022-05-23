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
        title:  const Text('Bottons'),
      ),
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
          
          //---
           onPressed:(){
             print('Text Button');

           },
           onLongPress: (){
             print("Long pressed text button");
           },
          //---

          style: TextButton.styleFrom(
          primary: Colors.red,
          ),
          child: const Text(
            'Text Botton',
           style:  TextStyle(
             fontSize:20,
           ),
          ),
          ),
          ElevatedButton(
            onPressed:(){},
            style:  ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
             child: const Text("ElevatedButton",
            ),
            ),
        OutlinedButton(
          onPressed:(){}, style: OutlinedButton.styleFrom(
            primary: Colors.green,
            side: const BorderSide(
              color: Colors.black87,
              width: 2.0
            ),
          ),
           child: const Text('Outlined Button',
          ), 
        ),
        TextButton.icon(
          onPressed:(){},
           icon:  const Icon(Icons.home,
           ),
           label: const Text('Go To home',),
           style: TextButton.styleFrom(
             primary: Colors.purple,
           ),
           ),
           ElevatedButton.icon(
             onPressed:(){},
               icon:  const Icon(Icons.home,
               size: 20,
               ),
               label: const Text('home'),
               style: ElevatedButton.styleFrom(
                 primary: Colors.black,
                 minimumSize: const Size(200,40),
               ),
               ),
               OutlinedButton.icon(
                 onPressed:(){},
                icon: const Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                label: const Text('Go to Home'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                ),
                ),
         
              
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  TextButton(
                 onPressed:(){},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text('TextButton',
                style : TextStyle(
                  fontSize: 20,
                ),
                ), 
                ),
                ElevatedButton(
                 onPressed: (){},
                 style: ElevatedButton.styleFrom(
                   primary: Colors.blue,
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
            ),
             child: const Text("ElevatedButton",
            ),
                 ), 
                 ],
                 

             ),
              
           ],
         )
         
        
        ),
      );
    
    
  }
}