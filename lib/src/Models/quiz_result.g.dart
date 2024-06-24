// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuizResultAdapter extends TypeAdapter<_$QuizResultImpl> {
  @override
  final int typeId = 8;

  @override
  _$QuizResultImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$QuizResultImpl(
      correctAnswers: fields[0] as int,
      wrongAnswers: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$QuizResultImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.correctAnswers)
      ..writeByte(1)
      ..write(obj.wrongAnswers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuizResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResultImpl _$$QuizResultImplFromJson(Map<String, dynamic> json) =>
    _$QuizResultImpl(
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      wrongAnswers: (json['wrongAnswers'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizResultImplToJson(_$QuizResultImpl instance) =>
    <String, dynamic>{
      'correctAnswers': instance.correctAnswers,
      'wrongAnswers': instance.wrongAnswers,
    };
