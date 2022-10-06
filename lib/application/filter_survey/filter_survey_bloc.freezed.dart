// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterSurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) sortByValueUpdated,
    required TResult Function(int lowerBound, int upperBound)
        numberOfVotesUpdated,
    required TResult Function(String newValue) questionTypeUpdated,
    required TResult Function() resetExecuted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SortByValueUpdated value) sortByValueUpdated,
    required TResult Function(_NumberOfVotesUpdated value) numberOfVotesUpdated,
    required TResult Function(_QuestionTypeUpdated value) questionTypeUpdated,
    required TResult Function(_ResetExecuted value) resetExecuted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSurveyEventCopyWith<$Res> {
  factory $FilterSurveyEventCopyWith(
          FilterSurveyEvent value, $Res Function(FilterSurveyEvent) then) =
      _$FilterSurveyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterSurveyEventCopyWithImpl<$Res>
    implements $FilterSurveyEventCopyWith<$Res> {
  _$FilterSurveyEventCopyWithImpl(this._value, this._then);

  final FilterSurveyEvent _value;
  // ignore: unused_field
  final $Res Function(FilterSurveyEvent) _then;
}

/// @nodoc
abstract class _$$_SortByValueUpdatedCopyWith<$Res> {
  factory _$$_SortByValueUpdatedCopyWith(_$_SortByValueUpdated value,
          $Res Function(_$_SortByValueUpdated) then) =
      __$$_SortByValueUpdatedCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class __$$_SortByValueUpdatedCopyWithImpl<$Res>
    extends _$FilterSurveyEventCopyWithImpl<$Res>
    implements _$$_SortByValueUpdatedCopyWith<$Res> {
  __$$_SortByValueUpdatedCopyWithImpl(
      _$_SortByValueUpdated _value, $Res Function(_$_SortByValueUpdated) _then)
      : super(_value, (v) => _then(v as _$_SortByValueUpdated));

  @override
  _$_SortByValueUpdated get _value => super._value as _$_SortByValueUpdated;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$_SortByValueUpdated(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SortByValueUpdated implements _SortByValueUpdated {
  const _$_SortByValueUpdated(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'FilterSurveyEvent.sortByValueUpdated(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortByValueUpdated &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$_SortByValueUpdatedCopyWith<_$_SortByValueUpdated> get copyWith =>
      __$$_SortByValueUpdatedCopyWithImpl<_$_SortByValueUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) sortByValueUpdated,
    required TResult Function(int lowerBound, int upperBound)
        numberOfVotesUpdated,
    required TResult Function(String newValue) questionTypeUpdated,
    required TResult Function() resetExecuted,
  }) {
    return sortByValueUpdated(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
  }) {
    return sortByValueUpdated?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
    required TResult orElse(),
  }) {
    if (sortByValueUpdated != null) {
      return sortByValueUpdated(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SortByValueUpdated value) sortByValueUpdated,
    required TResult Function(_NumberOfVotesUpdated value) numberOfVotesUpdated,
    required TResult Function(_QuestionTypeUpdated value) questionTypeUpdated,
    required TResult Function(_ResetExecuted value) resetExecuted,
  }) {
    return sortByValueUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
  }) {
    return sortByValueUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
    required TResult orElse(),
  }) {
    if (sortByValueUpdated != null) {
      return sortByValueUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortByValueUpdated implements FilterSurveyEvent {
  const factory _SortByValueUpdated(final String newValue) =
      _$_SortByValueUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$$_SortByValueUpdatedCopyWith<_$_SortByValueUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NumberOfVotesUpdatedCopyWith<$Res> {
  factory _$$_NumberOfVotesUpdatedCopyWith(_$_NumberOfVotesUpdated value,
          $Res Function(_$_NumberOfVotesUpdated) then) =
      __$$_NumberOfVotesUpdatedCopyWithImpl<$Res>;
  $Res call({int lowerBound, int upperBound});
}

/// @nodoc
class __$$_NumberOfVotesUpdatedCopyWithImpl<$Res>
    extends _$FilterSurveyEventCopyWithImpl<$Res>
    implements _$$_NumberOfVotesUpdatedCopyWith<$Res> {
  __$$_NumberOfVotesUpdatedCopyWithImpl(_$_NumberOfVotesUpdated _value,
      $Res Function(_$_NumberOfVotesUpdated) _then)
      : super(_value, (v) => _then(v as _$_NumberOfVotesUpdated));

  @override
  _$_NumberOfVotesUpdated get _value => super._value as _$_NumberOfVotesUpdated;

  @override
  $Res call({
    Object? lowerBound = freezed,
    Object? upperBound = freezed,
  }) {
    return _then(_$_NumberOfVotesUpdated(
      lowerBound == freezed
          ? _value.lowerBound
          : lowerBound // ignore: cast_nullable_to_non_nullable
              as int,
      upperBound == freezed
          ? _value.upperBound
          : upperBound // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberOfVotesUpdated implements _NumberOfVotesUpdated {
  const _$_NumberOfVotesUpdated(this.lowerBound, this.upperBound);

  @override
  final int lowerBound;
  @override
  final int upperBound;

  @override
  String toString() {
    return 'FilterSurveyEvent.numberOfVotesUpdated(lowerBound: $lowerBound, upperBound: $upperBound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberOfVotesUpdated &&
            const DeepCollectionEquality()
                .equals(other.lowerBound, lowerBound) &&
            const DeepCollectionEquality()
                .equals(other.upperBound, upperBound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lowerBound),
      const DeepCollectionEquality().hash(upperBound));

  @JsonKey(ignore: true)
  @override
  _$$_NumberOfVotesUpdatedCopyWith<_$_NumberOfVotesUpdated> get copyWith =>
      __$$_NumberOfVotesUpdatedCopyWithImpl<_$_NumberOfVotesUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) sortByValueUpdated,
    required TResult Function(int lowerBound, int upperBound)
        numberOfVotesUpdated,
    required TResult Function(String newValue) questionTypeUpdated,
    required TResult Function() resetExecuted,
  }) {
    return numberOfVotesUpdated(lowerBound, upperBound);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
  }) {
    return numberOfVotesUpdated?.call(lowerBound, upperBound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
    required TResult orElse(),
  }) {
    if (numberOfVotesUpdated != null) {
      return numberOfVotesUpdated(lowerBound, upperBound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SortByValueUpdated value) sortByValueUpdated,
    required TResult Function(_NumberOfVotesUpdated value) numberOfVotesUpdated,
    required TResult Function(_QuestionTypeUpdated value) questionTypeUpdated,
    required TResult Function(_ResetExecuted value) resetExecuted,
  }) {
    return numberOfVotesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
  }) {
    return numberOfVotesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
    required TResult orElse(),
  }) {
    if (numberOfVotesUpdated != null) {
      return numberOfVotesUpdated(this);
    }
    return orElse();
  }
}

