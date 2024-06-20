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
  int get quizesTaken => throw _privateConstructorUsedError;
  int get quizesPassed => throw _privateConstructorUsedError;
  int get topicsFinished => throw _privateConstructorUsedError;
  int get questionsAnswered => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int get wrongAnswers => throw _privateConstructorUsedError;

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
      {int quizesTaken,
      int quizesPassed,
      int topicsFinished,
      int questionsAnswered,
      int correctAnswers,
      int wrongAnswers});
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
    Object? quizesTaken = null,
    Object? quizesPassed = null,
    Object? topicsFinished = null,
    Object? questionsAnswered = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
  }) {
    return _then(_value.copyWith(
      quizesTaken: null == quizesTaken
          ? _value.quizesTaken
          : quizesTaken // ignore: cast_nullable_to_non_nullable
              as int,
      quizesPassed: null == quizesPassed
          ? _value.quizesPassed
          : quizesPassed // ignore: cast_nullable_to_non_nullable
              as int,
      topicsFinished: null == topicsFinished
          ? _value.topicsFinished
          : topicsFinished // ignore: cast_nullable_to_non_nullable
              as int,
      questionsAnswered: null == questionsAnswered
          ? _value.questionsAnswered
          : questionsAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int quizesTaken,
      int quizesPassed,
      int topicsFinished,
      int questionsAnswered,
      int correctAnswers,
      int wrongAnswers});
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
    Object? quizesTaken = null,
    Object? quizesPassed = null,
    Object? topicsFinished = null,
    Object? questionsAnswered = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
  }) {
    return _then(_$StatisticsImpl(
      quizesTaken: null == quizesTaken
          ? _value.quizesTaken
          : quizesTaken // ignore: cast_nullable_to_non_nullable
              as int,
      quizesPassed: null == quizesPassed
          ? _value.quizesPassed
          : quizesPassed // ignore: cast_nullable_to_non_nullable
              as int,
      topicsFinished: null == topicsFinished
          ? _value.topicsFinished
          : topicsFinished // ignore: cast_nullable_to_non_nullable
              as int,
      questionsAnswered: null == questionsAnswered
          ? _value.questionsAnswered
          : questionsAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl implements _Statistics {
  const _$StatisticsImpl(
      {required this.quizesTaken,
      required this.quizesPassed,
      required this.topicsFinished,
      required this.questionsAnswered,
      required this.correctAnswers,
      required this.wrongAnswers});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  final int quizesTaken;
  @override
  final int quizesPassed;
  @override
  final int topicsFinished;
  @override
  final int questionsAnswered;
  @override
  final int correctAnswers;
  @override
  final int wrongAnswers;

  @override
  String toString() {
    return 'Statistics(quizesTaken: $quizesTaken, quizesPassed: $quizesPassed, topicsFinished: $topicsFinished, questionsAnswered: $questionsAnswered, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.quizesTaken, quizesTaken) ||
                other.quizesTaken == quizesTaken) &&
            (identical(other.quizesPassed, quizesPassed) ||
                other.quizesPassed == quizesPassed) &&
            (identical(other.topicsFinished, topicsFinished) ||
                other.topicsFinished == topicsFinished) &&
            (identical(other.questionsAnswered, questionsAnswered) ||
                other.questionsAnswered == questionsAnswered) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.wrongAnswers, wrongAnswers) ||
                other.wrongAnswers == wrongAnswers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quizesTaken, quizesPassed,
      topicsFinished, questionsAnswered, correctAnswers, wrongAnswers);

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
  const factory _Statistics(
      {required final int quizesTaken,
      required final int quizesPassed,
      required final int topicsFinished,
      required final int questionsAnswered,
      required final int correctAnswers,
      required final int wrongAnswers}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  int get quizesTaken;
  @override
  int get quizesPassed;
  @override
  int get topicsFinished;
  @override
  int get questionsAnswered;
  @override
  int get correctAnswers;
  @override
  int get wrongAnswers;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
