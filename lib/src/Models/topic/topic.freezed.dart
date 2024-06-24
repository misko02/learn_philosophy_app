// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  @HiveField(0)
  int get topicId => throw _privateConstructorUsedError;
  @HiveField(0)
  set topicId(int value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  set title(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(2)
  set description(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String>? get categories => throw _privateConstructorUsedError;
  @HiveField(3)
  set categories(List<String>? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  Quiz? get quiz => throw _privateConstructorUsedError;
  @HiveField(4)
  set quiz(Quiz? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  List<Site> get sites => throw _privateConstructorUsedError;
  @HiveField(5)
  set sites(List<Site> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {@HiveField(0) int topicId,
      @HiveField(1) String title,
      @HiveField(2) String description,
      @HiveField(3) List<String>? categories,
      @HiveField(4) Quiz? quiz,
      @HiveField(5) List<Site> sites});

  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? title = null,
    Object? description = null,
    Object? categories = freezed,
    Object? quiz = freezed,
    Object? sites = null,
  }) {
    return _then(_value.copyWith(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res>? get quiz {
    if (_value.quiz == null) {
      return null;
    }

    return $QuizCopyWith<$Res>(_value.quiz!, (value) {
      return _then(_value.copyWith(quiz: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int topicId,
      @HiveField(1) String title,
      @HiveField(2) String description,
      @HiveField(3) List<String>? categories,
      @HiveField(4) Quiz? quiz,
      @HiveField(5) List<Site> sites});

  @override
  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? title = null,
    Object? description = null,
    Object? categories = freezed,
    Object? quiz = freezed,
    Object? sites = null,
  }) {
    return _then(_$TopicImpl(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<Site>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4, adapterName: 'TopicAdapter')
class _$TopicImpl implements _Topic {
  _$TopicImpl(
      {@HiveField(0) required this.topicId,
      @HiveField(1) required this.title,
      @HiveField(2) required this.description,
      @HiveField(3) this.categories,
      @HiveField(4) this.quiz,
      @HiveField(5) this.sites = const []});

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  @HiveField(0)
  int topicId;
  @override
  @HiveField(1)
  String title;
  @override
  @HiveField(2)
  String description;
  @override
  @HiveField(3)
  List<String>? categories;
  @override
  @HiveField(4)
  Quiz? quiz;
  @override
  @JsonKey()
  @HiveField(5)
  List<Site> sites;

  @override
  String toString() {
    return 'Topic(topicId: $topicId, title: $title, description: $description, categories: $categories, quiz: $quiz, sites: $sites)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  factory _Topic(
      {@HiveField(0) required int topicId,
      @HiveField(1) required String title,
      @HiveField(2) required String description,
      @HiveField(3) List<String>? categories,
      @HiveField(4) Quiz? quiz,
      @HiveField(5) List<Site> sites}) = _$TopicImpl;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  @HiveField(0)
  int get topicId;
  @HiveField(0)
  set topicId(int value);
  @override
  @HiveField(1)
  String get title;
  @HiveField(1)
  set title(String value);
  @override
  @HiveField(2)
  String get description;
  @HiveField(2)
  set description(String value);
  @override
  @HiveField(3)
  List<String>? get categories;
  @HiveField(3)
  set categories(List<String>? value);
  @override
  @HiveField(4)
  Quiz? get quiz;
  @HiveField(4)
  set quiz(Quiz? value);
  @override
  @HiveField(5)
  List<Site> get sites;
  @HiveField(5)
  set sites(List<Site> value);
  @override
  @JsonKey(ignore: true)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
