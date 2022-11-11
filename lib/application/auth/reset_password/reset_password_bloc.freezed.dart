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
    TResult? Function(String newEmail)? emailChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function(bool isShowing)? isShowingClearEmailInputToggled,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(_IsShowingClearEmailInputToggled value)?
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
      _$ResetPasswordEventCopyWithImpl<$Res, ResetPasswordEvent>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res, $Val extends ResetPasswordEvent>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String newEmail});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEmail = null,
  }) {
    return _then(_$_EmailChanged(
      null == newEmail
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
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(String newEmail)? emailChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function(bool isShowing)? isShowingClearEmailInputToggled,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(_IsShowingClearEmailInputToggled value)?
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

  String get newEmail;
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
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_ResetPasswordPressed>
    implements _$$_ResetPasswordPressedCopyWith<$Res> {
  __$$_ResetPasswordPressedCopyWithImpl(_$_ResetPasswordPressed _value,
      $Res Function(_$_ResetPasswordPressed) _then)
      : super(_value, _then);
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
    TResult? Function(String newEmail)? emailChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function(bool isShowing)? isShowingClearEmailInputToggled,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(_IsShowingClearEmailInputToggled value)?
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
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_IsShowingClearEmailInputToggledCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res,
        _$_IsShowingClearEmailInputToggled>
    implements _$$_IsShowingClearEmailInputToggledCopyWith<$Res> {
  __$$_IsShowingClearEmailInputToggledCopyWithImpl(
      _$_IsShowingClearEmailInputToggled _value,
      $Res Function(_$_IsShowingClearEmailInputToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_IsShowingClearEmailInputToggled(
      null == isShowing
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
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(String newEmail)? emailChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function(bool isShowing)? isShowingClearEmailInputToggled,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(_IsShowingClearEmailInputToggled value)?
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

  bool get isShowing;
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
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {String inputEmail,
      bool isShowingClearEmailButton,
      bool isPasswordResetMailSuccessfullySent,
      bool didTryToResetPassword,
      bool isLoading});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputEmail = null,
    Object? isShowingClearEmailButton = null,
    Object? isPasswordResetMailSuccessfullySent = null,
    Object? didTryToResetPassword = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      inputEmail: null == inputEmail
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingClearEmailButton: null == isShowingClearEmailButton
          ? _value.isShowingClearEmailButton
          : isShowingClearEmailButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetMailSuccessfullySent: null ==
              isPasswordResetMailSuccessfullySent
          ? _value.isPasswordResetMailSuccessfullySent
          : isPasswordResetMailSuccessfullySent // ignore: cast_nullable_to_non_nullable
              as bool,
      didTryToResetPassword: null == didTryToResetPassword
          ? _value.didTryToResetPassword
          : didTryToResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputEmail,
      bool isShowingClearEmailButton,
      bool isPasswordResetMailSuccessfullySent,
      bool didTryToResetPassword,
      bool isLoading});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputEmail = null,
    Object? isShowingClearEmailButton = null,
    Object? isPasswordResetMailSuccessfullySent = null,
    Object? didTryToResetPassword = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ResetPasswordState(
      inputEmail: null == inputEmail
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingClearEmailButton: null == isShowingClearEmailButton
          ? _value.isShowingClearEmailButton
          : isShowingClearEmailButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetMailSuccessfullySent: null ==
              isPasswordResetMailSuccessfullySent
          ? _value.isPasswordResetMailSuccessfullySent
          : isPasswordResetMailSuccessfullySent // ignore: cast_nullable_to_non_nullable
              as bool,
      didTryToResetPassword: null == didTryToResetPassword
          ? _value.didTryToResetPassword
          : didTryToResetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
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
            (identical(other.inputEmail, inputEmail) ||
                other.inputEmail == inputEmail) &&
            (identical(other.isShowingClearEmailButton,
                    isShowingClearEmailButton) ||
                other.isShowingClearEmailButton == isShowingClearEmailButton) &&
            (identical(other.isPasswordResetMailSuccessfullySent,
                    isPasswordResetMailSuccessfullySent) ||
                other.isPasswordResetMailSuccessfullySent ==
                    isPasswordResetMailSuccessfullySent) &&
            (identical(other.didTryToResetPassword, didTryToResetPassword) ||
                other.didTryToResetPassword == didTryToResetPassword) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      inputEmail,
      isShowingClearEmailButton,
      isPasswordResetMailSuccessfullySent,
      didTryToResetPassword,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  String get inputEmail;
  @override
  bool get isShowingClearEmailButton;
  @override
  bool get isPasswordResetMailSuccessfullySent;
  @override
  bool get didTryToResetPassword;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
