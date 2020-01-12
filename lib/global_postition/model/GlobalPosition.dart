
class GlobalPosition {

  final double balance;

  GlobalPosition({this.balance});

  factory GlobalPosition.fromJson(Map<String, dynamic> json) {
    return GlobalPosition(
      balance: json['balance'],
    );
  }
}