import 'package:demo_project/data.dart';
import 'package:demo_project/widgets/cardSection.dart';
import 'package:demo_project/widgets/expenseSection.dart';
import 'package:demo_project/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection())
        ],
      ),
    );
  }
}