abstract class _NumberOfVotesUpdated implements FilterSurveyEvent {
  const factory _NumberOfVotesUpdated(
      final int lowerBound, final int upperBound) = _$_NumberOfVotesUpdated;

  int get lowerBound;
  int get upperBound;
  @JsonKey(ignore: true)
  _$$_NumberOfVotesUpdatedCopyWith<_$_NumberOfVotesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionTypeUpdatedCopyWith<$Res> {
  factory _$$_QuestionTypeUpdatedCopyWith(_$_QuestionTypeUpdated value,
          $Res Function(_$_QuestionTypeUpdated) then) =
      __$$_QuestionTypeUpdatedCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class __$$_QuestionTypeUpdatedCopyWithImpl<$Res>
    extends _$FilterSurveyEventCopyWithImpl<$Res>
    implements _$$_QuestionTypeUpdatedCopyWith<$Res> {
  __$$_QuestionTypeUpdatedCopyWithImpl(_$_QuestionTypeUpdated _value,
      $Res Function(_$_QuestionTypeUpdated) _then)
      : super(_value, (v) => _then(v as _$_QuestionTypeUpdated));

  @override
  _$_QuestionTypeUpdated get _value => super._value as _$_QuestionTypeUpdated;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$_QuestionTypeUpdated(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionTypeUpdated implements _QuestionTypeUpdated {
  const _$_QuestionTypeUpdated(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'FilterSurveyEvent.questionTypeUpdated(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionTypeUpdated &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionTypeUpdatedCopyWith<_$_QuestionTypeUpdated> get copyWith =>
      __$$_QuestionTypeUpdatedCopyWithImpl<_$_QuestionTypeUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) sortByValueUpdated,
    required TResult Function(int lowerBound, int upperBound)
        numberOfVotesUpdated,
    required TResult Function(String newValue) questionTypeUpdated,
    required TResult Function() resetExecuted,
  }) {
    return questionTypeUpdated(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
  }) {
    return questionTypeUpdated?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
    required TResult orElse(),
  }) {
    if (questionTypeUpdated != null) {
      return questionTypeUpdated(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SortByValueUpdated value) sortByValueUpdated,
    required TResult Function(_NumberOfVotesUpdated value) numberOfVotesUpdated,
    required TResult Function(_QuestionTypeUpdated value) questionTypeUpdated,
    required TResult Function(_ResetExecuted value) resetExecuted,
  }) {
    return questionTypeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
  }) {
    return questionTypeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
    required TResult orElse(),
  }) {
    if (questionTypeUpdated != null) {
      return questionTypeUpdated(this);
    }
    return orElse();
  }
}

