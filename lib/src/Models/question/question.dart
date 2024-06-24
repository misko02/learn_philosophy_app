import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question{
  @HiveType(typeId: 0, adapterName: 'QuestionAdapter')
  factory Question({
    @HiveField(0)
    required int id,
    @HiveField(1)
    @Default('')
    String? content,
    @HiveField(2)
    @Default([])
    final List<String> answers,
    @HiveField(3)
    @Default(0)
    final int correctAnswerIndex,
  }) = _Question;

  Question._();

  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
}