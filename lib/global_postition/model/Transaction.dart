import 'dart:wasm';

class Transaction {

  String id;

  String type;

  String merchant;

  String transactionDate;

  double amount;

  bool pending;

  Transaction({this.id, this.type, this.merchant, this.transactionDate, this.amount, this.pending});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      type: json['type'],
      merchant: json['merchant'],
      transactionDate: json['transactionDate'],
      amount: json['amount'],
      pending: json['pending'],
    );
  }
}