import 'package:flutter/material.dart';
import 'package:m_bank/common_components/BottonNavigationWidget.dart';
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
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              heightFactor: 5,
              child: GlobalPositionWidget(),
            ),
            Expanded(
                  flex: 2,
                  child: Container(
                    child: TransactionsWidget()
                  ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottonNavigationWidget(),
    );
  }
}
