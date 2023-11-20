import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moneymanager/screens/expense_type/expense_type.dart';
import 'package:moneymanager/screens/income_source/income_source.dart';
import 'package:moneymanager/screens/wallet/wallet.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
            ),
            child: Image.asset("assets/images/logo.png"),
          ),
          ListTile(
            title: const Text('Wallet Status'),
            onTap: () {
              _navigatePage(context, "WALLET");
            },
          ),
          ListTile(
            title: const Text('Income Source Status'),
            onTap: () {
              _navigatePage(context, "INCOME_SOURCE");
            },
          ),
          ListTile(
            title: const Text('Expense Type Status'),
            onTap: () {
              _navigatePage(context, "EXPENSE_TYPE");
            },
          ),
        ],
      ),
    );
  }

  Future<void> _navigatePage(BuildContext context, String pageName) async {
    Navigator.pop(context);

    if (pageName == 'WALLET') {
      final route = MaterialPageRoute(builder: (context) => const Wallet());
      await Navigator.push(context, route);
    } else if (pageName == 'INCOME_SOURCE') {
      final route = MaterialPageRoute(builder: (context) => const IncomeSource());
      await Navigator.push(context, route);
    } else if (pageName == 'EXPENSE_TYPE') {
      final route = MaterialPageRoute(builder: (context) => const ExpenseType());
      await Navigator.push(context, route);
    }
  }
}
