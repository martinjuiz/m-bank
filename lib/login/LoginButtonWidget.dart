import 'package:flutter/material.dart';
import 'package:m_bank/login/AuthenticatingPage.dart';
import 'package:m_bank/global_postition/GlobalPositionPage.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btnLogin",
      onPressed: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthenticatingPage()),
        );

        Future.delayed(const Duration(milliseconds: 3000), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GlobalPositionPage()),
          );

        });

      },
      tooltip: 'Login',
      child: Icon(Icons.person),
    );
  }
}
