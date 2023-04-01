import 'package:equatable/equatable.dart';

class FAQ extends Equatable {
  final String question;
  final String answer;

  const FAQ({
    required this.question,
    required this.answer,
  });

  @override
  List<Object?> get props => [question, answer];
}
