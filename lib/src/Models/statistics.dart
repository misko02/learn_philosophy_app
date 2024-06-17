import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics.freezed.dart';
part 'statistics.g.dart';
@freezed
class Statistics with _$Statistics{
  const factory Statistics({
    required int quizesTaken,
    required int quizesPassed,
    required int topicsFinished,
    required int questionsAnswered
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, Object?> json) => _$StatisticsFromJson(json);
}