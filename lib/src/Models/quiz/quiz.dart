import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../question/question.dart';
import '../quiz_result.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@unfreezed
class Quiz with _$Quiz{
  @HiveType(typeId: 1, adapterName: 'QuizAdapter')
  factory Quiz({
    @HiveField(0)
    required final int quizId,
    @HiveField(1)
    required final String title,
    @HiveField(2)
    final String? description,
    @Default([])
    @HiveField(3)
    List<Question> questions,
    @Default(false)
    @HiveField(4)
    bool finished,
    @HiveField(5)
    QuizResult? result
  }) = _Quiz;

  Quiz._();

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
