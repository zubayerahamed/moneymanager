import 'package:flutter/material.dart';

class ExpenseType extends StatefulWidget {
  const ExpenseType({super.key});

  @override
  State<StatefulWidget> createState() => _ExpenseType();
}

class _ExpenseType extends State<ExpenseType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense type status"),
      ),
      body: const Text("Expense type page"),
    );
  }
}
