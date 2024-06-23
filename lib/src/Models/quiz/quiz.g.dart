// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      quizId: (json['quizId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      finished: json['finished'] as bool? ?? false,
      result: json['result'] == null
          ? null
          : QuizResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'quizId': instance.quizId,
      'title': instance.title,
      'description': instance.description,
      'questions': instance.questions,
      'finished': instance.finished,
      'result': instance.result,
    };
