// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionAdapter extends TypeAdapter<_$QuestionImpl> {
  @override
  final int typeId = 0;

  @override
  _$QuestionImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$QuestionImpl(
      id: fields[0] as int,
      content: fields[1] as String?,
      answers: (fields[2] as List).cast<String>(),
      correctAnswerIndex: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$QuestionImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.correctAnswerIndex)
      ..writeByte(2)
      ..write(obj.answers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String? ?? '',
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      correctAnswerIndex: (json['correctAnswerIndex'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answers': instance.answers,
      'correctAnswerIndex': instance.correctAnswerIndex,
    };
