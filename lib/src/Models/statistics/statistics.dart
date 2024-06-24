import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'statistics.freezed.dart';
part 'statistics.g.dart';
@unfreezed
class Statistics with _$Statistics{

  @HiveType(typeId: 3, adapterName: 'StatisticsAdapter')
  factory Statistics({
    @HiveField(0) @Default(0) quizesTaken,
    @HiveField(1) @Default(0) quizesPassed,
    @HiveField(2) @Default(0) topicsFinished,
    @HiveField(3) @Default(0) questionsAnswered,
    @HiveField(4) @Default(0) correctAnswers,
    @HiveField(5) @Default(0) wrongAnswers
  }) = _Statistics;
  

  factory Statistics.fromJson(Map<String, Object?> json) => _$StatisticsFromJson(json);
}