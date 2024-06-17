import 'package:freezed_annotation/freezed_annotation.dart';

import '../question/question.dart';
import '../quiz_result.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz{
  const factory Quiz({
    required String title,
    String? description,
    @Default([])
    List<Question> questions,
    QuizResult? result
  }) = _Quiz;


  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
