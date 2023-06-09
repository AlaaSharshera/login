import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/sign_up.dart';
void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>const LogIn(),
        "/signup":(context)=>const SignUp(),
      },
    );
  }
}
