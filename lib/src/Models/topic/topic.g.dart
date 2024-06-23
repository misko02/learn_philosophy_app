// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      quiz: json['quiz'] == null
          ? const Quiz(title: "")
          : Quiz.fromJson(json['quiz'] as Map<String, dynamic>),
      sites: (json['sites'] as List<dynamic>?)
              ?.map((e) => Site.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'quiz': instance.quiz,
      'sites': instance.sites,
    };
