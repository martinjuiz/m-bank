import 'package:flutter/material.dart';
import 'package:flutter_maps/flutter_maps.dart';

import 'TransactionDetailMapWidget.dart';
import 'TransactionDetailPage.dart';

class TransactionDetailPageState extends State<TransactionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction details"),
      ),
      body: FlutterMap(),
//            ,
//            Align(
//                alignment: Alignment.bottomCenter,
//                child: TransactionDetailWidget()
//            )
    );
  }
}
