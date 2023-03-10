import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/auth/password_validation_status.dart';
import 'package:secry/domain/auth/validation_failures/password_failure.dart';
import 'package:secry/util/screen_size_and_dimensions/screen_size_helper.dart';

class PasswordValidator {
  Either<PasswordFailure, Unit> getPasswordInputFailureOrSuccessUnit({required String password}) {
    var fullMatchPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])';
    fullMatchPattern += '.{${validationMinimumPasswordLength},}\$';
    final fullMatchRegExp = RegExp(fullMatchPattern);

    if (password.length < validationMinimumPasswordLength) {
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

  PasswordValidationStatus getPasswordValidationStatus(String password) {
    bool isAtLeast6Characters = false;
    bool hasAtLeastOneLowercaseCharacter = false;
    bool hasAtLeastOneUppercaseCharacter = false;
    bool hasAtLeastOneNumber = false;
    bool hasAtLeastOneSpecialCharacter = false;

    if (password.length >= validationMinimumPasswordLength) {
      isAtLeast6Characters = true;
    }

    final atLeastOneNumberRegExp = RegExp(r'\d');
    if (atLeastOneNumberRegExp.hasMatch(password)) {
      hasAtLeastOneNumber = true;
    }

    final atLeastOneLowercaseCharacterRegExp = RegExp(r'[a-z]');
    if (atLeastOneLowercaseCharacterRegExp.hasMatch(password)) {
      hasAtLeastOneLowercaseCharacter = true;
    }

    final atLeastOneUppercaseCharacterRegExp = RegExp(r'[A-Z]');
    if (atLeastOneUppercaseCharacterRegExp.hasMatch(password)) {
      hasAtLeastOneUppercaseCharacter = true;
    }

    final atLeastOneSpecialCharacterRegExp = RegExp(r'[!@#$%^&*()_+\-=\[\]]');
    if (atLeastOneSpecialCharacterRegExp.hasMatch(password)) {
      hasAtLeastOneSpecialCharacter = true;
    }

    return PasswordValidationStatus(
        isAtLeast6Characters: isAtLeast6Characters,
        hasAtLeastOneLowercaseCharacter: hasAtLeastOneLowercaseCharacter,
        hasAtLeastOneUppercaseCharacter: hasAtLeastOneUppercaseCharacter,
        hasAtLeastOneNumber: hasAtLeastOneNumber,
        hasAtLeastOneSpecialCharacter: hasAtLeastOneSpecialCharacter);
  }

  int getAmountOfValidPasswordPoints(PasswordValidationStatus passwordValidationStatus) {
    int amountOfValidPoints = 0;

    if (passwordValidationStatus.isAtLeast6Characters) {
      amountOfValidPoints++;
    }
    if (passwordValidationStatus.hasAtLeastOneLowercaseCharacter) {
      amountOfValidPoints++;
    }
    if (passwordValidationStatus.hasAtLeastOneUppercaseCharacter) {
      amountOfValidPoints++;
    }
    if (passwordValidationStatus.hasAtLeastOneNumber) {
      amountOfValidPoints++;
    }
    if (passwordValidationStatus.hasAtLeastOneSpecialCharacter) {
      amountOfValidPoints++;
    }
    return amountOfValidPoints;
  }

  Color getColorForAmountOfValidPasswordPoints(int amountOfValidPoints) {
    if (amountOfValidPoints == 0) {
      return appIconColorBlue1;
    } else if (amountOfValidPoints == 1) {
      return appIconColorBlue2;
    } else if (amountOfValidPoints == 2) {
      return appIconColorBlue3;
    } else if (amountOfValidPoints == 3) {
      return appIconColorBlue4;
    } else if (amountOfValidPoints == 4) {
      return appIconColorBlue5;
    } else if (amountOfValidPoints == 5) {
      return appIconColorBlue6;
    } else {
      return kPrimaryColor;
    }
  }

  String getErrorTextForFailure({required PasswordFailure passwordFailure, required double deviceWidth}) {
    final isSmallDevice = ScreenSizeHelper().isSmallDevice(deviceWidth: deviceWidth);

    return passwordFailure.maybeMap(
      tooShort: (_) => tr('account_warning_password_too_short'),
      noLowercaseCharacterUsed: (_) => isSmallDevice
          ? tr('account_warning_password_must_contain_at_least_one_lowercase_character_short_version')
          : tr('account_warning_password_must_contain_at_least_one_lowercase_character'),
      noUppercaseCharacterUsed: (_) => isSmallDevice
          ? tr('account_warning_password_must_contain_at_least_one_uppercase_character_short_version')
          : tr('account_warning_password_must_contain_at_least_one_uppercase_character'),
      noSpecialCharacterUsed: (_) => isSmallDevice
          ? tr('account_warning_password_must_contain_at_least_one_special_character_short_version')
          : tr('account_warning_password_must_contain_at_least_one_special_character'),
      noNumberUsed: (_) => isSmallDevice
          ? tr('account_warning_password_must_contain_at_least_one_number_short_version')
          : tr('account_warning_password_must_contain_at_least_one_number'),
      invalidNotComplexEnough: (_) => isSmallDevice
          ? tr('account_warning_password_invalid_not_complex_enough_short_version')
          : tr('account_warning_password_invalid_not_complex_enough'),
      orElse: () => tr('account_warning_please_enter_valid_password'),
    );
  }
}
