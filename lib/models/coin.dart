import 'package:equatable/equatable.dart';

class Coin extends Equatable {
  final String symbol;
  final String name;
  final double amount;
  final double value;
  final double change;

  const Coin({
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