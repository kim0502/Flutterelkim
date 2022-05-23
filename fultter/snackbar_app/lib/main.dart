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
        title: const Text('Snackbar'),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(
          //   content:Text('Elevated Button is clicked'),
          //   duration: Duration(seconds: 1),
          //   backgroundColor: Colors.red,
          //   ),
          // );

          snackBarFunction(context);
          },
          child: const Text('Snackbar Button'),
        ),
        
      ),
    );
  }




//---Functions
snackBarFunction(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
            content:Text('Elevated Button is clicked'),
            duration: Duration(seconds: 5),
            backgroundColor: Colors.red,
            ),
          );
}







}//End
//snackbar.dart는 class를 분리해서 쓴것이다.