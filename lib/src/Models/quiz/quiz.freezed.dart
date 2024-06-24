// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  @HiveField(0)
  int get quizId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Question> get questions => throw _privateConstructorUsedError;
  @HiveField(3)
  set questions(List<Question> value) => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get finished => throw _privateConstructorUsedError;
  @HiveField(4)
  set finished(bool value) => throw _privateConstructorUsedError;
  @HiveField(5)
  QuizResult? get result => throw _privateConstructorUsedError;
  @HiveField(5)
  set result(QuizResult? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {@HiveField(0) int quizId,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) List<Question> questions,
      @HiveField(4) bool finished,
      @HiveField(5) QuizResult? result});

  $QuizResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? title = null,
    Object? description = freezed,
    Object? questions = null,
    Object? finished = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QuizResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $QuizResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int quizId,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) List<Question> questions,
      @HiveField(4) bool finished,
      @HiveField(5) QuizResult? result});

  @override
  $QuizResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? title = null,
    Object? description = freezed,
    Object? questions = null,
    Object? finished = null,
    Object? result = freezed,
  }) {
    return _then(_$QuizImpl(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QuizResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'QuizAdapter')
class _$QuizImpl extends _Quiz {
  _$QuizImpl(
      {@HiveField(0) required this.quizId,
      @HiveField(1) required this.title,
      @HiveField(2) this.description,
      @HiveField(3) this.questions = const [],
      @HiveField(4) this.finished = false,
      @HiveField(5) this.result})
      : super._();

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  @HiveField(0)
  final int quizId;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @JsonKey()
  @HiveField(3)
  List<Question> questions;
  @override
  @JsonKey()
  @HiveField(4)
  bool finished;
  @override
  @HiveField(5)
  QuizResult? result;

  @override
  String toString() {
    return 'Quiz(quizId: $quizId, title: $title, description: $description, questions: $questions, finished: $finished, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz extends Quiz {
  factory _Quiz(
      {@HiveField(0) required final int quizId,
      @HiveField(1) required final String title,
      @HiveField(2) final String? description,
      @HiveField(3) List<Question> questions,
      @HiveField(4) bool finished,
      @HiveField(5) QuizResult? result}) = _$QuizImpl;
  _Quiz._() : super._();

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  @HiveField(0)
  int get quizId;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  List<Question> get questions;
  @HiveField(3)
  set questions(List<Question> value);
  @override
  @HiveField(4)
  bool get finished;
  @HiveField(4)
  set finished(bool value);
  @override
  @HiveField(5)
  QuizResult? get result;
  @HiveField(5)
  set result(QuizResult? value);
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
