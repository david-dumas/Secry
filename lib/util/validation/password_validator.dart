import 'package:dartz/dartz.dart';
import 'package:secry/domain/auth/validation_failures/password_failure.dart';

class PasswordValidator {
  Either<PasswordFailure, Unit> getPasswordInputFailureOrSuccessUnit({required String password}) {
    final fullMatchPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    final fullMatchRegExp = RegExp(fullMatchPattern);

    if (password.length < 6) {
      return left(PasswordFailure.tooShort());
    } else if (!fullMatchRegExp.hasMatch(password)) {
      final atLeastOneNumberRegExp = RegExp(r'\d');
      if (!atLeastOneNumberRegExp.hasMatch(password)) {
        return left(PasswordFailure.noNumberUsed());
      }

      final atLeastOneLowercaseCharacterRegExp = RegExp(r'([a-z])');

      if (!atLeastOneLowercaseCharacterRegExp.hasMatch(password)) {
        return left(PasswordFailure.noLowercaseCharacterUsed());
      }

      final atLeastOneUppercaseCharacterRegExp = RegExp(r'([A-Z])');
      if (!atLeastOneUppercaseCharacterRegExp.hasMatch(password)) {
        return left(PasswordFailure.noUppercaseCharacterUsed());
      }

      final atLeastOneSpecialCharacterRegExp = RegExp(r'!@#$%^&*()_+\-=\[\]');
      if (!atLeastOneSpecialCharacterRegExp.hasMatch(password)) {
        return left(PasswordFailure.noSpecialCharacterUsed());
      }

      return left(PasswordFailure.noUppercaseCharacterUsed());
    } else {
      return right(unit);
    }
  }
}
