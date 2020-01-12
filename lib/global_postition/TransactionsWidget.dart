import 'dart:convert';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:m_bank/transctions_details/TransactionDetailButtonWidget.dart';
import 'package:m_bank/transctions_details/TransactionDetailPage.dart';

import 'model/Transaction.dart';

class TransactionsWidget extends StatelessWidget {
  final BorderSide topSide =
      BorderSide(color: Colors.black, width: 1, style: BorderStyle.solid);

  Future<List<Transaction>> fetchRecentTransactions() async {
    final response = await http.get('http://192.168.1.100:8080/transactions');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return (json.decode(response.body) as List).map((i) =>
          Transaction.fromJson(i)).toList();

    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load global position...');
    }
  }

  String formatAmount(double amount) {

    return FlutterMoneyFormatter(
              settings: MoneyFormatterSettings(symbol: "£"),
              amount: amount)
        .output.symbolOnLeft;
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<Transaction>> (

        future: fetchRecentTransactions(),
        builder: (BuildContext context, AsyncSnapshot<List<Transaction>> snapshot) {
          List<TableRow> children = new List();

          if(snapshot.hasData) {
            List<Transaction> transactions = snapshot.data;
            transactions.forEach( (tx) {
                children.add( buildTransactionLayout(tx) );
            });
            return buildTransactionsTable(children);
          }
          else if(snapshot.hasError) {

            return buildTransactionsTable(children);
          }

          return buildTransactionsTable(children);

        });

  }

  Table buildTransactionsTable(List<TableRow> children) {
    return Table(
              border: TableBorder(
                      top: topSide,
                      right: BorderSide.none,
                      bottom: BorderSide.none,
                      left: BorderSide.none,
                      horizontalInside: topSide,
                      verticalInside: BorderSide.none
                    ),
              children: children);
  }

  Icon selectTxIcon(String type) {

    if("TRANSPORT" == type) {
      return Icon(Icons.subway);
    }
    else if("GROCERIES" == type) {
      return Icon(Icons.fastfood);
    }
    else if("PERSONAL_CARE" == type) {
      return Icon(Icons.person);
    }
    else if("FINANCES" == type) {
      return Icon(Icons.money_off);
    }
    else if("SALARY" == type) {
      return Icon(Icons.send);
    }
    else if("BILLS" == type) {
      return Icon(Icons.credit_card);
    }
    else if("EATING_OUT" == type) {
      return Icon(Icons.restaurant);
    }
    else if("ENTERTAINMENT" == type) {
      return Icon(Icons.music_video);
    }
  }

  TableRow buildTransactionLayout(Transaction tx) {
    return TableRow(children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: selectTxIcon(tx.type)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0), child: Text(tx.merchant)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Text(formatAmount(tx.amount))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: TransactionDetailButtonWidget(id: tx.id))
                ]);
  }
}
