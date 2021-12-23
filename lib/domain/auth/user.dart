import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User(
      {String? uid,
      required String firstName,
      required String lastName,
      required String email,
      String? phone}) = _User;

  factory User.fromJsonMap(String uid, Map<String, dynamic> json) {
    return User(
        uid: uid,
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        phone: json['phone']);
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'phoneNumber': phone,
        'firstName': firstName,
        'lastName': lastName
      };
}
