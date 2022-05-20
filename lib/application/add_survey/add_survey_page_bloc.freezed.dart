// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_survey_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddSurveyPageEventTearOff {
  const _$AddSurveyPageEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _SurveyTitleUpdated surveyTitleUpdated(String newTitle) {
    return _SurveyTitleUpdated(
      newTitle,
    );
  }

  _CurrentStepIndexUpdated currentStepIndexUpdated(int newIndex) {
    return _CurrentStepIndexUpdated(
      newIndex,
    );
  }

  _NewSurveyCreated newSurveyCreated() {
    return const _NewSurveyCreated();
  }

  _QuestionsUpdated questionsUpdated(List<Question> newQuestions) {
    return _QuestionsUpdated(
      newQuestions,
    );
  }

  _QuestionAdded questionAdded() {
    return const _QuestionAdded();
  }

  _QuestionDeleted questionDeleted(int questionIndex) {
    return _QuestionDeleted(
      questionIndex,
    );
  }

  _QuestionTypeChangedForQuestionIndex questionTypeChangedForQuestionIndex(
      int questionIndex, QuestionType newQuestionType) {
    return _QuestionTypeChangedForQuestionIndex(
      questionIndex,
      newQuestionType,
    );
  }

  _QuestionTextUpdatedForQuestionIndex questionTextUpdatedForQuestionIndex(
      int questionIndex, String newText) {
    return _QuestionTextUpdatedForQuestionIndex(
      questionIndex,
      newText,
    );
  }

  _OptionAddedForQuestionIndex optionAddedForQuestionIndex(int questionIndex) {
    return _OptionAddedForQuestionIndex(
      questionIndex,
    );
  }

  _OptionDeletedForQuestionIndex optionDeletedForQuestionIndex(
      int questionIndex, int optionIndex) {
    return _OptionDeletedForQuestionIndex(
      questionIndex,
      optionIndex,
    );
  }

  _OptionUpdatedForQuestionIndex optionUpdatedForQuestionIndex(
      int questionIndex,
      int optionIndex,
      String oldOptionId,
      String newOptionText) {
    return _OptionUpdatedForQuestionIndex(
      questionIndex,
      optionIndex,
      oldOptionId,
      newOptionText,
    );
  }
}

/// @nodoc
const $AddSurveyPageEvent = _$AddSurveyPageEventTearOff();

