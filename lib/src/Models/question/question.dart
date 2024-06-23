import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question{
  const factory Question({
    required int id,
    required String content,
    required List<String> answers,
    required int correctAnswerIndex,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
}