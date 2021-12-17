import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String firstName,
    String? middleName,
    String? surname,
    required String email,
  }) = _User;

  factory User.fromJsonMap(String uid, Map<String, dynamic> json) {
    return User(
      uid: uid,
      firstName: json['firstName'],
      middleName: json['middleName'],
      surname: json['surname'],
      email: json['email'],
    );
  }
}
