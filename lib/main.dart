import 'package:flutter/material.dart';
import 'package:moneymanager/screens/home.dart';
import 'package:moneymanager/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }

}