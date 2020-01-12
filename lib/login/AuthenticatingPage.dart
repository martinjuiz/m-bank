import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global_postition/GlobalPositionPageState.dart';

class AuthenticatingPage extends StatefulWidget {
  AuthenticatingPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AuthenticatingPageState();
  }
}

class AuthenticatingPageState extends State<AuthenticatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M Bank"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Align(
                alignment: Alignment.center, child: Text("Loading your transactions...."))
          ],
        ),
      ),
    );
  }
}

