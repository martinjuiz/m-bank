import 'package:flutter/material.dart';
import 'package:m_bank/global_postition/GlobalPositionWidget.dart';
import 'package:m_bank/global_postition/TransactionsWidget.dart';

import 'GlobalPositionPage.dart';

class GlobalPositionPageState extends State<GlobalPositionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global position"),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: GlobalPositionWidget())),
            Align(
                alignment: Alignment.bottomCenter, child: TransactionsWidget())
          ],
        ),
      ),
    );
  }
}
