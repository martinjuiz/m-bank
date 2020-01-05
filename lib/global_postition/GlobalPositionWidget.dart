import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class GlobalPositionWidget extends StatelessWidget {
  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(
      settings: MoneyFormatterSettings(symbol: "£"),
      amount: new Random(2000).nextDouble() * 1000);

  @override
  Widget build(BuildContext context) {
    return Text(fmf.output.symbolOnLeft, style: TextStyle(fontSize: 22));
  }
}
