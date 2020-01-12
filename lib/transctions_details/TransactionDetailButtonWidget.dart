import 'package:flutter/material.dart';

import 'TransactionDetailPage.dart';

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