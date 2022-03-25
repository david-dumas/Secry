import 'package:dartz/dartz.dart';
import 'package:secry/domain/auth/email_failure.dart';

class EmailValidator {
  Either<EmailFailure, Unit> getEmailInputFailureOrSuccessUnit({required String email}) {
    if (email.length < 1) {
      return left(EmailFailure.noEmailEntered());
    } else if (email.contains("@")) {
      return left(EmailFailure.emailInvalid());
    } else {
      return right(unit);
    }
  }
}