/// @nodoc
mixin _$AddSurveyPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSurveyPageEventCopyWith<$Res> {
  factory $AddSurveyPageEventCopyWith(
          AddSurveyPageEvent value, $Res Function(AddSurveyPageEvent) then) =
      _$AddSurveyPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddSurveyPageEventCopyWithImpl<$Res>
    implements $AddSurveyPageEventCopyWith<$Res> {
  _$AddSurveyPageEventCopyWithImpl(this._value, this._then);

  final AddSurveyPageEvent _value;
  // ignore: unused_field
  final $Res Function(AddSurveyPageEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'AddSurveyPageEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AddSurveyPageEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$SurveyTitleUpdatedCopyWith<$Res> {
  factory _$SurveyTitleUpdatedCopyWith(
          _SurveyTitleUpdated value, $Res Function(_SurveyTitleUpdated) then) =
      __$SurveyTitleUpdatedCopyWithImpl<$Res>;
  $Res call({String newTitle});
}

/// @nodoc
class __$SurveyTitleUpdatedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$SurveyTitleUpdatedCopyWith<$Res> {
  __$SurveyTitleUpdatedCopyWithImpl(
      _SurveyTitleUpdated _value, $Res Function(_SurveyTitleUpdated) _then)
      : super(_value, (v) => _then(v as _SurveyTitleUpdated));

  @override
  _SurveyTitleUpdated get _value => super._value as _SurveyTitleUpdated;

  @override
  $Res call({
    Object? newTitle = freezed,
  }) {
    return _then(_SurveyTitleUpdated(
      newTitle == freezed
          ? _value.newTitle
          : newTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SurveyTitleUpdated implements _SurveyTitleUpdated {
  const _$_SurveyTitleUpdated(this.newTitle);

  @override
  final String newTitle;

  @override
  String toString() {
    return 'AddSurveyPageEvent.surveyTitleUpdated(newTitle: $newTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyTitleUpdated &&
            const DeepCollectionEquality().equals(other.newTitle, newTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newTitle));

  @JsonKey(ignore: true)
  @override
  _$SurveyTitleUpdatedCopyWith<_SurveyTitleUpdated> get copyWith =>
      __$SurveyTitleUpdatedCopyWithImpl<_SurveyTitleUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return surveyTitleUpdated(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return surveyTitleUpdated?.call(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (surveyTitleUpdated != null) {
      return surveyTitleUpdated(newTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return surveyTitleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return surveyTitleUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (surveyTitleUpdated != null) {
      return surveyTitleUpdated(this);
    }
    return orElse();
  }
}

abstract class _SurveyTitleUpdated implements AddSurveyPageEvent {
  const factory _SurveyTitleUpdated(String newTitle) = _$_SurveyTitleUpdated;

  String get newTitle;
  @JsonKey(ignore: true)
  _$SurveyTitleUpdatedCopyWith<_SurveyTitleUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentStepIndexUpdatedCopyWith<$Res> {
  factory _$CurrentStepIndexUpdatedCopyWith(_CurrentStepIndexUpdated value,
          $Res Function(_CurrentStepIndexUpdated) then) =
      __$CurrentStepIndexUpdatedCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

/// @nodoc
class __$CurrentStepIndexUpdatedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$CurrentStepIndexUpdatedCopyWith<$Res> {
  __$CurrentStepIndexUpdatedCopyWithImpl(_CurrentStepIndexUpdated _value,
      $Res Function(_CurrentStepIndexUpdated) _then)
      : super(_value, (v) => _then(v as _CurrentStepIndexUpdated));

  @override
  _CurrentStepIndexUpdated get _value =>
      super._value as _CurrentStepIndexUpdated;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_CurrentStepIndexUpdated(
      newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrentStepIndexUpdated implements _CurrentStepIndexUpdated {
  const _$_CurrentStepIndexUpdated(this.newIndex);

  @override
  final int newIndex;

  @override
  String toString() {
    return 'AddSurveyPageEvent.currentStepIndexUpdated(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentStepIndexUpdated &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$CurrentStepIndexUpdatedCopyWith<_CurrentStepIndexUpdated> get copyWith =>
      __$CurrentStepIndexUpdatedCopyWithImpl<_CurrentStepIndexUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return currentStepIndexUpdated(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return currentStepIndexUpdated?.call(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (currentStepIndexUpdated != null) {
      return currentStepIndexUpdated(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return currentStepIndexUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return currentStepIndexUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (currentStepIndexUpdated != null) {
      return currentStepIndexUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentStepIndexUpdated implements AddSurveyPageEvent {
  const factory _CurrentStepIndexUpdated(int newIndex) =
      _$_CurrentStepIndexUpdated;

  int get newIndex;
  @JsonKey(ignore: true)
  _$CurrentStepIndexUpdatedCopyWith<_CurrentStepIndexUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewSurveyCreatedCopyWith<$Res> {
  factory _$NewSurveyCreatedCopyWith(
          _NewSurveyCreated value, $Res Function(_NewSurveyCreated) then) =
      __$NewSurveyCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewSurveyCreatedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$NewSurveyCreatedCopyWith<$Res> {
  __$NewSurveyCreatedCopyWithImpl(
      _NewSurveyCreated _value, $Res Function(_NewSurveyCreated) _then)
      : super(_value, (v) => _then(v as _NewSurveyCreated));

  @override
  _NewSurveyCreated get _value => super._value as _NewSurveyCreated;
}

/// @nodoc

class _$_NewSurveyCreated implements _NewSurveyCreated {
  const _$_NewSurveyCreated();

  @override
  String toString() {
    return 'AddSurveyPageEvent.newSurveyCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NewSurveyCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return newSurveyCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return newSurveyCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (newSurveyCreated != null) {
      return newSurveyCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return newSurveyCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return newSurveyCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (newSurveyCreated != null) {
      return newSurveyCreated(this);
    }
    return orElse();
  }
}

abstract class _NewSurveyCreated implements AddSurveyPageEvent {
  const factory _NewSurveyCreated() = _$_NewSurveyCreated;
}

/// @nodoc
abstract class _$QuestionsUpdatedCopyWith<$Res> {
  factory _$QuestionsUpdatedCopyWith(
          _QuestionsUpdated value, $Res Function(_QuestionsUpdated) then) =
      __$QuestionsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Question> newQuestions});
}

/// @nodoc
class __$QuestionsUpdatedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$QuestionsUpdatedCopyWith<$Res> {
  __$QuestionsUpdatedCopyWithImpl(
      _QuestionsUpdated _value, $Res Function(_QuestionsUpdated) _then)
      : super(_value, (v) => _then(v as _QuestionsUpdated));

  @override
  _QuestionsUpdated get _value => super._value as _QuestionsUpdated;

  @override
  $Res call({
    Object? newQuestions = freezed,
  }) {
    return _then(_QuestionsUpdated(
      newQuestions == freezed
          ? _value.newQuestions
          : newQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuestionsUpdated implements _QuestionsUpdated {
  const _$_QuestionsUpdated(this.newQuestions);

  @override
  final List<Question> newQuestions;

  @override
  String toString() {
    return 'AddSurveyPageEvent.questionsUpdated(newQuestions: $newQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionsUpdated &&
            const DeepCollectionEquality()
                .equals(other.newQuestions, newQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newQuestions));

  @JsonKey(ignore: true)
  @override
  _$QuestionsUpdatedCopyWith<_QuestionsUpdated> get copyWith =>
      __$QuestionsUpdatedCopyWithImpl<_QuestionsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return questionsUpdated(newQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionsUpdated?.call(newQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionsUpdated != null) {
      return questionsUpdated(newQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return questionsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionsUpdated != null) {
      return questionsUpdated(this);
    }
    return orElse();
  }
}

abstract class _QuestionsUpdated implements AddSurveyPageEvent {
  const factory _QuestionsUpdated(List<Question> newQuestions) =
      _$_QuestionsUpdated;

  List<Question> get newQuestions;
  @JsonKey(ignore: true)
  _$QuestionsUpdatedCopyWith<_QuestionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionAddedCopyWith<$Res> {
  factory _$QuestionAddedCopyWith(
          _QuestionAdded value, $Res Function(_QuestionAdded) then) =
      __$QuestionAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuestionAddedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$QuestionAddedCopyWith<$Res> {
  __$QuestionAddedCopyWithImpl(
      _QuestionAdded _value, $Res Function(_QuestionAdded) _then)
      : super(_value, (v) => _then(v as _QuestionAdded));

  @override
  _QuestionAdded get _value => super._value as _QuestionAdded;
}

/// @nodoc

class _$_QuestionAdded implements _QuestionAdded {
  const _$_QuestionAdded();

  @override
  String toString() {
    return 'AddSurveyPageEvent.questionAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QuestionAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return questionAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionAdded != null) {
      return questionAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return questionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionAdded != null) {
      return questionAdded(this);
    }
    return orElse();
  }
}

abstract class _QuestionAdded implements AddSurveyPageEvent {
  const factory _QuestionAdded() = _$_QuestionAdded;
}

/// @nodoc
abstract class _$QuestionDeletedCopyWith<$Res> {
  factory _$QuestionDeletedCopyWith(
          _QuestionDeleted value, $Res Function(_QuestionDeleted) then) =
      __$QuestionDeletedCopyWithImpl<$Res>;
  $Res call({int questionIndex});
}

/// @nodoc
class __$QuestionDeletedCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$QuestionDeletedCopyWith<$Res> {
  __$QuestionDeletedCopyWithImpl(
      _QuestionDeleted _value, $Res Function(_QuestionDeleted) _then)
      : super(_value, (v) => _then(v as _QuestionDeleted));

  @override
  _QuestionDeleted get _value => super._value as _QuestionDeleted;

  @override
  $Res call({
    Object? questionIndex = freezed,
  }) {
    return _then(_QuestionDeleted(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuestionDeleted implements _QuestionDeleted {
  const _$_QuestionDeleted(this.questionIndex);

  @override
  final int questionIndex;

  @override
  String toString() {
    return 'AddSurveyPageEvent.questionDeleted(questionIndex: $questionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionDeleted &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(questionIndex));

  @JsonKey(ignore: true)
  @override
  _$QuestionDeletedCopyWith<_QuestionDeleted> get copyWith =>
      __$QuestionDeletedCopyWithImpl<_QuestionDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return questionDeleted(questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionDeleted?.call(questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionDeleted != null) {
      return questionDeleted(questionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return questionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionDeleted != null) {
      return questionDeleted(this);
    }
    return orElse();
  }
}

abstract class _QuestionDeleted implements AddSurveyPageEvent {
  const factory _QuestionDeleted(int questionIndex) = _$_QuestionDeleted;

  int get questionIndex;
  @JsonKey(ignore: true)
  _$QuestionDeletedCopyWith<_QuestionDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionTypeChangedForQuestionIndexCopyWith<$Res> {
  factory _$QuestionTypeChangedForQuestionIndexCopyWith(
          _QuestionTypeChangedForQuestionIndex value,
          $Res Function(_QuestionTypeChangedForQuestionIndex) then) =
      __$QuestionTypeChangedForQuestionIndexCopyWithImpl<$Res>;
  $Res call({int questionIndex, QuestionType newQuestionType});
}

/// @nodoc
class __$QuestionTypeChangedForQuestionIndexCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$QuestionTypeChangedForQuestionIndexCopyWith<$Res> {
  __$QuestionTypeChangedForQuestionIndexCopyWithImpl(
      _QuestionTypeChangedForQuestionIndex _value,
      $Res Function(_QuestionTypeChangedForQuestionIndex) _then)
      : super(_value, (v) => _then(v as _QuestionTypeChangedForQuestionIndex));

  @override
  _QuestionTypeChangedForQuestionIndex get _value =>
      super._value as _QuestionTypeChangedForQuestionIndex;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? newQuestionType = freezed,
  }) {
    return _then(_QuestionTypeChangedForQuestionIndex(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newQuestionType == freezed
          ? _value.newQuestionType
          : newQuestionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ));
  }
}

/// @nodoc

class _$_QuestionTypeChangedForQuestionIndex
    implements _QuestionTypeChangedForQuestionIndex {
  const _$_QuestionTypeChangedForQuestionIndex(
      this.questionIndex, this.newQuestionType);

  @override
  final int questionIndex;
  @override
  final QuestionType newQuestionType;

  @override
  String toString() {
    return 'AddSurveyPageEvent.questionTypeChangedForQuestionIndex(questionIndex: $questionIndex, newQuestionType: $newQuestionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionTypeChangedForQuestionIndex &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.newQuestionType, newQuestionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(newQuestionType));

  @JsonKey(ignore: true)
  @override
  _$QuestionTypeChangedForQuestionIndexCopyWith<
          _QuestionTypeChangedForQuestionIndex>
      get copyWith => __$QuestionTypeChangedForQuestionIndexCopyWithImpl<
          _QuestionTypeChangedForQuestionIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return questionTypeChangedForQuestionIndex(questionIndex, newQuestionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionTypeChangedForQuestionIndex?.call(
        questionIndex, newQuestionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionTypeChangedForQuestionIndex != null) {
      return questionTypeChangedForQuestionIndex(
          questionIndex, newQuestionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return questionTypeChangedForQuestionIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionTypeChangedForQuestionIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionTypeChangedForQuestionIndex != null) {
      return questionTypeChangedForQuestionIndex(this);
    }
    return orElse();
  }
}

abstract class _QuestionTypeChangedForQuestionIndex
    implements AddSurveyPageEvent {
  const factory _QuestionTypeChangedForQuestionIndex(
          int questionIndex, QuestionType newQuestionType) =
      _$_QuestionTypeChangedForQuestionIndex;

  int get questionIndex;
  QuestionType get newQuestionType;
  @JsonKey(ignore: true)
  _$QuestionTypeChangedForQuestionIndexCopyWith<
          _QuestionTypeChangedForQuestionIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionTextUpdatedForQuestionIndexCopyWith<$Res> {
  factory _$QuestionTextUpdatedForQuestionIndexCopyWith(
          _QuestionTextUpdatedForQuestionIndex value,
          $Res Function(_QuestionTextUpdatedForQuestionIndex) then) =
      __$QuestionTextUpdatedForQuestionIndexCopyWithImpl<$Res>;
  $Res call({int questionIndex, String newText});
}

/// @nodoc
class __$QuestionTextUpdatedForQuestionIndexCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$QuestionTextUpdatedForQuestionIndexCopyWith<$Res> {
  __$QuestionTextUpdatedForQuestionIndexCopyWithImpl(
      _QuestionTextUpdatedForQuestionIndex _value,
      $Res Function(_QuestionTextUpdatedForQuestionIndex) _then)
      : super(_value, (v) => _then(v as _QuestionTextUpdatedForQuestionIndex));

  @override
  _QuestionTextUpdatedForQuestionIndex get _value =>
      super._value as _QuestionTextUpdatedForQuestionIndex;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? newText = freezed,
  }) {
    return _then(_QuestionTextUpdatedForQuestionIndex(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newText == freezed
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionTextUpdatedForQuestionIndex
    implements _QuestionTextUpdatedForQuestionIndex {
  const _$_QuestionTextUpdatedForQuestionIndex(
      this.questionIndex, this.newText);

  @override
  final int questionIndex;
  @override
  final String newText;

  @override
  String toString() {
    return 'AddSurveyPageEvent.questionTextUpdatedForQuestionIndex(questionIndex: $questionIndex, newText: $newText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionTextUpdatedForQuestionIndex &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality().equals(other.newText, newText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(newText));

  @JsonKey(ignore: true)
  @override
  _$QuestionTextUpdatedForQuestionIndexCopyWith<
          _QuestionTextUpdatedForQuestionIndex>
      get copyWith => __$QuestionTextUpdatedForQuestionIndexCopyWithImpl<
          _QuestionTextUpdatedForQuestionIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return questionTextUpdatedForQuestionIndex(questionIndex, newText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionTextUpdatedForQuestionIndex?.call(questionIndex, newText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionTextUpdatedForQuestionIndex != null) {
      return questionTextUpdatedForQuestionIndex(questionIndex, newText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return questionTextUpdatedForQuestionIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return questionTextUpdatedForQuestionIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (questionTextUpdatedForQuestionIndex != null) {
      return questionTextUpdatedForQuestionIndex(this);
    }
    return orElse();
  }
}

abstract class _QuestionTextUpdatedForQuestionIndex
    implements AddSurveyPageEvent {
  const factory _QuestionTextUpdatedForQuestionIndex(
          int questionIndex, String newText) =
      _$_QuestionTextUpdatedForQuestionIndex;

  int get questionIndex;
  String get newText;
  @JsonKey(ignore: true)
  _$QuestionTextUpdatedForQuestionIndexCopyWith<
          _QuestionTextUpdatedForQuestionIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OptionAddedForQuestionIndexCopyWith<$Res> {
  factory _$OptionAddedForQuestionIndexCopyWith(
          _OptionAddedForQuestionIndex value,
          $Res Function(_OptionAddedForQuestionIndex) then) =
      __$OptionAddedForQuestionIndexCopyWithImpl<$Res>;
  $Res call({int questionIndex});
}

/// @nodoc
class __$OptionAddedForQuestionIndexCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$OptionAddedForQuestionIndexCopyWith<$Res> {
  __$OptionAddedForQuestionIndexCopyWithImpl(
      _OptionAddedForQuestionIndex _value,
      $Res Function(_OptionAddedForQuestionIndex) _then)
      : super(_value, (v) => _then(v as _OptionAddedForQuestionIndex));

  @override
  _OptionAddedForQuestionIndex get _value =>
      super._value as _OptionAddedForQuestionIndex;

  @override
  $Res call({
    Object? questionIndex = freezed,
  }) {
    return _then(_OptionAddedForQuestionIndex(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OptionAddedForQuestionIndex implements _OptionAddedForQuestionIndex {
  const _$_OptionAddedForQuestionIndex(this.questionIndex);

  @override
  final int questionIndex;

  @override
  String toString() {
    return 'AddSurveyPageEvent.optionAddedForQuestionIndex(questionIndex: $questionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionAddedForQuestionIndex &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(questionIndex));

  @JsonKey(ignore: true)
  @override
  _$OptionAddedForQuestionIndexCopyWith<_OptionAddedForQuestionIndex>
      get copyWith => __$OptionAddedForQuestionIndexCopyWithImpl<
          _OptionAddedForQuestionIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return optionAddedForQuestionIndex(questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionAddedForQuestionIndex?.call(questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionAddedForQuestionIndex != null) {
      return optionAddedForQuestionIndex(questionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return optionAddedForQuestionIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionAddedForQuestionIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionAddedForQuestionIndex != null) {
      return optionAddedForQuestionIndex(this);
    }
    return orElse();
  }
}

abstract class _OptionAddedForQuestionIndex implements AddSurveyPageEvent {
  const factory _OptionAddedForQuestionIndex(int questionIndex) =
      _$_OptionAddedForQuestionIndex;

  int get questionIndex;
  @JsonKey(ignore: true)
  _$OptionAddedForQuestionIndexCopyWith<_OptionAddedForQuestionIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OptionDeletedForQuestionIndexCopyWith<$Res> {
  factory _$OptionDeletedForQuestionIndexCopyWith(
          _OptionDeletedForQuestionIndex value,
          $Res Function(_OptionDeletedForQuestionIndex) then) =
      __$OptionDeletedForQuestionIndexCopyWithImpl<$Res>;
  $Res call({int questionIndex, int optionIndex});
}

/// @nodoc
class __$OptionDeletedForQuestionIndexCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$OptionDeletedForQuestionIndexCopyWith<$Res> {
  __$OptionDeletedForQuestionIndexCopyWithImpl(
      _OptionDeletedForQuestionIndex _value,
      $Res Function(_OptionDeletedForQuestionIndex) _then)
      : super(_value, (v) => _then(v as _OptionDeletedForQuestionIndex));

  @override
  _OptionDeletedForQuestionIndex get _value =>
      super._value as _OptionDeletedForQuestionIndex;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? optionIndex = freezed,
  }) {
    return _then(_OptionDeletedForQuestionIndex(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      optionIndex == freezed
          ? _value.optionIndex
          : optionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OptionDeletedForQuestionIndex
    implements _OptionDeletedForQuestionIndex {
  const _$_OptionDeletedForQuestionIndex(this.questionIndex, this.optionIndex);

  @override
  final int questionIndex;
  @override
  final int optionIndex;

  @override
  String toString() {
    return 'AddSurveyPageEvent.optionDeletedForQuestionIndex(questionIndex: $questionIndex, optionIndex: $optionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionDeletedForQuestionIndex &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.optionIndex, optionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(optionIndex));

  @JsonKey(ignore: true)
  @override
  _$OptionDeletedForQuestionIndexCopyWith<_OptionDeletedForQuestionIndex>
      get copyWith => __$OptionDeletedForQuestionIndexCopyWithImpl<
          _OptionDeletedForQuestionIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return optionDeletedForQuestionIndex(questionIndex, optionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionDeletedForQuestionIndex?.call(questionIndex, optionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionDeletedForQuestionIndex != null) {
      return optionDeletedForQuestionIndex(questionIndex, optionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return optionDeletedForQuestionIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionDeletedForQuestionIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionDeletedForQuestionIndex != null) {
      return optionDeletedForQuestionIndex(this);
    }
    return orElse();
  }
}

abstract class _OptionDeletedForQuestionIndex implements AddSurveyPageEvent {
  const factory _OptionDeletedForQuestionIndex(
      int questionIndex, int optionIndex) = _$_OptionDeletedForQuestionIndex;

  int get questionIndex;
  int get optionIndex;
  @JsonKey(ignore: true)
  _$OptionDeletedForQuestionIndexCopyWith<_OptionDeletedForQuestionIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OptionUpdatedForQuestionIndexCopyWith<$Res> {
  factory _$OptionUpdatedForQuestionIndexCopyWith(
          _OptionUpdatedForQuestionIndex value,
          $Res Function(_OptionUpdatedForQuestionIndex) then) =
      __$OptionUpdatedForQuestionIndexCopyWithImpl<$Res>;
  $Res call(
      {int questionIndex,
      int optionIndex,
      String oldOptionId,
      String newOptionText});
}

/// @nodoc
class __$OptionUpdatedForQuestionIndexCopyWithImpl<$Res>
    extends _$AddSurveyPageEventCopyWithImpl<$Res>
    implements _$OptionUpdatedForQuestionIndexCopyWith<$Res> {
  __$OptionUpdatedForQuestionIndexCopyWithImpl(
      _OptionUpdatedForQuestionIndex _value,
      $Res Function(_OptionUpdatedForQuestionIndex) _then)
      : super(_value, (v) => _then(v as _OptionUpdatedForQuestionIndex));

  @override
  _OptionUpdatedForQuestionIndex get _value =>
      super._value as _OptionUpdatedForQuestionIndex;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? optionIndex = freezed,
    Object? oldOptionId = freezed,
    Object? newOptionText = freezed,
  }) {
    return _then(_OptionUpdatedForQuestionIndex(
      questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      optionIndex == freezed
          ? _value.optionIndex
          : optionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      oldOptionId == freezed
          ? _value.oldOptionId
          : oldOptionId // ignore: cast_nullable_to_non_nullable
              as String,
      newOptionText == freezed
          ? _value.newOptionText
          : newOptionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OptionUpdatedForQuestionIndex
    implements _OptionUpdatedForQuestionIndex {
  const _$_OptionUpdatedForQuestionIndex(this.questionIndex, this.optionIndex,
      this.oldOptionId, this.newOptionText);

  @override
  final int questionIndex;
  @override
  final int optionIndex;
  @override
  final String oldOptionId;
  @override
  final String newOptionText;

  @override
  String toString() {
    return 'AddSurveyPageEvent.optionUpdatedForQuestionIndex(questionIndex: $questionIndex, optionIndex: $optionIndex, oldOptionId: $oldOptionId, newOptionText: $newOptionText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionUpdatedForQuestionIndex &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.optionIndex, optionIndex) &&
            const DeepCollectionEquality()
                .equals(other.oldOptionId, oldOptionId) &&
            const DeepCollectionEquality()
                .equals(other.newOptionText, newOptionText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(optionIndex),
      const DeepCollectionEquality().hash(oldOptionId),
      const DeepCollectionEquality().hash(newOptionText));

  @JsonKey(ignore: true)
  @override
  _$OptionUpdatedForQuestionIndexCopyWith<_OptionUpdatedForQuestionIndex>
      get copyWith => __$OptionUpdatedForQuestionIndexCopyWithImpl<
          _OptionUpdatedForQuestionIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String newTitle) surveyTitleUpdated,
    required TResult Function(int newIndex) currentStepIndexUpdated,
    required TResult Function() newSurveyCreated,
    required TResult Function(List<Question> newQuestions) questionsUpdated,
    required TResult Function() questionAdded,
    required TResult Function(int questionIndex) questionDeleted,
    required TResult Function(int questionIndex, QuestionType newQuestionType)
        questionTypeChangedForQuestionIndex,
    required TResult Function(int questionIndex, String newText)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(int questionIndex) optionAddedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex)
        optionDeletedForQuestionIndex,
    required TResult Function(int questionIndex, int optionIndex,
            String oldOptionId, String newOptionText)
        optionUpdatedForQuestionIndex,
  }) {
    return optionUpdatedForQuestionIndex(
        questionIndex, optionIndex, oldOptionId, newOptionText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionUpdatedForQuestionIndex?.call(
        questionIndex, optionIndex, oldOptionId, newOptionText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String newTitle)? surveyTitleUpdated,
    TResult Function(int newIndex)? currentStepIndexUpdated,
    TResult Function()? newSurveyCreated,
    TResult Function(List<Question> newQuestions)? questionsUpdated,
    TResult Function()? questionAdded,
    TResult Function(int questionIndex)? questionDeleted,
    TResult Function(int questionIndex, QuestionType newQuestionType)?
        questionTypeChangedForQuestionIndex,
    TResult Function(int questionIndex, String newText)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(int questionIndex)? optionAddedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex)?
        optionDeletedForQuestionIndex,
    TResult Function(int questionIndex, int optionIndex, String oldOptionId,
            String newOptionText)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionUpdatedForQuestionIndex != null) {
      return optionUpdatedForQuestionIndex(
          questionIndex, optionIndex, oldOptionId, newOptionText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SurveyTitleUpdated value) surveyTitleUpdated,
    required TResult Function(_CurrentStepIndexUpdated value)
        currentStepIndexUpdated,
    required TResult Function(_NewSurveyCreated value) newSurveyCreated,
    required TResult Function(_QuestionsUpdated value) questionsUpdated,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_QuestionDeleted value) questionDeleted,
    required TResult Function(_QuestionTypeChangedForQuestionIndex value)
        questionTypeChangedForQuestionIndex,
    required TResult Function(_QuestionTextUpdatedForQuestionIndex value)
        questionTextUpdatedForQuestionIndex,
    required TResult Function(_OptionAddedForQuestionIndex value)
        optionAddedForQuestionIndex,
    required TResult Function(_OptionDeletedForQuestionIndex value)
        optionDeletedForQuestionIndex,
    required TResult Function(_OptionUpdatedForQuestionIndex value)
        optionUpdatedForQuestionIndex,
  }) {
    return optionUpdatedForQuestionIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
  }) {
    return optionUpdatedForQuestionIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SurveyTitleUpdated value)? surveyTitleUpdated,
    TResult Function(_CurrentStepIndexUpdated value)? currentStepIndexUpdated,
    TResult Function(_NewSurveyCreated value)? newSurveyCreated,
    TResult Function(_QuestionsUpdated value)? questionsUpdated,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_QuestionDeleted value)? questionDeleted,
    TResult Function(_QuestionTypeChangedForQuestionIndex value)?
        questionTypeChangedForQuestionIndex,
    TResult Function(_QuestionTextUpdatedForQuestionIndex value)?
        questionTextUpdatedForQuestionIndex,
    TResult Function(_OptionAddedForQuestionIndex value)?
        optionAddedForQuestionIndex,
    TResult Function(_OptionDeletedForQuestionIndex value)?
        optionDeletedForQuestionIndex,
    TResult Function(_OptionUpdatedForQuestionIndex value)?
        optionUpdatedForQuestionIndex,
    required TResult orElse(),
  }) {
    if (optionUpdatedForQuestionIndex != null) {
      return optionUpdatedForQuestionIndex(this);
    }
    return orElse();
  }
}

abstract class _OptionUpdatedForQuestionIndex implements AddSurveyPageEvent {
  const factory _OptionUpdatedForQuestionIndex(
      int questionIndex,
      int optionIndex,
      String oldOptionId,
      String newOptionText) = _$_OptionUpdatedForQuestionIndex;

  int get questionIndex;
  int get optionIndex;
  String get oldOptionId;
  String get newOptionText;
  @JsonKey(ignore: true)
  _$OptionUpdatedForQuestionIndexCopyWith<_OptionUpdatedForQuestionIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddSurveyPageStateTearOff {
  const _$AddSurveyPageStateTearOff();

  _AddSurveyPageState call(
      {required String surveyTitle,
      required int currentStepIndex,
      required bool isSurveySuccessfullyCreated,
      required bool isCreateNewSurveyRequestExecuted,
      required List<Question> questions}) {
    return _AddSurveyPageState(
      surveyTitle: surveyTitle,
      currentStepIndex: currentStepIndex,
      isSurveySuccessfullyCreated: isSurveySuccessfullyCreated,
      isCreateNewSurveyRequestExecuted: isCreateNewSurveyRequestExecuted,
      questions: questions,
    );
  }
}

/// @nodoc
const $AddSurveyPageState = _$AddSurveyPageStateTearOff();

/// @nodoc
mixin _$AddSurveyPageState {
  String get surveyTitle => throw _privateConstructorUsedError;
  int get currentStepIndex => throw _privateConstructorUsedError;
  bool get isSurveySuccessfullyCreated => throw _privateConstructorUsedError;
  bool get isCreateNewSurveyRequestExecuted =>
      throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddSurveyPageStateCopyWith<AddSurveyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSurveyPageStateCopyWith<$Res> {
  factory $AddSurveyPageStateCopyWith(
          AddSurveyPageState value, $Res Function(AddSurveyPageState) then) =
      _$AddSurveyPageStateCopyWithImpl<$Res>;
  $Res call(
      {String surveyTitle,
      int currentStepIndex,
      bool isSurveySuccessfullyCreated,
      bool isCreateNewSurveyRequestExecuted,
      List<Question> questions});
}

/// @nodoc
class _$AddSurveyPageStateCopyWithImpl<$Res>
    implements $AddSurveyPageStateCopyWith<$Res> {
  _$AddSurveyPageStateCopyWithImpl(this._value, this._then);

  final AddSurveyPageState _value;
  // ignore: unused_field
  final $Res Function(AddSurveyPageState) _then;

  @override
  $Res call({
    Object? surveyTitle = freezed,
    Object? currentStepIndex = freezed,
    Object? isSurveySuccessfullyCreated = freezed,
    Object? isCreateNewSurveyRequestExecuted = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      surveyTitle: surveyTitle == freezed
          ? _value.surveyTitle
          : surveyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentStepIndex: currentStepIndex == freezed
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isSurveySuccessfullyCreated: isSurveySuccessfullyCreated == freezed
          ? _value.isSurveySuccessfullyCreated
          : isSurveySuccessfullyCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateNewSurveyRequestExecuted: isCreateNewSurveyRequestExecuted ==
              freezed
          ? _value.isCreateNewSurveyRequestExecuted
          : isCreateNewSurveyRequestExecuted // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$AddSurveyPageStateCopyWith<$Res>
    implements $AddSurveyPageStateCopyWith<$Res> {
  factory _$AddSurveyPageStateCopyWith(
          _AddSurveyPageState value, $Res Function(_AddSurveyPageState) then) =
      __$AddSurveyPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String surveyTitle,
      int currentStepIndex,
      bool isSurveySuccessfullyCreated,
      bool isCreateNewSurveyRequestExecuted,
      List<Question> questions});
}

/// @nodoc
class __$AddSurveyPageStateCopyWithImpl<$Res>
    extends _$AddSurveyPageStateCopyWithImpl<$Res>
    implements _$AddSurveyPageStateCopyWith<$Res> {
  __$AddSurveyPageStateCopyWithImpl(
      _AddSurveyPageState _value, $Res Function(_AddSurveyPageState) _then)
      : super(_value, (v) => _then(v as _AddSurveyPageState));

  @override
  _AddSurveyPageState get _value => super._value as _AddSurveyPageState;

  @override
  $Res call({
    Object? surveyTitle = freezed,
    Object? currentStepIndex = freezed,
    Object? isSurveySuccessfullyCreated = freezed,
    Object? isCreateNewSurveyRequestExecuted = freezed,
    Object? questions = freezed,
  }) {
    return _then(_AddSurveyPageState(
      surveyTitle: surveyTitle == freezed
          ? _value.surveyTitle
          : surveyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentStepIndex: currentStepIndex == freezed
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isSurveySuccessfullyCreated: isSurveySuccessfullyCreated == freezed
          ? _value.isSurveySuccessfullyCreated
          : isSurveySuccessfullyCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateNewSurveyRequestExecuted: isCreateNewSurveyRequestExecuted ==
              freezed
          ? _value.isCreateNewSurveyRequestExecuted
          : isCreateNewSurveyRequestExecuted // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_AddSurveyPageState implements _AddSurveyPageState {
  const _$_AddSurveyPageState(
      {required this.surveyTitle,
      required this.currentStepIndex,
      required this.isSurveySuccessfullyCreated,
      required this.isCreateNewSurveyRequestExecuted,
      required this.questions});

  @override
  final String surveyTitle;
  @override
  final int currentStepIndex;
  @override
  final bool isSurveySuccessfullyCreated;
  @override
  final bool isCreateNewSurveyRequestExecuted;
  @override
  final List<Question> questions;

  @override
  String toString() {
    return 'AddSurveyPageState(surveyTitle: $surveyTitle, currentStepIndex: $currentStepIndex, isSurveySuccessfullyCreated: $isSurveySuccessfullyCreated, isCreateNewSurveyRequestExecuted: $isCreateNewSurveyRequestExecuted, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddSurveyPageState &&
            const DeepCollectionEquality()
                .equals(other.surveyTitle, surveyTitle) &&
            const DeepCollectionEquality()
                .equals(other.currentStepIndex, currentStepIndex) &&
            const DeepCollectionEquality().equals(
                other.isSurveySuccessfullyCreated,
                isSurveySuccessfullyCreated) &&
            const DeepCollectionEquality().equals(
                other.isCreateNewSurveyRequestExecuted,
                isCreateNewSurveyRequestExecuted) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyTitle),
      const DeepCollectionEquality().hash(currentStepIndex),
      const DeepCollectionEquality().hash(isSurveySuccessfullyCreated),
      const DeepCollectionEquality().hash(isCreateNewSurveyRequestExecuted),
      const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  _$AddSurveyPageStateCopyWith<_AddSurveyPageState> get copyWith =>
      __$AddSurveyPageStateCopyWithImpl<_AddSurveyPageState>(this, _$identity);
}

abstract class _AddSurveyPageState implements AddSurveyPageState {
  const factory _AddSurveyPageState(
      {required String surveyTitle,
      required int currentStepIndex,
      required bool isSurveySuccessfullyCreated,
      required bool isCreateNewSurveyRequestExecuted,
      required List<Question> questions}) = _$_AddSurveyPageState;

  @override
  String get surveyTitle;
  @override
  int get currentStepIndex;
  @override
  bool get isSurveySuccessfullyCreated;
  @override
  bool get isCreateNewSurveyRequestExecuted;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$AddSurveyPageStateCopyWith<_AddSurveyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