abstract class _QuestionTypeUpdated implements FilterSurveyEvent {
  const factory _QuestionTypeUpdated(final String newValue) =
      _$_QuestionTypeUpdated;

  String get newValue;
  @JsonKey(ignore: true)
  _$$_QuestionTypeUpdatedCopyWith<_$_QuestionTypeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetExecutedCopyWith<$Res> {
  factory _$$_ResetExecutedCopyWith(
          _$_ResetExecuted value, $Res Function(_$_ResetExecuted) then) =
      __$$_ResetExecutedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetExecutedCopyWithImpl<$Res>
    extends _$FilterSurveyEventCopyWithImpl<$Res>
    implements _$$_ResetExecutedCopyWith<$Res> {
  __$$_ResetExecutedCopyWithImpl(
      _$_ResetExecuted _value, $Res Function(_$_ResetExecuted) _then)
      : super(_value, (v) => _then(v as _$_ResetExecuted));

  @override
  _$_ResetExecuted get _value => super._value as _$_ResetExecuted;
}

/// @nodoc

class _$_ResetExecuted implements _ResetExecuted {
  const _$_ResetExecuted();

  @override
  String toString() {
    return 'FilterSurveyEvent.resetExecuted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetExecuted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) sortByValueUpdated,
    required TResult Function(int lowerBound, int upperBound)
        numberOfVotesUpdated,
    required TResult Function(String newValue) questionTypeUpdated,
    required TResult Function() resetExecuted,
  }) {
    return resetExecuted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
  }) {
    return resetExecuted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? sortByValueUpdated,
    TResult Function(int lowerBound, int upperBound)? numberOfVotesUpdated,
    TResult Function(String newValue)? questionTypeUpdated,
    TResult Function()? resetExecuted,
    required TResult orElse(),
  }) {
    if (resetExecuted != null) {
      return resetExecuted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SortByValueUpdated value) sortByValueUpdated,
    required TResult Function(_NumberOfVotesUpdated value) numberOfVotesUpdated,
    required TResult Function(_QuestionTypeUpdated value) questionTypeUpdated,
    required TResult Function(_ResetExecuted value) resetExecuted,
  }) {
    return resetExecuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
  }) {
    return resetExecuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SortByValueUpdated value)? sortByValueUpdated,
    TResult Function(_NumberOfVotesUpdated value)? numberOfVotesUpdated,
    TResult Function(_QuestionTypeUpdated value)? questionTypeUpdated,
    TResult Function(_ResetExecuted value)? resetExecuted,
    required TResult orElse(),
  }) {
    if (resetExecuted != null) {
      return resetExecuted(this);
    }
    return orElse();
  }
}

abstract class _ResetExecuted implements FilterSurveyEvent {
  const factory _ResetExecuted() = _$_ResetExecuted;
}

