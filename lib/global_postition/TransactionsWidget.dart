import 'dart:math';

import 'package:flutter/material.dart';
import 'package:m_bank/transctions_details/TransactionDetailPage.dart';

class TransactionsWidget extends StatelessWidget {
  final BorderSide topSide =
      BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
          top: topSide,
          right: BorderSide.none,
          bottom: BorderSide.none,
          left: BorderSide.none,
          horizontalInside: topSide,
          verticalInside: BorderSide.none),
      children: [
        TableRow(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(Icons.subway)),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0), child: Text("TfL")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Text("£ 130.22")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: TransactionDetailButtonWidget(id: "1"))
        ]),
        TableRow(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(Icons.airplanemode_active)),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Text("Iberia Express")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Text("£ 74.34")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: TransactionDetailButtonWidget(id: "10"))
        ]),
        TableRow(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(Icons.restaurant)),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0), child: Text("Zizzi")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Text("£ 99.22")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: TransactionDetailButtonWidget(id: "100"))
        ]),
        TableRow(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(Icons.input)),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Text("Hyperoptic")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0), child: Text("£ 25")),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: TransactionDetailButtonWidget(id: "1000"))
        ])
      ],
    );
  }
}

class TransactionDetailButtonWidget extends StatelessWidget {
  const TransactionDetailButtonWidget({
    Key key,
    this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TransactionDetailPage()));
      },
      backgroundColor: Colors.white,
      mini: true,
      heroTag: "btn-view-detail-" + this.id,
      child: Icon(Icons.info, size: 20),
    );
  }
}
