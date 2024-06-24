// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TopicAdapter extends TypeAdapter<_$TopicImpl> {
  @override
  final int typeId = 4;

  @override
  _$TopicImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TopicImpl(
      topicId: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      categories: (fields[3] as List?)?.cast<String>(),
      quiz: fields[4] as Quiz?,
      sites: (fields[5] as List).cast<Site>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$TopicImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.topicId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.categories)
      ..writeByte(4)
      ..write(obj.quiz)
      ..writeByte(5)
      ..write(obj.sites);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
          ? null
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
