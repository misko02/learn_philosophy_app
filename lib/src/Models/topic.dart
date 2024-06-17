import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_philosophy_app/src/Models/quiz.dart';

import 'question.dart';
import 'site.dart';


part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed 
class Topic with _$Topic{
  const factory Topic({
    required String title,
    required String description,
    Quiz? quiz,
    @Default([])
    List<Site> sites 
  }) = _Topic;

  factory Topic.fromJson(Map<String, Object?> json) => _$TopicFromJson(json);
}