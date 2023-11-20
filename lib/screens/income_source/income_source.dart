import 'package:flutter/material.dart';

class IncomeSource extends StatefulWidget {
  const IncomeSource({super.key});

  @override
  State<StatefulWidget> createState() => _IncomeSource();
}

class _IncomeSource extends State<IncomeSource> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Income Source Status"),
      ),
      body: const Text("Income source page"),
    );
  }
}
