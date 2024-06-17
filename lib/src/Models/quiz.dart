//import 'package:learn_philosophy_app/src/Models/quiz_result.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz{
  const factory Quiz({
    required String title,
    String? description,
    //List<Question> questions,
    //QuizResult result
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
