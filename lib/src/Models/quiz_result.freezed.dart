// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizResult _$QuizResultFromJson(Map<String, dynamic> json) {
  return _QuizResult.fromJson(json);
}

/// @nodoc
mixin _$QuizResult {
  @HiveField(0)
  int get correctAnswers => throw _privateConstructorUsedError;
  @HiveField(0)
  set correctAnswers(int value) => throw _privateConstructorUsedError;
  @HiveField(1)
  int get wrongAnswers => throw _privateConstructorUsedError;
  @HiveField(1)
  set wrongAnswers(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizResultCopyWith<QuizResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultCopyWith<$Res> {
  factory $QuizResultCopyWith(
          QuizResult value, $Res Function(QuizResult) then) =
      _$QuizResultCopyWithImpl<$Res, QuizResult>;
  @useResult
  $Res call({@HiveField(0) int correctAnswers, @HiveField(1) int wrongAnswers});
}

/// @nodoc
class _$QuizResultCopyWithImpl<$Res, $Val extends QuizResult>
    implements $QuizResultCopyWith<$Res> {
  _$QuizResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$QuizResultImplCopyWith<$Res>
    implements $QuizResultCopyWith<$Res> {
  factory _$$QuizResultImplCopyWith(
          _$QuizResultImpl value, $Res Function(_$QuizResultImpl) then) =
      __$$QuizResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int correctAnswers, @HiveField(1) int wrongAnswers});
}

/// @nodoc
class __$$QuizResultImplCopyWithImpl<$Res>
    extends _$QuizResultCopyWithImpl<$Res, _$QuizResultImpl>
    implements _$$QuizResultImplCopyWith<$Res> {
  __$$QuizResultImplCopyWithImpl(
      _$QuizResultImpl _value, $Res Function(_$QuizResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
  }) {
    return _then(_$QuizResultImpl(
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
@HiveType(typeId: 8, adapterName: 'QuizResultAdapter')
class _$QuizResultImpl extends _QuizResult {
  _$QuizResultImpl(
      {@HiveField(0) required this.correctAnswers,
      @HiveField(1) required this.wrongAnswers})
      : super._();

  factory _$QuizResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResultImplFromJson(json);

  @override
  @HiveField(0)
  int correctAnswers;
  @override
  @HiveField(1)
  int wrongAnswers;

  @override
  String toString() {
    return 'QuizResult(correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultImplCopyWith<_$QuizResultImpl> get copyWith =>
      __$$QuizResultImplCopyWithImpl<_$QuizResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResultImplToJson(
      this,
    );
  }
}

abstract class _QuizResult extends QuizResult {
  factory _QuizResult(
      {@HiveField(0) required int correctAnswers,
      @HiveField(1) required int wrongAnswers}) = _$QuizResultImpl;
  _QuizResult._() : super._();

  factory _QuizResult.fromJson(Map<String, dynamic> json) =
      _$QuizResultImpl.fromJson;

  @override
  @HiveField(0)
  int get correctAnswers;
  @HiveField(0)
  set correctAnswers(int value);
  @override
  @HiveField(1)
  int get wrongAnswers;
  @HiveField(1)
  set wrongAnswers(int value);
  @override
  @JsonKey(ignore: true)
  _$$QuizResultImplCopyWith<_$QuizResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
