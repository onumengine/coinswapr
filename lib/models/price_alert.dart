import 'package:equatable/equatable.dart';

enum AlertType {
  above,
  below,
  equal,
}

class PriceAlert extends Equatable {
  final String description;
  final DateTime dateCreated;
  final double price;
  final AlertType type;
  final bool enabled;

  const PriceAlert({
    required this.description,
    required this.dateCreated,
    required this.price,
    required this.type,
    required this.enabled,
  });

  @override
  List<Object?> get props => [
        description,
        dateCreated,
        price,
        type,
        enabled,
      ];
}

class PriceAlertGroup extends Equatable {
  final String coinSymbol;
  final String coinName;
  final List<PriceAlert> alerts;

  const PriceAlertGroup({
    required this.coinSymbol,
    required this.coinName,
    required this.alerts,
  });

  @override
  List<Object?> get props => [
    coinSymbol,
    coinName,
    alerts,
  ];
}
