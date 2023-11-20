import 'package:flutter/material.dart';
import 'package:moneymanager/widgets/main_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Money Manager"),
      ),
      drawer: const MainDrawer(),
      body: const Text("hi there"),
    );
  }
}
