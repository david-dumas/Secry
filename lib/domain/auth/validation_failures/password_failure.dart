import 'package:freezed_annotation/freezed_annotation.dart';
part 'password_failure.freezed.dart';

@freezed
class PasswordFailure with _$PasswordFailure {
  const factory PasswordFailure.tooShort() = TooShort;
  const factory PasswordFailure.noLowercaseCharacterUsed() = NoLowercaseCharacterUsed;
  const factory PasswordFailure.noUppercaseCharacterUsed() = NoUppercaseCharacterUsed;
  const factory PasswordFailure.noSpecialCharacterUsed() = NoSpecialCharacterUsed;
  const factory PasswordFailure.noNumberUsed() = NoNumberUsed;
  const factory PasswordFailure.invalidNotComplexEnough() = InvalidNotComplexEnough;
}
