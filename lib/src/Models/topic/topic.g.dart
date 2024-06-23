// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      topicId: (json['topicId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quiz: json['quiz'] == null
          ? const Quiz(quizId: 0, title: "")
          : Quiz.fromJson(json['quiz'] as Map<String, dynamic>),
      sites: (json['sites'] as List<dynamic>?)
              ?.map((e) => Site.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'title': instance.title,
      'description': instance.description,
      'categories': instance.categories,
      'quiz': instance.quiz,
      'sites': instance.sites,
    };
