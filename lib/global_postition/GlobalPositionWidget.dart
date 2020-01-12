import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:m_bank/global_postition/model/GlobalPosition.dart';

class GlobalPositionWidget extends StatelessWidget {

  Future<GlobalPosition> fetchGlobalPosition() async {
    final response = await http.get('http://192.168.1.100:8080/balances');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return GlobalPosition.fromJson(json.decode(response.body));

    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load global position...');
    }
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<GlobalPosition> (

      future: fetchGlobalPosition(),
      builder: (BuildContext context, AsyncSnapshot<GlobalPosition> snapshot) {
        Text globalPosition = Text("0.00", style: TextStyle(fontSize: 22));
        if(snapshot.hasData) {

          FlutterMoneyFormatter fmf = FlutterMoneyFormatter(
              settings: MoneyFormatterSettings(symbol: "£"),
              amount: snapshot.data.balance);

          globalPosition = Text(fmf.output.symbolOnLeft, style: TextStyle(fontSize: 22));
        }
        else if(snapshot.hasError) {

          globalPosition = Text("-0.00", style: TextStyle(fontSize: 22));
        }

        return globalPosition;
      }

    );
  }
}
