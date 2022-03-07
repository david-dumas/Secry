import 'package:flutter_svg/flutter_svg.dart';

class GroupUser {
  final String id;
  final String firstName;
  final String? lastName;
  final String? profileImageUrl;
  final String? avatarSvg;
  DrawableRoot? svg;

  GroupUser(
      {required this.id,
      required this.firstName,
      this.lastName = null,
      this.profileImageUrl = null,
      this.avatarSvg = null,
      this.svg = null});

  // TODO Replace hardcoded profileImageUrl value with 'null'
  factory GroupUser.fromJsonMap(Map<String, dynamic> json) {
    return GroupUser(
      id: json.containsKey('id') ? json['id'].toString() : '',
      firstName: json.containsKey('firstName') ? json['firstName'] : '',
      lastName: json.containsKey('lastName') ? (json['lastName'] != null ? json['lastName'].toString() : null) : null,
      profileImageUrl: json.containsKey('profileImageUrl')
          ? (json['profileImageUrl'] != null
              ? json['profileImageUrl'].toString()
              : 'https://firebasestorage.googleapis.com/v0/b/bakeryapp-75e68.appspot.com/o/users%2FIMG_1733-min.jpeg?alt=media&token=6ebf28ca-14c1-4c5b-abb2-fbbe1fc5d0ef')
          : 'https://firebasestorage.googleapis.com/v0/b/bakeryapp-75e68.appspot.com/o/users%2FIMG_1733-min.jpeg?alt=media&token=6ebf28ca-14c1-4c5b-abb2-fbbe1fc5d0ef',
      avatarSvg: json.containsKey('avatarSvg') ? (json['avatarSvg'] != null ? json['avatarSvg'] : null) : null,
    );
  }
}
