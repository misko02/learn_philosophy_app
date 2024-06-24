// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatisticsAdapter extends TypeAdapter<_$StatisticsImpl> {
  @override
  final int typeId = 3;

  @override
  _$StatisticsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StatisticsImpl(
      quizesTaken: fields[0] as dynamic,
      quizesPassed: fields[1] as dynamic,
      topicsFinished: fields[2] as dynamic,
      questionsAnswered: fields[3] as dynamic,
      correctAnswers: fields[4] as dynamic,
      wrongAnswers: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, _$StatisticsImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.quizesTaken)
      ..writeByte(1)
      ..write(obj.quizesPassed)
      ..writeByte(2)
      ..write(obj.topicsFinished)
      ..writeByte(3)
      ..write(obj.questionsAnswered)
      ..writeByte(4)
      ..write(obj.correctAnswers)
      ..writeByte(5)
      ..write(obj.wrongAnswers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatisticsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      quizesTaken: json['quizesTaken'] ?? 0,
      quizesPassed: json['quizesPassed'] ?? 0,
      topicsFinished: json['topicsFinished'] ?? 0,
      questionsAnswered: json['questionsAnswered'] ?? 0,
      correctAnswers: json['correctAnswers'] ?? 0,
      wrongAnswers: json['wrongAnswers'] ?? 0,
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'quizesTaken': instance.quizesTaken,
      'quizesPassed': instance.quizesPassed,
      'topicsFinished': instance.topicsFinished,
      'questionsAnswered': instance.questionsAnswered,
      'correctAnswers': instance.correctAnswers,
      'wrongAnswers': instance.wrongAnswers,
    };
