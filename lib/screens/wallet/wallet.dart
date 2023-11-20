import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<StatefulWidget> createState() => _Wallet();
}

class _Wallet extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet Status"),
      ),
      body: const Text("wallet page"),
    );
  }
}
