import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:learn_philosophy_app/src/Models/quiz/quiz.dart';
import '../site/site.dart';


part 'topic.freezed.dart';
part 'topic.g.dart';

@unfreezed 
class Topic with _$Topic{
  @HiveType(typeId: 4, adapterName: 'TopicAdapter')
  factory Topic({
    @HiveField(0) required int topicId,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveField(3) List<String>? categories,
    @HiveField(4) Quiz? quiz,
    @HiveField(5) @Default([]) List<Site> sites 
  }) = _Topic;

  factory Topic.fromJson(Map<String, Object?> json) => _$TopicFromJson(json);
}