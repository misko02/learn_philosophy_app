// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuizAdapter extends TypeAdapter<_$QuizImpl> {
  @override
  final int typeId = 1;

  @override
  _$QuizImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$QuizImpl(
      quizId: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String?,
      questions: (fields[3] as List).cast<Question>(),
      finished: fields[4] as bool,
      result: fields[5] as QuizResult?,
    );
  }

  @override
  void write(BinaryWriter writer, _$QuizImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.quizId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.questions)
      ..writeByte(4)
      ..write(obj.finished)
      ..writeByte(5)
      ..write(obj.result);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuizAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
