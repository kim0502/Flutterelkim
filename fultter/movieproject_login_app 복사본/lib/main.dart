import 'package:flutter/material.dart';
import 'package:movieproject_login_app/firstPage.dart';
import 'package:movieproject_login_app/joinPage.dart';
import 'package:movieproject_login_app/loginPage.dart';
import 'package:movieproject_login_app/mainPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const FirstPage(),
         "/loginPage": (context) => const LoginPage(),
         "/joinPage": (context) => const JoinPage(),
         "/mainPage": (context) =>  MainPage(),  
        //  "/listEditingPage": (context) => const ListEditinPage(),
        //  "/addListPage" :(context) => const AddListPage(),
      },

      initialRoute: "/",
      debugShowCheckedModeBanner: false,

    );
  }
}
