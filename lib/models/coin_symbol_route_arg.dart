import 'package:equatable/equatable.dart';

class CoinSymbolRouteArg extends Equatable {
  final String name;
  final String symbol;

  const CoinSymbolRouteArg({ required this.name, required this.symbol });

  @override
  List<Object?> get props => [name, symbol];
}