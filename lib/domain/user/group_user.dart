import 'package:flutter_svg/flutter_svg.dart';

class GroupUser {
  final String id;
  final String firstName;
  final String? lastName;
  final String? avatarSvg;
  DrawableRoot? svg;

  GroupUser(
      {required this.id, required this.firstName, required this.lastName, required this.avatarSvg, this.svg = null});

  factory GroupUser.fromJsonMap(Map<String, dynamic> json) {
    return GroupUser(
      id: json.containsKey('id') ? json['id'].toString() : '',
      firstName: json.containsKey('firstName') ? json['firstName'] : '',
      lastName: json.containsKey('lastName') ? (json['lastName'] != null ? json['lastName'].toString() : '') : '',
      avatarSvg: json.containsKey('avatarSvg') ? (json['avatarSvg'] != null ? json['avatarSvg'] : '') : '',
    );
  }
}
