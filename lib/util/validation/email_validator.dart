import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/domain/auth/validation_failures/email_failure.dart';

class EmailValidator {
  Either<EmailFailure, Unit> getEmailInputFailureOrSuccessUnit({required String email}) {
    if (email.length < 1) {
      return left(EmailFailure.noEmailEntered());
    } else if (!email.contains("@")) {
      return left(EmailFailure.emailInvalid());
    } else {
      return right(unit);
    }
  }

  String getErrorTextForFailure({required EmailFailure failure}) {
    return failure.maybeMap(
      noEmailEntered: (_) => tr('account_warning_please_enter_email'),
      emailInvalid: (_) => tr('account_warning_please_enter_valid_email'),
      orElse: () => tr('account_warning_please_enter_valid_email'),
    );
  }
}