/// @nodoc
mixin _$FilterSurveyState {
  String get sortByValue => throw _privateConstructorUsedError;
  int get numberOfVotesLowerBound => throw _privateConstructorUsedError;
  int get numberOfVotesUpperBound => throw _privateConstructorUsedError;
  String get questionType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSurveyStateCopyWith<FilterSurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSurveyStateCopyWith<$Res> {
  factory $FilterSurveyStateCopyWith(
          FilterSurveyState value, $Res Function(FilterSurveyState) then) =
      _$FilterSurveyStateCopyWithImpl<$Res>;
  $Res call(
      {String sortByValue,
      int numberOfVotesLowerBound,
      int numberOfVotesUpperBound,
      String questionType});
}

/// @nodoc
class _$FilterSurveyStateCopyWithImpl<$Res>
    implements $FilterSurveyStateCopyWith<$Res> {
  _$FilterSurveyStateCopyWithImpl(this._value, this._then);

  final FilterSurveyState _value;
  // ignore: unused_field
  final $Res Function(FilterSurveyState) _then;

  @override
  $Res call({
    Object? sortByValue = freezed,
    Object? numberOfVotesLowerBound = freezed,
    Object? numberOfVotesUpperBound = freezed,
    Object? questionType = freezed,
  }) {
    return _then(_value.copyWith(
      sortByValue: sortByValue == freezed
          ? _value.sortByValue
          : sortByValue // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfVotesLowerBound: numberOfVotesLowerBound == freezed
          ? _value.numberOfVotesLowerBound
          : numberOfVotesLowerBound // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVotesUpperBound: numberOfVotesUpperBound == freezed
          ? _value.numberOfVotesUpperBound
          : numberOfVotesUpperBound // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterSurveyStateCopyWith<$Res>
    implements $FilterSurveyStateCopyWith<$Res> {
  factory _$$_FilterSurveyStateCopyWith(_$_FilterSurveyState value,
          $Res Function(_$_FilterSurveyState) then) =
      __$$_FilterSurveyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sortByValue,
      int numberOfVotesLowerBound,
      int numberOfVotesUpperBound,
      String questionType});
}

/// @nodoc
class __$$_FilterSurveyStateCopyWithImpl<$Res>
    extends _$FilterSurveyStateCopyWithImpl<$Res>
    implements _$$_FilterSurveyStateCopyWith<$Res> {
  __$$_FilterSurveyStateCopyWithImpl(
      _$_FilterSurveyState _value, $Res Function(_$_FilterSurveyState) _then)
      : super(_value, (v) => _then(v as _$_FilterSurveyState));

  @override
  _$_FilterSurveyState get _value => super._value as _$_FilterSurveyState;

  @override
  $Res call({
    Object? sortByValue = freezed,
    Object? numberOfVotesLowerBound = freezed,
    Object? numberOfVotesUpperBound = freezed,
    Object? questionType = freezed,
  }) {
    return _then(_$_FilterSurveyState(
      sortByValue: sortByValue == freezed
          ? _value.sortByValue
          : sortByValue // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfVotesLowerBound: numberOfVotesLowerBound == freezed
          ? _value.numberOfVotesLowerBound
          : numberOfVotesLowerBound // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVotesUpperBound: numberOfVotesUpperBound == freezed
          ? _value.numberOfVotesUpperBound
          : numberOfVotesUpperBound // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterSurveyState implements _FilterSurveyState {
  const _$_FilterSurveyState(
      {required this.sortByValue,
      required this.numberOfVotesLowerBound,
      required this.numberOfVotesUpperBound,
      required this.questionType});

  @override
  final String sortByValue;
  @override
  final int numberOfVotesLowerBound;
  @override
  final int numberOfVotesUpperBound;
  @override
  final String questionType;

  @override
  String toString() {
    return 'FilterSurveyState(sortByValue: $sortByValue, numberOfVotesLowerBound: $numberOfVotesLowerBound, numberOfVotesUpperBound: $numberOfVotesUpperBound, questionType: $questionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterSurveyState &&
            const DeepCollectionEquality()
                .equals(other.sortByValue, sortByValue) &&
            const DeepCollectionEquality().equals(
                other.numberOfVotesLowerBound, numberOfVotesLowerBound) &&
            const DeepCollectionEquality().equals(
                other.numberOfVotesUpperBound, numberOfVotesUpperBound) &&
            const DeepCollectionEquality()
                .equals(other.questionType, questionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sortByValue),
      const DeepCollectionEquality().hash(numberOfVotesLowerBound),
      const DeepCollectionEquality().hash(numberOfVotesUpperBound),
      const DeepCollectionEquality().hash(questionType));

  @JsonKey(ignore: true)
  @override
  _$$_FilterSurveyStateCopyWith<_$_FilterSurveyState> get copyWith =>
      __$$_FilterSurveyStateCopyWithImpl<_$_FilterSurveyState>(
          this, _$identity);
}

abstract class _FilterSurveyState implements FilterSurveyState {
  const factory _FilterSurveyState(
      {required final String sortByValue,
      required final int numberOfVotesLowerBound,
      required final int numberOfVotesUpperBound,
      required final String questionType}) = _$_FilterSurveyState;

  @override
  String get sortByValue;
  @override
  int get numberOfVotesLowerBound;
  @override
  int get numberOfVotesUpperBound;
  @override
  String get questionType;
  @override
  @JsonKey(ignore: true)
  _$$_FilterSurveyStateCopyWith<_$_FilterSurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}
