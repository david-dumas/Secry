// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailFailureTearOff {
  const _$EmailFailureTearOff();

  NoEmailEntered noEmailEntered() {
    return const NoEmailEntered();
  }

  InvalidEmail emailInvalid() {
    return const InvalidEmail();
  }
}

/// @nodoc
const $EmailFailure = _$EmailFailureTearOff();

/// @nodoc
mixin _$EmailFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noEmailEntered,
    required TResult Function() emailInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoEmailEntered value) noEmailEntered,
    required TResult Function(InvalidEmail value) emailInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailFailureCopyWith<$Res> {
  factory $EmailFailureCopyWith(
          EmailFailure value, $Res Function(EmailFailure) then) =
      _$EmailFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailFailureCopyWithImpl<$Res> implements $EmailFailureCopyWith<$Res> {
  _$EmailFailureCopyWithImpl(this._value, this._then);

  final EmailFailure _value;
  // ignore: unused_field
  final $Res Function(EmailFailure) _then;
}

/// @nodoc
abstract class $NoEmailEnteredCopyWith<$Res> {
  factory $NoEmailEnteredCopyWith(
          NoEmailEntered value, $Res Function(NoEmailEntered) then) =
      _$NoEmailEnteredCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoEmailEnteredCopyWithImpl<$Res>
    extends _$EmailFailureCopyWithImpl<$Res>
    implements $NoEmailEnteredCopyWith<$Res> {
  _$NoEmailEnteredCopyWithImpl(
      NoEmailEntered _value, $Res Function(NoEmailEntered) _then)
      : super(_value, (v) => _then(v as NoEmailEntered));

  @override
  NoEmailEntered get _value => super._value as NoEmailEntered;
}

/// @nodoc

class _$NoEmailEntered implements NoEmailEntered {
  const _$NoEmailEntered();

  @override
  String toString() {
    return 'EmailFailure.noEmailEntered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoEmailEntered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noEmailEntered,
    required TResult Function() emailInvalid,
  }) {
    return noEmailEntered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
  }) {
    return noEmailEntered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
    required TResult orElse(),
  }) {
    if (noEmailEntered != null) {
      return noEmailEntered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoEmailEntered value) noEmailEntered,
    required TResult Function(InvalidEmail value) emailInvalid,
  }) {
    return noEmailEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
  }) {
    return noEmailEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
    required TResult orElse(),
  }) {
    if (noEmailEntered != null) {
      return noEmailEntered(this);
    }
    return orElse();
  }
}

abstract class NoEmailEntered implements EmailFailure {
  const factory NoEmailEntered() = _$NoEmailEntered;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$EmailFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'EmailFailure.emailInvalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noEmailEntered,
    required TResult Function() emailInvalid,
  }) {
    return emailInvalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
  }) {
    return emailInvalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noEmailEntered,
    TResult Function()? emailInvalid,
    required TResult orElse(),
  }) {
    if (emailInvalid != null) {
      return emailInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoEmailEntered value) noEmailEntered,
    required TResult Function(InvalidEmail value) emailInvalid,
  }) {
    return emailInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
  }) {
    return emailInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoEmailEntered value)? noEmailEntered,
    TResult Function(InvalidEmail value)? emailInvalid,
    required TResult orElse(),
  }) {
    if (emailInvalid != null) {
      return emailInvalid(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements EmailFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}
