import 'package:freezed_annotation/freezed_annotation.dart';


part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed 
class Topic with _$Topic{
  const factory Topic({
    required String title,
    required String description
    //Question question,
    //List<Site> sites
  }) = _Topic;

  factory Topic.fromJson(Map<String, Object?> json) => _$TopicFromJson(json);
}