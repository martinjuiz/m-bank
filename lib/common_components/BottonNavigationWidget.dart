import 'package:flutter/material.dart';

class BottonNavigationWidget extends StatelessWidget {
  const BottonNavigationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(title: Text("Home"),     icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Payments"), icon: Icon(Icons.attach_money)),
          BottomNavigationBarItem(title: Text("Settings"), icon: Icon(Icons.settings)),
        ]
    );
  }
}