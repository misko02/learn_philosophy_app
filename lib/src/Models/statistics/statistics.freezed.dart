// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  @HiveField(0)
  dynamic get quizesTaken => throw _privateConstructorUsedError;
  @HiveField(0)
  set quizesTaken(dynamic value) => throw _privateConstructorUsedError;
  @HiveField(1)
  dynamic get quizesPassed => throw _privateConstructorUsedError;
  @HiveField(1)
  set quizesPassed(dynamic value) => throw _privateConstructorUsedError;
  @HiveField(2)
  dynamic get topicsFinished => throw _privateConstructorUsedError;
  @HiveField(2)
  set topicsFinished(dynamic value) => throw _privateConstructorUsedError;
  @HiveField(3)
  dynamic get questionsAnswered => throw _privateConstructorUsedError;
  @HiveField(3)
  set questionsAnswered(dynamic value) => throw _privateConstructorUsedError;
  @HiveField(4)
  dynamic get correctAnswers => throw _privateConstructorUsedError;
  @HiveField(4)
  set correctAnswers(dynamic value) => throw _privateConstructorUsedError;
  @HiveField(5)
  dynamic get wrongAnswers => throw _privateConstructorUsedError;
  @HiveField(5)
  set wrongAnswers(dynamic value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call(
      {@HiveField(0) dynamic quizesTaken,
      @HiveField(1) dynamic quizesPassed,
      @HiveField(2) dynamic topicsFinished,
      @HiveField(3) dynamic questionsAnswered,
      @HiveField(4) dynamic correctAnswers,
      @HiveField(5) dynamic wrongAnswers});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizesTaken = freezed,
    Object? quizesPassed = freezed,
    Object? topicsFinished = freezed,
    Object? questionsAnswered = freezed,
    Object? correctAnswers = freezed,
    Object? wrongAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      quizesTaken: freezed == quizesTaken
          ? _value.quizesTaken
          : quizesTaken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quizesPassed: freezed == quizesPassed
          ? _value.quizesPassed
          : quizesPassed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topicsFinished: freezed == topicsFinished
          ? _value.topicsFinished
          : topicsFinished // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionsAnswered: freezed == questionsAnswered
          ? _value.questionsAnswered
          : questionsAnswered // ignore: cast_nullable_to_non_nullable
              as dynamic,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wrongAnswers: freezed == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) dynamic quizesTaken,
      @HiveField(1) dynamic quizesPassed,
      @HiveField(2) dynamic topicsFinished,
      @HiveField(3) dynamic questionsAnswered,
      @HiveField(4) dynamic correctAnswers,
      @HiveField(5) dynamic wrongAnswers});
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizesTaken = freezed,
    Object? quizesPassed = freezed,
    Object? topicsFinished = freezed,
    Object? questionsAnswered = freezed,
    Object? correctAnswers = freezed,
    Object? wrongAnswers = freezed,
  }) {
    return _then(_$StatisticsImpl(
      quizesTaken: freezed == quizesTaken ? _value.quizesTaken! : quizesTaken,
      quizesPassed:
          freezed == quizesPassed ? _value.quizesPassed! : quizesPassed,
      topicsFinished:
          freezed == topicsFinished ? _value.topicsFinished! : topicsFinished,
      questionsAnswered: freezed == questionsAnswered
          ? _value.questionsAnswered!
          : questionsAnswered,
      correctAnswers:
          freezed == correctAnswers ? _value.correctAnswers! : correctAnswers,
      wrongAnswers:
          freezed == wrongAnswers ? _value.wrongAnswers! : wrongAnswers,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'StatisticsAdapter')
class _$StatisticsImpl implements _Statistics {
  _$StatisticsImpl(
      {@HiveField(0) this.quizesTaken = 0,
      @HiveField(1) this.quizesPassed = 0,
      @HiveField(2) this.topicsFinished = 0,
      @HiveField(3) this.questionsAnswered = 0,
      @HiveField(4) this.correctAnswers = 0,
      @HiveField(5) this.wrongAnswers = 0});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  dynamic quizesTaken;
  @override
  @JsonKey()
  @HiveField(1)
  dynamic quizesPassed;
  @override
  @JsonKey()
  @HiveField(2)
  dynamic topicsFinished;
  @override
  @JsonKey()
  @HiveField(3)
  dynamic questionsAnswered;
  @override
  @JsonKey()
  @HiveField(4)
  dynamic correctAnswers;
  @override
  @JsonKey()
  @HiveField(5)
  dynamic wrongAnswers;

  @override
  String toString() {
    return 'Statistics(quizesTaken: $quizesTaken, quizesPassed: $quizesPassed, topicsFinished: $topicsFinished, questionsAnswered: $questionsAnswered, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  factory _Statistics(
      {@HiveField(0) dynamic quizesTaken,
      @HiveField(1) dynamic quizesPassed,
      @HiveField(2) dynamic topicsFinished,
      @HiveField(3) dynamic questionsAnswered,
      @HiveField(4) dynamic correctAnswers,
      @HiveField(5) dynamic wrongAnswers}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  @HiveField(0)
  dynamic get quizesTaken;
  @HiveField(0)
  set quizesTaken(dynamic value);
  @override
  @HiveField(1)
  dynamic get quizesPassed;
  @HiveField(1)
  set quizesPassed(dynamic value);
  @override
  @HiveField(2)
  dynamic get topicsFinished;
  @HiveField(2)
  set topicsFinished(dynamic value);
  @override
  @HiveField(3)
  dynamic get questionsAnswered;
  @HiveField(3)
  set questionsAnswered(dynamic value);
  @override
  @HiveField(4)
  dynamic get correctAnswers;
  @HiveField(4)
  set correctAnswers(dynamic value);
  @override
  @HiveField(5)
  dynamic get wrongAnswers;
  @HiveField(5)
  set wrongAnswers(dynamic value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
