import 'package:flutter/material.dart';
import 'package:m_bank/logout/LogoutButtonWidget.dart';

class LoginPageWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to M Bank!"),
      ),
      body: Center(
        child: LogoutButtonWidget(),
      ),
    );
  }
}
