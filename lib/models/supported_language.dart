import 'package:equatable/equatable.dart';

class SupportedLanguage extends Equatable {
  final String name, symbol;

  const SupportedLanguage({
    required this.name,
    required this.symbol,
  });

  @override
  List<Object?> get props => [name, symbol];
}
