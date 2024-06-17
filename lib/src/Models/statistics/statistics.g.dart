// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      quizesTaken: (json['quizesTaken'] as num).toInt(),
      quizesPassed: (json['quizesPassed'] as num).toInt(),
      topicsFinished: (json['topicsFinished'] as num).toInt(),
      questionsAnswered: (json['questionsAnswered'] as num).toInt(),
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'quizesTaken': instance.quizesTaken,
      'quizesPassed': instance.quizesPassed,
      'topicsFinished': instance.topicsFinished,
      'questionsAnswered': instance.questionsAnswered,
    };
