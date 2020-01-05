import 'package:flutter/material.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        heroTag: "btnLogout",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.rotate_left));
  }
}
