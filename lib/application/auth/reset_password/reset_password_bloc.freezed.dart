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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmail});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? newEmail = freezed,
  }) {
    return _then(_$_EmailChanged(
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
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newEmail));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

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
  const factory _EmailChanged(final String newEmail) = _$_EmailChanged;

  String get newEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordPressedCopyWith<$Res> {
  factory _$$_ResetPasswordPressedCopyWith(_$_ResetPasswordPressed value,
          $Res Function(_$_ResetPasswordPressed) then) =
      __$$_ResetPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPasswordPressedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$$_ResetPasswordPressedCopyWith<$Res> {
  __$$_ResetPasswordPressedCopyWithImpl(_$_ResetPasswordPressed _value,
      $Res Function(_$_ResetPasswordPressed) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordPressed));

  @override
  _$_ResetPasswordPressed get _value => super._value as _$_ResetPasswordPressed;
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
        (other.runtimeType == runtimeType && other is _$_ResetPasswordPressed);
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
abstract class _$$_IsShowingClearEmailInputToggledCopyWith<$Res> {
  factory _$$_IsShowingClearEmailInputToggledCopyWith(
          _$_IsShowingClearEmailInputToggled value,
          $Res Function(_$_IsShowingClearEmailInputToggled) then) =
      __$$_IsShowingClearEmailInputToggledCopyWithImpl<$Res>;
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_IsShowingClearEmailInputToggledCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$$_IsShowingClearEmailInputToggledCopyWith<$Res> {
  __$$_IsShowingClearEmailInputToggledCopyWithImpl(
      _$_IsShowingClearEmailInputToggled _value,
      $Res Function(_$_IsShowingClearEmailInputToggled) _then)
      : super(_value, (v) => _then(v as _$_IsShowingClearEmailInputToggled));

  @override
  _$_IsShowingClearEmailInputToggled get _value =>
      super._value as _$_IsShowingClearEmailInputToggled;

  @override
  $Res call({
    Object? isShowing = freezed,
  }) {
    return _then(_$_IsShowingClearEmailInputToggled(
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
            other is _$_IsShowingClearEmailInputToggled &&
            const DeepCollectionEquality().equals(other.isShowing, isShowing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isShowing));

  @JsonKey(ignore: true)
  @override
  _$$_IsShowingClearEmailInputToggledCopyWith<
          _$_IsShowingClearEmailInputToggled>
      get copyWith => __$$_IsShowingClearEmailInputToggledCopyWithImpl<
          _$_IsShowingClearEmailInputToggled>(this, _$identity);

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
  const factory _IsShowingClearEmailInputToggled(final bool isShowing) =
      _$_IsShowingClearEmailInputToggled;

  bool get isShowing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_IsShowingClearEmailInputToggledCopyWith<
          _$_IsShowingClearEmailInputToggled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResetPasswordState {
  String get inputEmail => throw _privateConstructorUsedError;
  bool get isShowingClearEmailButton => throw _privateConstructorUsedError;
  bool get isPasswordResetMailSuccessfullySent =>
      throw _privateConstructorUsedError;
  bool get didTryToResetPassword => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
      bool didTryToResetPassword,
      bool isLoading});
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
    Object? isLoading = freezed,
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String inputEmail,
      bool isShowingClearEmailButton,
      bool isPasswordResetMailSuccessfullySent,
      bool didTryToResetPassword,
      bool isLoading});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordState));

  @override
  _$_ResetPasswordState get _value => super._value as _$_ResetPasswordState;

  @override
  $Res call({
    Object? inputEmail = freezed,
    Object? isShowingClearEmailButton = freezed,
    Object? isPasswordResetMailSuccessfullySent = freezed,
    Object? didTryToResetPassword = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ResetPasswordState(
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      required this.didTryToResetPassword,
      required this.isLoading});

  @override
  final String inputEmail;
  @override
  final bool isShowingClearEmailButton;
  @override
  final bool isPasswordResetMailSuccessfullySent;
  @override
  final bool didTryToResetPassword;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ResetPasswordState(inputEmail: $inputEmail, isShowingClearEmailButton: $isShowingClearEmailButton, isPasswordResetMailSuccessfullySent: $isPasswordResetMailSuccessfullySent, didTryToResetPassword: $didTryToResetPassword, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            const DeepCollectionEquality()
                .equals(other.inputEmail, inputEmail) &&
            const DeepCollectionEquality().equals(
                other.isShowingClearEmailButton, isShowingClearEmailButton) &&
            const DeepCollectionEquality().equals(
                other.isPasswordResetMailSuccessfullySent,
                isPasswordResetMailSuccessfullySent) &&
            const DeepCollectionEquality()
                .equals(other.didTryToResetPassword, didTryToResetPassword) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inputEmail),
      const DeepCollectionEquality().hash(isShowingClearEmailButton),
      const DeepCollectionEquality().hash(isPasswordResetMailSuccessfullySent),
      const DeepCollectionEquality().hash(didTryToResetPassword),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final String inputEmail,
      required final bool isShowingClearEmailButton,
      required final bool isPasswordResetMailSuccessfullySent,
      required final bool didTryToResetPassword,
      required final bool isLoading}) = _$_ResetPasswordState;

  @override
  String get inputEmail => throw _privateConstructorUsedError;
  @override
  bool get isShowingClearEmailButton => throw _privateConstructorUsedError;
  @override
  bool get isPasswordResetMailSuccessfullySent =>
      throw _privateConstructorUsedError;
  @override
  bool get didTryToResetPassword => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
