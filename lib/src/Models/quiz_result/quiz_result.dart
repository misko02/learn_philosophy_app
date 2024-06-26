
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'quiz_result.freezed.dart';
part 'quiz_result.g.dart';

@unfreezed
class QuizResult with _$QuizResult{
  @HiveType(typeId: 8, adapterName: 'QuizResultAdapter')
  factory QuizResult({
    @HiveField(0) required int correctAnswers,
    @HiveField(1) required int wrongAnswers
  }) = _QuizResult;
  
  QuizResult._();

  factory QuizResult.fromJson(Map<String, Object?> json) => _$QuizResultFromJson(json);
}