// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  _SignInForm initialized() {
    return const _SignInForm();
  }

  SignInPressed signInPressed() {
    return const SignInPressed();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInForm value) initialized,
    required TResult Function(SignInPressed value) signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$SignInFormCopyWith<$Res> {
  factory _$SignInFormCopyWith(
          _SignInForm value, $Res Function(_SignInForm) then) =
      __$SignInFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInFormCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInFormCopyWith<$Res> {
  __$SignInFormCopyWithImpl(
      _SignInForm _value, $Res Function(_SignInForm) _then)
      : super(_value, (v) => _then(v as _SignInForm));

  @override
  _SignInForm get _value => super._value as _SignInForm;
}

/// @nodoc

class _$_SignInForm implements _SignInForm {
  const _$_SignInForm();

  @override
  String toString() {
    return 'SignInFormEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() signInPressed,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
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
    required TResult Function(_SignInForm value) initialized,
    required TResult Function(SignInPressed value) signInPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _SignInForm implements SignInFormEvent {
  const factory _SignInForm() = _$_SignInForm;
}

/// @nodoc
abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;
}

/// @nodoc

class _$SignInPressed implements SignInPressed {
  const _$SignInPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() signInPressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? signInPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInForm value) initialized,
    required TResult Function(SignInPressed value) signInPressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInForm value)? initialized,
    TResult Function(SignInPressed value)? signInPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInFormEvent {
  const factory SignInPressed() = _$SignInPressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required String inputEmail,
      required String inputPassword,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag}) {
    return _SignInFormState(
      inputEmail: inputEmail,
      inputPassword: inputPassword,
      isShowingErrorMessages: isShowingErrorMessages,
      currentErrorMessageTag: currentErrorMessageTag,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get inputEmail => throw _privateConstructorUsedError;
  String get inputPassword => throw _privateConstructorUsedError;
  bool get isShowingErrorMessages => throw _privateConstructorUsedError;
  String get currentErrorMessageTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {String inputEmail,
      String inputPassword,
      bool isShowingErrorMessages,
      String currentErrorMessageTag});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? inputEmail = freezed,
    Object? inputPassword = freezed,
    Object? isShowingErrorMessages = freezed,
    Object? currentErrorMessageTag = freezed,
  }) {
    return _then(_value.copyWith(
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputPassword: inputPassword == freezed
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      currentErrorMessageTag: currentErrorMessageTag == freezed
          ? _value.currentErrorMessageTag
          : currentErrorMessageTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String inputEmail,
      String inputPassword,
      bool isShowingErrorMessages,
      String currentErrorMessageTag});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? inputEmail = freezed,
    Object? inputPassword = freezed,
    Object? isShowingErrorMessages = freezed,
    Object? currentErrorMessageTag = freezed,
  }) {
    return _then(_SignInFormState(
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputPassword: inputPassword == freezed
          ? _value.inputPassword
          : inputPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      currentErrorMessageTag: currentErrorMessageTag == freezed
          ? _value.currentErrorMessageTag
          : currentErrorMessageTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.inputEmail,
      required this.inputPassword,
      required this.isShowingErrorMessages,
      required this.currentErrorMessageTag});

  @override
  final String inputEmail;
  @override
  final String inputPassword;
  @override
  final bool isShowingErrorMessages;
  @override
  final String currentErrorMessageTag;

  @override
  String toString() {
    return 'SignInFormState(inputEmail: $inputEmail, inputPassword: $inputPassword, isShowingErrorMessages: $isShowingErrorMessages, currentErrorMessageTag: $currentErrorMessageTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            (identical(other.inputEmail, inputEmail) ||
                other.inputEmail == inputEmail) &&
            (identical(other.inputPassword, inputPassword) ||
                other.inputPassword == inputPassword) &&
            (identical(other.isShowingErrorMessages, isShowingErrorMessages) ||
                other.isShowingErrorMessages == isShowingErrorMessages) &&
            (identical(other.currentErrorMessageTag, currentErrorMessageTag) ||
                other.currentErrorMessageTag == currentErrorMessageTag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputEmail, inputPassword,
      isShowingErrorMessages, currentErrorMessageTag);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required String inputEmail,
      required String inputPassword,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag}) = _$_SignInFormState;

  @override
  String get inputEmail;
  @override
  String get inputPassword;
  @override
  bool get isShowingErrorMessages;
  @override
  String get currentErrorMessageTag;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
