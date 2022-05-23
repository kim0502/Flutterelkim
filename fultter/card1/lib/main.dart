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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('영웅 Card'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [
          Center(
            child: CircleAvatar(
            backgroundImage: AssetImage('images/Lee.jpg'),
            radius: 75,
             ),
          ),
          Divider(
            height: 30,
         color: Colors.black,
         thickness: 1,
          ),
        Text(
          '영웅',
          style: TextStyle(
            color: Colors.white,
            fontSize:  15,
          ),
        ),
        Text(
          '이순신 장군',
          style: TextStyle(
            color: Colors.white,
            fontSize:  30,
          ),
        ),
        Text('전적',
        ),
        Text('62전 62승',
        ),
       

       Column(children: [
          Row(
        children: [
        Icon(Icons.check_circle_outline), 
        Text('목포해전',),
        ],),
        
         Row(
        children:[
        Icon(Icons.check_circle_outline), 
        Text('사천포해전',),],),

        Row(
        children:[
        Icon(Icons.check_circle_outline), 
         Text('당포해전',),],),


        Row(
        children:[
        Icon(Icons.check_circle_outline), 
         Text('노량해전',),],),

        Row(
        children:[
        Icon(Icons.check_circle_outline), 
         Text('한산도해전',),],),

        Row(
        children:[
        Icon(Icons.check_circle_outline), 
         Text('부산포해전',),],),

        Row(
        children:[
        Icon(Icons.check_circle_outline), 
         Text('명량해1전',),],),

       ],
       
       ),

       const Center(
            child: CircleAvatar(
            backgroundImage: AssetImage('images/turtle.gif'),
            backgroundColor: Colors.orange,
            radius: 50,
             ),
          ),
      
        ], 
       
      ),
       
      
  
     );

        
      
    
  }
}