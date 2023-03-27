import 'package:equatable/equatable.dart';

class Coin extends Equatable {
  String symbol;
  String name;
  double amount;
  double value;
  double change;

  Coin({
    required this.symbol,
    required this.name,
    required this.amount,
    required this.value,
    required this.change,
  });

  @override
  List<Object?> get props => [
    symbol,
    name,
    amount,
    value,
    change,
  ];
}