// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  EmailAlreadyExists emailAlreadyExists() {
    return const EmailAlreadyExists();
  }

  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

  InvalidPassword invalidPassword() {
    return const InvalidPassword();
  }

  UserNotFound userNotFound() {
    return const UserNotFound();
  }

  GeneralError generalError() {
    return const GeneralError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $EmailAlreadyExistsCopyWith<$Res> {
  factory $EmailAlreadyExistsCopyWith(
          EmailAlreadyExists value, $Res Function(EmailAlreadyExists) then) =
      _$EmailAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyExistsCopyWith<$Res> {
  _$EmailAlreadyExistsCopyWithImpl(
      EmailAlreadyExists _value, $Res Function(EmailAlreadyExists) _then)
      : super(_value, (v) => _then(v as EmailAlreadyExists));

  @override
  EmailAlreadyExists get _value => super._value as EmailAlreadyExists;
}

/// @nodoc

class _$EmailAlreadyExists implements EmailAlreadyExists {
  const _$EmailAlreadyExists();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) {
    return emailAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) {
    return emailAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (emailAlreadyExists != null) {
      return emailAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) {
    return emailAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) {
    return emailAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) {
    if (emailAlreadyExists != null) {
      return emailAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyExists implements AuthFailure {
  const factory EmailAlreadyExists() = _$EmailAlreadyExists;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.invalidEmail()';
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
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<$Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword value, $Res Function(InvalidPassword) then) =
      _$InvalidPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPasswordCopyWith<$Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword _value, $Res Function(InvalidPassword) _then)
      : super(_value, (v) => _then(v as InvalidPassword));

  @override
  InvalidPassword get _value => super._value as InvalidPassword;
}

/// @nodoc

class _$InvalidPassword implements InvalidPassword {
  const _$InvalidPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) {
    return invalidPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) {
    return invalidPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword implements AuthFailure {
  const factory InvalidPassword() = _$InvalidPassword;
}

/// @nodoc
abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  const factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class $GeneralErrorCopyWith<$Res> {
  factory $GeneralErrorCopyWith(
          GeneralError value, $Res Function(GeneralError) then) =
      _$GeneralErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeneralErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $GeneralErrorCopyWith<$Res> {
  _$GeneralErrorCopyWithImpl(
      GeneralError _value, $Res Function(GeneralError) _then)
      : super(_value, (v) => _then(v as GeneralError));

  @override
  GeneralError get _value => super._value as GeneralError;
}

/// @nodoc

class _$GeneralError implements GeneralError {
  const _$GeneralError();

  @override
  String toString() {
    return 'AuthFailure.generalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GeneralError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() userNotFound,
    required TResult Function() generalError,
  }) {
    return generalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
  }) {
    return generalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? userNotFound,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyExists value) emailAlreadyExists,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(GeneralError value) generalError,
  }) {
    return generalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
  }) {
    return generalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyExists value)? emailAlreadyExists,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(GeneralError value)? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(this);
    }
    return orElse();
  }
}

abstract class GeneralError implements AuthFailure {
  const factory GeneralError() = _$GeneralError;
}
