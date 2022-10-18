// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surveys_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveysEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveysEventCopyWith<$Res> {
  factory $SurveysEventCopyWith(
          SurveysEvent value, $Res Function(SurveysEvent) then) =
      _$SurveysEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveysEventCopyWithImpl<$Res> implements $SurveysEventCopyWith<$Res> {
  _$SurveysEventCopyWithImpl(this._value, this._then);

  final SurveysEvent _value;
  // ignore: unused_field
  final $Res Function(SurveysEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Initialized(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SurveysEvent.initialized(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return initialized(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return initialized?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SurveysEvent {
  const factory _Initialized(final String id) = _$_Initialized;

  String get id;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SurveyQuestionsUpdatedCopyWith<$Res> {
  factory _$$_SurveyQuestionsUpdatedCopyWith(_$_SurveyQuestionsUpdated value,
          $Res Function(_$_SurveyQuestionsUpdated) then) =
      __$$_SurveyQuestionsUpdatedCopyWithImpl<$Res>;
  $Res call({List<SurveyRowInfo> SurveyQuestionsInfo});
}

/// @nodoc
class __$$_SurveyQuestionsUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_SurveyQuestionsUpdatedCopyWith<$Res> {
  __$$_SurveyQuestionsUpdatedCopyWithImpl(_$_SurveyQuestionsUpdated _value,
      $Res Function(_$_SurveyQuestionsUpdated) _then)
      : super(_value, (v) => _then(v as _$_SurveyQuestionsUpdated));

  @override
  _$_SurveyQuestionsUpdated get _value =>
      super._value as _$_SurveyQuestionsUpdated;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
  }) {
    return _then(_$_SurveyQuestionsUpdated(
      SurveyQuestionsInfo == freezed
          ? _value._SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
    ));
  }
}

/// @nodoc

class _$_SurveyQuestionsUpdated implements _SurveyQuestionsUpdated {
  const _$_SurveyQuestionsUpdated(final List<SurveyRowInfo> SurveyQuestionsInfo)
      : _SurveyQuestionsInfo = SurveyQuestionsInfo;

  final List<SurveyRowInfo> _SurveyQuestionsInfo;
  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SurveyQuestionsInfo);
  }

  @override
  String toString() {
    return 'SurveysEvent.SurveyQuestionsUpdated(SurveyQuestionsInfo: $SurveyQuestionsInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyQuestionsUpdated &&
            const DeepCollectionEquality()
                .equals(other._SurveyQuestionsInfo, _SurveyQuestionsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_SurveyQuestionsInfo));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyQuestionsUpdatedCopyWith<_$_SurveyQuestionsUpdated> get copyWith =>
      __$$_SurveyQuestionsUpdatedCopyWithImpl<_$_SurveyQuestionsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return SurveyQuestionsUpdated(SurveyQuestionsInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return SurveyQuestionsUpdated?.call(SurveyQuestionsInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (SurveyQuestionsUpdated != null) {
      return SurveyQuestionsUpdated(SurveyQuestionsInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return SurveyQuestionsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return SurveyQuestionsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (SurveyQuestionsUpdated != null) {
      return SurveyQuestionsUpdated(this);
    }
    return orElse();
  }
}

abstract class _SurveyQuestionsUpdated implements SurveysEvent {
  const factory _SurveyQuestionsUpdated(
          final List<SurveyRowInfo> SurveyQuestionsInfo) =
      _$_SurveyQuestionsUpdated;

  List<SurveyRowInfo> get SurveyQuestionsInfo;
  @JsonKey(ignore: true)
  _$$_SurveyQuestionsUpdatedCopyWith<_$_SurveyQuestionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsFetchingUpdatedCopyWith<$Res> {
  factory _$$_IsFetchingUpdatedCopyWith(_$_IsFetchingUpdated value,
          $Res Function(_$_IsFetchingUpdated) then) =
      __$$_IsFetchingUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetching});
}

/// @nodoc
class __$$_IsFetchingUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_IsFetchingUpdatedCopyWith<$Res> {
  __$$_IsFetchingUpdatedCopyWithImpl(
      _$_IsFetchingUpdated _value, $Res Function(_$_IsFetchingUpdated) _then)
      : super(_value, (v) => _then(v as _$_IsFetchingUpdated));

  @override
  _$_IsFetchingUpdated get _value => super._value as _$_IsFetchingUpdated;

  @override
  $Res call({
    Object? isFetching = freezed,
  }) {
    return _then(_$_IsFetchingUpdated(
      isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsFetchingUpdated implements _IsFetchingUpdated {
  const _$_IsFetchingUpdated(this.isFetching);

  @override
  final bool isFetching;

  @override
  String toString() {
    return 'SurveysEvent.isFetchingUpdated(isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsFetchingUpdated &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$$_IsFetchingUpdatedCopyWith<_$_IsFetchingUpdated> get copyWith =>
      __$$_IsFetchingUpdatedCopyWithImpl<_$_IsFetchingUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return isFetchingUpdated(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return isFetchingUpdated?.call(isFetching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (isFetchingUpdated != null) {
      return isFetchingUpdated(isFetching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return isFetchingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return isFetchingUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (isFetchingUpdated != null) {
      return isFetchingUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsFetchingUpdated implements SurveysEvent {
  const factory _IsFetchingUpdated(final bool isFetching) =
      _$_IsFetchingUpdated;

  bool get isFetching;
  @JsonKey(ignore: true)
  _$$_IsFetchingUpdatedCopyWith<_$_IsFetchingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsDataFetchedUpdatedCopyWith<$Res> {
  factory _$$_IsDataFetchedUpdatedCopyWith(_$_IsDataFetchedUpdated value,
          $Res Function(_$_IsDataFetchedUpdated) then) =
      __$$_IsDataFetchedUpdatedCopyWithImpl<$Res>;
  $Res call({bool isFetched});
}

/// @nodoc
class __$$_IsDataFetchedUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_IsDataFetchedUpdatedCopyWith<$Res> {
  __$$_IsDataFetchedUpdatedCopyWithImpl(_$_IsDataFetchedUpdated _value,
      $Res Function(_$_IsDataFetchedUpdated) _then)
      : super(_value, (v) => _then(v as _$_IsDataFetchedUpdated));

  @override
  _$_IsDataFetchedUpdated get _value => super._value as _$_IsDataFetchedUpdated;

  @override
  $Res call({
    Object? isFetched = freezed,
  }) {
    return _then(_$_IsDataFetchedUpdated(
      isFetched == freezed
          ? _value.isFetched
          : isFetched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsDataFetchedUpdated implements _IsDataFetchedUpdated {
  const _$_IsDataFetchedUpdated(this.isFetched);

  @override
  final bool isFetched;

  @override
  String toString() {
    return 'SurveysEvent.isDataFetchedUpdated(isFetched: $isFetched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsDataFetchedUpdated &&
            const DeepCollectionEquality().equals(other.isFetched, isFetched));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFetched));

  @JsonKey(ignore: true)
  @override
  _$$_IsDataFetchedUpdatedCopyWith<_$_IsDataFetchedUpdated> get copyWith =>
      __$$_IsDataFetchedUpdatedCopyWithImpl<_$_IsDataFetchedUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return isDataFetchedUpdated(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return isDataFetchedUpdated?.call(isFetched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (isDataFetchedUpdated != null) {
      return isDataFetchedUpdated(isFetched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return isDataFetchedUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return isDataFetchedUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (isDataFetchedUpdated != null) {
      return isDataFetchedUpdated(this);
    }
    return orElse();
  }
}

abstract class _IsDataFetchedUpdated implements SurveysEvent {
  const factory _IsDataFetchedUpdated(final bool isFetched) =
      _$_IsDataFetchedUpdated;

  bool get isFetched;
  @JsonKey(ignore: true)
  _$$_IsDataFetchedUpdatedCopyWith<_$_IsDataFetchedUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentQuestionUpdatedCopyWith<$Res> {
  factory _$$_CurrentQuestionUpdatedCopyWith(_$_CurrentQuestionUpdated value,
          $Res Function(_$_CurrentQuestionUpdated) then) =
      __$$_CurrentQuestionUpdatedCopyWithImpl<$Res>;
  $Res call({int currentQuestion});
}

/// @nodoc
class __$$_CurrentQuestionUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_CurrentQuestionUpdatedCopyWith<$Res> {
  __$$_CurrentQuestionUpdatedCopyWithImpl(_$_CurrentQuestionUpdated _value,
      $Res Function(_$_CurrentQuestionUpdated) _then)
      : super(_value, (v) => _then(v as _$_CurrentQuestionUpdated));

  @override
  _$_CurrentQuestionUpdated get _value =>
      super._value as _$_CurrentQuestionUpdated;

  @override
  $Res call({
    Object? currentQuestion = freezed,
  }) {
    return _then(_$_CurrentQuestionUpdated(
      currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrentQuestionUpdated implements _CurrentQuestionUpdated {
  const _$_CurrentQuestionUpdated(this.currentQuestion);

  @override
  final int currentQuestion;

  @override
  String toString() {
    return 'SurveysEvent.currentQuestionUpdated(currentQuestion: $currentQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentQuestionUpdated &&
            const DeepCollectionEquality()
                .equals(other.currentQuestion, currentQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentQuestion));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentQuestionUpdatedCopyWith<_$_CurrentQuestionUpdated> get copyWith =>
      __$$_CurrentQuestionUpdatedCopyWithImpl<_$_CurrentQuestionUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return currentQuestionUpdated(currentQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return currentQuestionUpdated?.call(currentQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (currentQuestionUpdated != null) {
      return currentQuestionUpdated(currentQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return currentQuestionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return currentQuestionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (currentQuestionUpdated != null) {
      return currentQuestionUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentQuestionUpdated implements SurveysEvent {
  const factory _CurrentQuestionUpdated(final int currentQuestion) =
      _$_CurrentQuestionUpdated;

  int get currentQuestion;
  @JsonKey(ignore: true)
  _$$_CurrentQuestionUpdatedCopyWith<_$_CurrentQuestionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TotalQuestionsUpdatedCopyWith<$Res> {
  factory _$$_TotalQuestionsUpdatedCopyWith(_$_TotalQuestionsUpdated value,
          $Res Function(_$_TotalQuestionsUpdated) then) =
      __$$_TotalQuestionsUpdatedCopyWithImpl<$Res>;
  $Res call({int totalQuestions});
}

/// @nodoc
class __$$_TotalQuestionsUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_TotalQuestionsUpdatedCopyWith<$Res> {
  __$$_TotalQuestionsUpdatedCopyWithImpl(_$_TotalQuestionsUpdated _value,
      $Res Function(_$_TotalQuestionsUpdated) _then)
      : super(_value, (v) => _then(v as _$_TotalQuestionsUpdated));

  @override
  _$_TotalQuestionsUpdated get _value =>
      super._value as _$_TotalQuestionsUpdated;

  @override
  $Res call({
    Object? totalQuestions = freezed,
  }) {
    return _then(_$_TotalQuestionsUpdated(
      totalQuestions == freezed
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TotalQuestionsUpdated implements _TotalQuestionsUpdated {
  const _$_TotalQuestionsUpdated(this.totalQuestions);

  @override
  final int totalQuestions;

  @override
  String toString() {
    return 'SurveysEvent.totalQuestionsUpdated(totalQuestions: $totalQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalQuestionsUpdated &&
            const DeepCollectionEquality()
                .equals(other.totalQuestions, totalQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(totalQuestions));

  @JsonKey(ignore: true)
  @override
  _$$_TotalQuestionsUpdatedCopyWith<_$_TotalQuestionsUpdated> get copyWith =>
      __$$_TotalQuestionsUpdatedCopyWithImpl<_$_TotalQuestionsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return totalQuestionsUpdated(totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return totalQuestionsUpdated?.call(totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (totalQuestionsUpdated != null) {
      return totalQuestionsUpdated(totalQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return totalQuestionsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return totalQuestionsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (totalQuestionsUpdated != null) {
      return totalQuestionsUpdated(this);
    }
    return orElse();
  }
}

abstract class _TotalQuestionsUpdated implements SurveysEvent {
  const factory _TotalQuestionsUpdated(final int totalQuestions) =
      _$_TotalQuestionsUpdated;

  int get totalQuestions;
  @JsonKey(ignore: true)
  _$$_TotalQuestionsUpdatedCopyWith<_$_TotalQuestionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionAnswersUpdatedCopyWith<$Res> {
  factory _$$_QuestionAnswersUpdatedCopyWith(_$_QuestionAnswersUpdated value,
          $Res Function(_$_QuestionAnswersUpdated) then) =
      __$$_QuestionAnswersUpdatedCopyWithImpl<$Res>;
  $Res call({List<SurveyQuestionAnswers> QuestionAnswers});
}

/// @nodoc
class __$$_QuestionAnswersUpdatedCopyWithImpl<$Res>
    extends _$SurveysEventCopyWithImpl<$Res>
    implements _$$_QuestionAnswersUpdatedCopyWith<$Res> {
  __$$_QuestionAnswersUpdatedCopyWithImpl(_$_QuestionAnswersUpdated _value,
      $Res Function(_$_QuestionAnswersUpdated) _then)
      : super(_value, (v) => _then(v as _$_QuestionAnswersUpdated));

  @override
  _$_QuestionAnswersUpdated get _value =>
      super._value as _$_QuestionAnswersUpdated;

  @override
  $Res call({
    Object? QuestionAnswers = freezed,
  }) {
    return _then(_$_QuestionAnswersUpdated(
      QuestionAnswers == freezed
          ? _value._QuestionAnswers
          : QuestionAnswers // ignore: cast_nullable_to_non_nullable
              as List<SurveyQuestionAnswers>,
    ));
  }
}

/// @nodoc

class _$_QuestionAnswersUpdated implements _QuestionAnswersUpdated {
  const _$_QuestionAnswersUpdated(
      final List<SurveyQuestionAnswers> QuestionAnswers)
      : _QuestionAnswers = QuestionAnswers;

  final List<SurveyQuestionAnswers> _QuestionAnswers;
  @override
  List<SurveyQuestionAnswers> get QuestionAnswers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_QuestionAnswers);
  }

  @override
  String toString() {
    return 'SurveysEvent.QuestionAnswersUpdated(QuestionAnswers: $QuestionAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswersUpdated &&
            const DeepCollectionEquality()
                .equals(other._QuestionAnswers, _QuestionAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_QuestionAnswers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionAnswersUpdatedCopyWith<_$_QuestionAnswersUpdated> get copyWith =>
      __$$_QuestionAnswersUpdatedCopyWithImpl<_$_QuestionAnswersUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialized,
    required TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)
        SurveyQuestionsUpdated,
    required TResult Function(bool isFetching) isFetchingUpdated,
    required TResult Function(bool isFetched) isDataFetchedUpdated,
    required TResult Function(int currentQuestion) currentQuestionUpdated,
    required TResult Function(int totalQuestions) totalQuestionsUpdated,
    required TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)
        QuestionAnswersUpdated,
  }) {
    return QuestionAnswersUpdated(QuestionAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
  }) {
    return QuestionAnswersUpdated?.call(QuestionAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialized,
    TResult Function(List<SurveyRowInfo> SurveyQuestionsInfo)?
        SurveyQuestionsUpdated,
    TResult Function(bool isFetching)? isFetchingUpdated,
    TResult Function(bool isFetched)? isDataFetchedUpdated,
    TResult Function(int currentQuestion)? currentQuestionUpdated,
    TResult Function(int totalQuestions)? totalQuestionsUpdated,
    TResult Function(List<SurveyQuestionAnswers> QuestionAnswers)?
        QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (QuestionAnswersUpdated != null) {
      return QuestionAnswersUpdated(QuestionAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyQuestionsUpdated value)
        SurveyQuestionsUpdated,
    required TResult Function(_IsFetchingUpdated value) isFetchingUpdated,
    required TResult Function(_IsDataFetchedUpdated value) isDataFetchedUpdated,
    required TResult Function(_CurrentQuestionUpdated value)
        currentQuestionUpdated,
    required TResult Function(_TotalQuestionsUpdated value)
        totalQuestionsUpdated,
    required TResult Function(_QuestionAnswersUpdated value)
        QuestionAnswersUpdated,
  }) {
    return QuestionAnswersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
  }) {
    return QuestionAnswersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyQuestionsUpdated value)? SurveyQuestionsUpdated,
    TResult Function(_IsFetchingUpdated value)? isFetchingUpdated,
    TResult Function(_IsDataFetchedUpdated value)? isDataFetchedUpdated,
    TResult Function(_CurrentQuestionUpdated value)? currentQuestionUpdated,
    TResult Function(_TotalQuestionsUpdated value)? totalQuestionsUpdated,
    TResult Function(_QuestionAnswersUpdated value)? QuestionAnswersUpdated,
    required TResult orElse(),
  }) {
    if (QuestionAnswersUpdated != null) {
      return QuestionAnswersUpdated(this);
    }
    return orElse();
  }
}

abstract class _QuestionAnswersUpdated implements SurveysEvent {
  const factory _QuestionAnswersUpdated(
          final List<SurveyQuestionAnswers> QuestionAnswers) =
      _$_QuestionAnswersUpdated;

  List<SurveyQuestionAnswers> get QuestionAnswers;
  @JsonKey(ignore: true)
  _$$_QuestionAnswersUpdatedCopyWith<_$_QuestionAnswersUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurveysState {
  List<SurveyRowInfo> get SurveyQuestionsInfo =>
      throw _privateConstructorUsedError;
  bool get isDataFetched => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  int get currentQuestion => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  List<SurveyQuestionAnswers> get QuestionAnswers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveysStateCopyWith<SurveysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveysStateCopyWith<$Res> {
  factory $SurveysStateCopyWith(
          SurveysState value, $Res Function(SurveysState) then) =
      _$SurveysStateCopyWithImpl<$Res>;
  $Res call(
      {List<SurveyRowInfo> SurveyQuestionsInfo,
      bool isDataFetched,
      bool isFetching,
      int currentQuestion,
      int totalQuestions,
      List<SurveyQuestionAnswers> QuestionAnswers});
}

/// @nodoc
class _$SurveysStateCopyWithImpl<$Res> implements $SurveysStateCopyWith<$Res> {
  _$SurveysStateCopyWithImpl(this._value, this._then);

  final SurveysState _value;
  // ignore: unused_field
  final $Res Function(SurveysState) _then;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
    Object? currentQuestion = freezed,
    Object? totalQuestions = freezed,
    Object? QuestionAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      SurveyQuestionsInfo: SurveyQuestionsInfo == freezed
          ? _value.SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: totalQuestions == freezed
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      QuestionAnswers: QuestionAnswers == freezed
          ? _value.QuestionAnswers
          : QuestionAnswers // ignore: cast_nullable_to_non_nullable
              as List<SurveyQuestionAnswers>,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveysStateCopyWith<$Res>
    implements $SurveysStateCopyWith<$Res> {
  factory _$$_SurveysStateCopyWith(
          _$_SurveysState value, $Res Function(_$_SurveysState) then) =
      __$$_SurveysStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SurveyRowInfo> SurveyQuestionsInfo,
      bool isDataFetched,
      bool isFetching,
      int currentQuestion,
      int totalQuestions,
      List<SurveyQuestionAnswers> QuestionAnswers});
}

/// @nodoc
class __$$_SurveysStateCopyWithImpl<$Res>
    extends _$SurveysStateCopyWithImpl<$Res>
    implements _$$_SurveysStateCopyWith<$Res> {
  __$$_SurveysStateCopyWithImpl(
      _$_SurveysState _value, $Res Function(_$_SurveysState) _then)
      : super(_value, (v) => _then(v as _$_SurveysState));

  @override
  _$_SurveysState get _value => super._value as _$_SurveysState;

  @override
  $Res call({
    Object? SurveyQuestionsInfo = freezed,
    Object? isDataFetched = freezed,
    Object? isFetching = freezed,
    Object? currentQuestion = freezed,
    Object? totalQuestions = freezed,
    Object? QuestionAnswers = freezed,
  }) {
    return _then(_$_SurveysState(
      SurveyQuestionsInfo: SurveyQuestionsInfo == freezed
          ? _value._SurveyQuestionsInfo
          : SurveyQuestionsInfo // ignore: cast_nullable_to_non_nullable
              as List<SurveyRowInfo>,
      isDataFetched: isDataFetched == freezed
          ? _value.isDataFetched
          : isDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: totalQuestions == freezed
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      QuestionAnswers: QuestionAnswers == freezed
          ? _value._QuestionAnswers
          : QuestionAnswers // ignore: cast_nullable_to_non_nullable
              as List<SurveyQuestionAnswers>,
    ));
  }
}

/// @nodoc

class _$_SurveysState implements _SurveysState {
  const _$_SurveysState(
      {required final List<SurveyRowInfo> SurveyQuestionsInfo,
      required this.isDataFetched,
      required this.isFetching,
      required this.currentQuestion,
      required this.totalQuestions,
      required final List<SurveyQuestionAnswers> QuestionAnswers})
      : _SurveyQuestionsInfo = SurveyQuestionsInfo,
        _QuestionAnswers = QuestionAnswers;

  final List<SurveyRowInfo> _SurveyQuestionsInfo;
  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SurveyQuestionsInfo);
  }

  @override
  final bool isDataFetched;
  @override
  final bool isFetching;
  @override
  final int currentQuestion;
  @override
  final int totalQuestions;
  final List<SurveyQuestionAnswers> _QuestionAnswers;
  @override
  List<SurveyQuestionAnswers> get QuestionAnswers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_QuestionAnswers);
  }

  @override
  String toString() {
    return 'SurveysState(SurveyQuestionsInfo: $SurveyQuestionsInfo, isDataFetched: $isDataFetched, isFetching: $isFetching, currentQuestion: $currentQuestion, totalQuestions: $totalQuestions, QuestionAnswers: $QuestionAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveysState &&
            const DeepCollectionEquality()
                .equals(other._SurveyQuestionsInfo, _SurveyQuestionsInfo) &&
            const DeepCollectionEquality()
                .equals(other.isDataFetched, isDataFetched) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching) &&
            const DeepCollectionEquality()
                .equals(other.currentQuestion, currentQuestion) &&
            const DeepCollectionEquality()
                .equals(other.totalQuestions, totalQuestions) &&
            const DeepCollectionEquality()
                .equals(other._QuestionAnswers, _QuestionAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_SurveyQuestionsInfo),
      const DeepCollectionEquality().hash(isDataFetched),
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(currentQuestion),
      const DeepCollectionEquality().hash(totalQuestions),
      const DeepCollectionEquality().hash(_QuestionAnswers));

  @JsonKey(ignore: true)
  @override
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      __$$_SurveysStateCopyWithImpl<_$_SurveysState>(this, _$identity);
}

abstract class _SurveysState implements SurveysState {
  const factory _SurveysState(
          {required final List<SurveyRowInfo> SurveyQuestionsInfo,
          required final bool isDataFetched,
          required final bool isFetching,
          required final int currentQuestion,
          required final int totalQuestions,
          required final List<SurveyQuestionAnswers> QuestionAnswers}) =
      _$_SurveysState;

  @override
  List<SurveyRowInfo> get SurveyQuestionsInfo;
  @override
  bool get isDataFetched;
  @override
  bool get isFetching;
  @override
  int get currentQuestion;
  @override
  int get totalQuestions;
  @override
  List<SurveyQuestionAnswers> get QuestionAnswers;
  @override
  @JsonKey(ignore: true)
  _$$_SurveysStateCopyWith<_$_SurveysState> get copyWith =>
      throw _privateConstructorUsedError;
}
