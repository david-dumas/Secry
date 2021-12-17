import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emailAlreadyExists() = EmailAlreadyExists;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.invalidPassword() = InvalidPassword;
  const factory AuthFailure.wrongPassword() = WrongPassword;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.weakPassword() = WeakPassword;
}
