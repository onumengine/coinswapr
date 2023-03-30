import 'package:equatable/equatable.dart';

enum TransactionType {
  inflow,
  outflow,
}

class Transaction extends Equatable {
  final String title;
  final DateTime timestamp;
  final double fiatAmount;
  final double cryptoAmount;
  final String fiatSymbol;
  final String cryptoSymbol;
  final String fiatCurrency;
  final String cryptoCurrency;
  final TransactionType type;

  const Transaction({
    required this.title,
    required this.timestamp,
    required this.fiatAmount,
    required this.cryptoAmount,
    required this.fiatSymbol,
    required this.cryptoSymbol,
    required this.fiatCurrency,
    required this.cryptoCurrency,
    required this.type,
  });

  @override
  List<Object?> get props => [
        title,
        timestamp,
        fiatAmount,
        cryptoAmount,
        type,
      ];
}
