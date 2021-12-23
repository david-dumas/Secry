import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';

@Singleton(as: IAuthenticationInterface)
class AuthenticationRepository extends IAuthenticationInterface {
  @override
  Future<void> createNewUser(User user, String password) async {
    var dio = Dio();

    final jsonUser = user.toJson();
    jsonUser['password'] = password;

    try {
      var response = await dio.post(
        'https://sjno.nl/secry/v1/auth/user',
        data: jsonUser,
        onSendProgress: (a, b) => print('Send : ${a / b}'),
        onReceiveProgress: (a, b) => print('Received : ${a / b}'),
      );
      var jsonResponse = json.decode(response.data);
      print(jsonResponse);
    } catch (e) {
      print(e);
    }
  }
}
