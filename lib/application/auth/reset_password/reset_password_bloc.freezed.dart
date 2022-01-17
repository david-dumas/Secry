// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  _EmailChanged emailChanged(String newEmail) {
    return _EmailChanged(
      newEmail,
    );
  }

  _ResetPasswordPressed resetPasswordPressed() {
    return const _ResetPasswordPressed();
  }

  _IsShowingClearEmailInputToggled isShowingClearEmailInputToggled(
      bool isShowing) {
    return _IsShowingClearEmailInputToggled(
      isShowing,
    );
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function(bool isShowing) isShowingClearEmailInputToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(_IsShowingClearEmailInputToggled value)
        isShowingClearEmailInputToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmail});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? newEmail = freezed,
  }) {
    return _then(_EmailChanged(
      newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.newEmail);

  @override
  final String newEmail;

  @override
  String toString() {
    return 'ResetPasswordEvent.emailChanged(newEmail: $newEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newEmail));

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function(bool isShowing) isShowingClearEmailInputToggled,
  }) {
    return emailChanged(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
  }) {
    return emailChanged?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(newEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(_IsShowingClearEmailInputToggled value)
        isShowingClearEmailInputToggled,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ResetPasswordEvent {
  const factory _EmailChanged(String newEmail) = _$_EmailChanged;

  String get newEmail;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetPasswordPressedCopyWith<$Res> {
  factory _$ResetPasswordPressedCopyWith(_ResetPasswordPressed value,
          $Res Function(_ResetPasswordPressed) then) =
      __$ResetPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordPressedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$ResetPasswordPressedCopyWith<$Res> {
  __$ResetPasswordPressedCopyWithImpl(
      _ResetPasswordPressed _value, $Res Function(_ResetPasswordPressed) _then)
      : super(_value, (v) => _then(v as _ResetPasswordPressed));

  @override
  _ResetPasswordPressed get _value => super._value as _ResetPasswordPressed;
}

/// @nodoc

class _$_ResetPasswordPressed implements _ResetPasswordPressed {
  const _$_ResetPasswordPressed();

  @override
  String toString() {
    return 'ResetPasswordEvent.resetPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function(bool isShowing) isShowingClearEmailInputToggled,
  }) {
    return resetPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
  }) {
    return resetPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (resetPasswordPressed != null) {
      return resetPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(_IsShowingClearEmailInputToggled value)
        isShowingClearEmailInputToggled,
  }) {
    return resetPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
  }) {
    return resetPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (resetPasswordPressed != null) {
      return resetPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordPressed implements ResetPasswordEvent {
  const factory _ResetPasswordPressed() = _$_ResetPasswordPressed;
}

/// @nodoc
abstract class _$IsShowingClearEmailInputToggledCopyWith<$Res> {
  factory _$IsShowingClearEmailInputToggledCopyWith(
          _IsShowingClearEmailInputToggled value,
          $Res Function(_IsShowingClearEmailInputToggled) then) =
      __$IsShowingClearEmailInputToggledCopyWithImpl<$Res>;
  $Res call({bool isShowing});
}

/// @nodoc
class __$IsShowingClearEmailInputToggledCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$IsShowingClearEmailInputToggledCopyWith<$Res> {
  __$IsShowingClearEmailInputToggledCopyWithImpl(
      _IsShowingClearEmailInputToggled _value,
      $Res Function(_IsShowingClearEmailInputToggled) _then)
      : super(_value, (v) => _then(v as _IsShowingClearEmailInputToggled));

  @override
  _IsShowingClearEmailInputToggled get _value =>
      super._value as _IsShowingClearEmailInputToggled;

  @override
  $Res call({
    Object? isShowing = freezed,
  }) {
    return _then(_IsShowingClearEmailInputToggled(
      isShowing == freezed
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsShowingClearEmailInputToggled
    implements _IsShowingClearEmailInputToggled {
  const _$_IsShowingClearEmailInputToggled(this.isShowing);

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ResetPasswordEvent.isShowingClearEmailInputToggled(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsShowingClearEmailInputToggled &&
            const DeepCollectionEquality().equals(other.isShowing, isShowing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isShowing));

  @JsonKey(ignore: true)
  @override
  _$IsShowingClearEmailInputToggledCopyWith<_IsShowingClearEmailInputToggled>
      get copyWith => __$IsShowingClearEmailInputToggledCopyWithImpl<
          _IsShowingClearEmailInputToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEmail) emailChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function(bool isShowing) isShowingClearEmailInputToggled,
  }) {
    return isShowingClearEmailInputToggled(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
  }) {
    return isShowingClearEmailInputToggled?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEmail)? emailChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function(bool isShowing)? isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (isShowingClearEmailInputToggled != null) {
      return isShowingClearEmailInputToggled(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(_IsShowingClearEmailInputToggled value)
        isShowingClearEmailInputToggled,
  }) {
    return isShowingClearEmailInputToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
  }) {
    return isShowingClearEmailInputToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(_IsShowingClearEmailInputToggled value)?
        isShowingClearEmailInputToggled,
    required TResult orElse(),
  }) {
    if (isShowingClearEmailInputToggled != null) {
      return isShowingClearEmailInputToggled(this);
    }
    return orElse();
  }
}

abstract class _IsShowingClearEmailInputToggled implements ResetPasswordEvent {
  const factory _IsShowingClearEmailInputToggled(bool isShowing) =
      _$_IsShowingClearEmailInputToggled;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$IsShowingClearEmailInputToggledCopyWith<_IsShowingClearEmailInputToggled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  _ResetPasswordState call(
      {required String inputEmail,
      required bool isShowingClearEmailButton,
      required bool isPasswordResetMailSuccessfullySent,
      required bool didTryToResetPassword}) {
    return _ResetPasswordState(
      inputEmail: inputEmail,
      isShowingClearEmailButton: isShowingClearEmailButton,
      isPasswordResetMailSuccessfullySent: isPasswordResetMailSuccessfullySent,
      didTryToResetPassword: didTryToResetPassword,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  String get inputEmail => throw _privateConstructorUsedError;
  bool get isShowingClearEmailButton => throw _privateConstructorUsedError;
  bool get isPasswordResetMailSuccessfullySent =>
      throw _privateConstructorUsedError;
  bool get didTryToResetPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {String inputEmail,
      bool isShowingClearEmailButton,
      bool isPasswordResetMailSuccessfullySent,
      bool didTryToResetPassword});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? inputEmail = freezed,
    Object? isShowingClearEmailButton = freezed,
    Object? isPasswordResetMailSuccessfullySent = freezed,
    Object? didTryToResetPassword = freezed,
  }) {
    return _then(_value.copyWith(
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingClearEmailButton: isShowingClearEmailButton == freezed
          ? _value.isShowingClearEmailButton
          : isShowingClearEmailButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetMailSuccessfullySent: isPasswordResetMailSuccessfullySent ==
              freezed
          ? _value.isPasswordResetMailSuccessfullySent
          : isPasswordResetMailSuccessfullySent // ignore: cast_nullable_to_non_nullable
              as bool,
      didTryToResetPassword: didTryToResetPassword == freezed
          ? _value.didTryToResetPassword
          : didTryToResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) then) =
      __$ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String inputEmail,
      bool isShowingClearEmailButton,
      bool isPasswordResetMailSuccessfullySent,
      bool didTryToResetPassword});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(
      _ResetPasswordState _value, $Res Function(_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordState));

  @override
  _ResetPasswordState get _value => super._value as _ResetPasswordState;

  @override
  $Res call({
    Object? inputEmail = freezed,
    Object? isShowingClearEmailButton = freezed,
    Object? isPasswordResetMailSuccessfullySent = freezed,
    Object? didTryToResetPassword = freezed,
  }) {
    return _then(_ResetPasswordState(
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingClearEmailButton: isShowingClearEmailButton == freezed
          ? _value.isShowingClearEmailButton
          : isShowingClearEmailButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetMailSuccessfullySent: isPasswordResetMailSuccessfullySent ==
              freezed
          ? _value.isPasswordResetMailSuccessfullySent
          : isPasswordResetMailSuccessfullySent // ignore: cast_nullable_to_non_nullable
              as bool,
      didTryToResetPassword: didTryToResetPassword == freezed
          ? _value.didTryToResetPassword
          : didTryToResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.inputEmail,
      required this.isShowingClearEmailButton,
      required this.isPasswordResetMailSuccessfullySent,
      required this.didTryToResetPassword});

  @override
  final String inputEmail;
  @override
  final bool isShowingClearEmailButton;
  @override
  final bool isPasswordResetMailSuccessfullySent;
  @override
  final bool didTryToResetPassword;

  @override
  String toString() {
    return 'ResetPasswordState(inputEmail: $inputEmail, isShowingClearEmailButton: $isShowingClearEmailButton, isPasswordResetMailSuccessfullySent: $isPasswordResetMailSuccessfullySent, didTryToResetPassword: $didTryToResetPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordState &&
            const DeepCollectionEquality()
                .equals(other.inputEmail, inputEmail) &&
            const DeepCollectionEquality().equals(
                other.isShowingClearEmailButton, isShowingClearEmailButton) &&
            const DeepCollectionEquality().equals(
                other.isPasswordResetMailSuccessfullySent,
                isPasswordResetMailSuccessfullySent) &&
            const DeepCollectionEquality()
                .equals(other.didTryToResetPassword, didTryToResetPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inputEmail),
      const DeepCollectionEquality().hash(isShowingClearEmailButton),
      const DeepCollectionEquality().hash(isPasswordResetMailSuccessfullySent),
      const DeepCollectionEquality().hash(didTryToResetPassword));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required String inputEmail,
      required bool isShowingClearEmailButton,
      required bool isPasswordResetMailSuccessfullySent,
      required bool didTryToResetPassword}) = _$_ResetPasswordState;

  @override
  String get inputEmail;
  @override
  bool get isShowingClearEmailButton;
  @override
  bool get isPasswordResetMailSuccessfullySent;
  @override
  bool get didTryToResetPassword;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
