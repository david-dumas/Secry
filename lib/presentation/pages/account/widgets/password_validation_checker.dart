import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/auth/password_validation_status.dart';
import 'package:secry/util/validation/password_validator.dart';

class PasswordValidationChecker extends StatelessWidget {
  final PasswordValidationStatus passwordValidationStatus;

  final verticalTipSpacing = 8.0;
  final tipRowAlignment = MainAxisAlignment.spaceBetween;
  final passwordValidator = PasswordValidator();

  PasswordValidationChecker({Key? key, required this.passwordValidationStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: kMediumGrayV2),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: tipRowAlignment,
              children: [
                Text(
                    "${tr('account_password_tip_at_least_x_characters_part_1')} ${validationMinimumPasswordLength} ${tr('account_password_tip_at_least_x_characters_part_2')}"),
                Icon(Icons.check, color: passwordValidationStatus.isAtLeast6Characters ? kPrimaryColor : globalWhite)
              ],
            ),
            SizedBox(height: verticalTipSpacing),
            Row(
              mainAxisAlignment: tipRowAlignment,
              children: [
                Text(tr('account_password_tip_at_least_one_lowercase_character')),
                Icon(Icons.check,
                    color: passwordValidationStatus.hasAtLeastOneLowercaseCharacter ? kPrimaryColor : globalWhite)
              ],
            ),
            SizedBox(height: verticalTipSpacing),
            Row(
              mainAxisAlignment: tipRowAlignment,
              children: [
                Text(tr('account_password_tip_at_least_one_uppercase_characters')),
                Icon(Icons.check,
                    color: passwordValidationStatus.hasAtLeastOneUppercaseCharacter ? kPrimaryColor : globalWhite)
              ],
            ),
            SizedBox(height: verticalTipSpacing),
            Row(
              mainAxisAlignment: tipRowAlignment,
              children: [
                Text(tr('account_password_tip_at_least_one_number')),
                Icon(Icons.check, color: passwordValidationStatus.hasAtLeastOneNumber ? kPrimaryColor : globalWhite)
              ],
            ),
            SizedBox(height: verticalTipSpacing),
            Row(
              mainAxisAlignment: tipRowAlignment,
              children: [
                Text(tr('account_password_tip_use_special_characters')),
                Icon(Icons.check,
                    color: passwordValidationStatus.hasAtLeastOneSpecialCharacter ? kPrimaryColor : globalWhite)
              ],
            ),
            SizedBox(height: verticalTipSpacing),
            LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                width: (constraints.maxWidth) *
                    min(
                        max(
                            (0.1 +
                                (passwordValidator.getAmountOfValidPasswordPoints(passwordValidationStatus) *
                                    ((1 - 0.1) / 5))),
                            0.1),
                        1),
                height: 33,
                color: passwordValidator.getColorForAmountOfValidPasswordPoints(
                    passwordValidator.getAmountOfValidPasswordPoints(passwordValidationStatus)),
              );
            })
          ],
        ),
      ),
    );
  }
}
