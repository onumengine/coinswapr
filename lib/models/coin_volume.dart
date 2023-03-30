import 'dart:ui';

import 'package:equatable/equatable.dart';

class CoinVolume extends Equatable {
  final double percentage;
  final String assetName;
  final String assetSymbol;
  final Color color;

  const CoinVolume({
    required this.percentage,
    required this.assetName,
    required this.assetSymbol,
    required this.color,
  });

  @override
  List<Object?> get props => [
    percentage,
    assetName,
    assetSymbol,
    color,
  ];
}
