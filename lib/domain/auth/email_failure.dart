import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_failure.freezed.dart';

@freezed
class EmailFailure with _$EmailFailure {
  const factory EmailFailure.noEmailEntered() = NoEmailEntered;
  const factory EmailFailure.emailInvalid() = InvalidEmail;
}
