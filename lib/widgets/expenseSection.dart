import 'package:demo_project/data.dart';
import 'package:demo_project/widgets/pieChart.dart';
import 'package:flutter/material.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: expenses
                      .map((value) => Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 6,
                                backgroundColor:
                                    pieColors[expenses.indexOf(value)],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value['name'],
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
