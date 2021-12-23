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

    // try {
    //   var response = await dio.post(
    //     'https://sjno.nl/secry/v1/auth/user',
    //     data: jsonUser,
    //     onSendProgress: (a, b) => print('Send : ${a / b}'),
    //     onReceiveProgress: (a, b) => print('Received : ${a / b}'),
    //   );
    //   print("Submitted");
    //   print(json.decode(response.data));
    // } catch (e) {
    //   print(e);
    // }

    try {
      //404
      var response = await dio.post(
        'https://sjno.nl/secry/v1/auth/user',
        data: jsonUser,
        onSendProgress: (a, b) => print('Send : ${a / b}'),
        onReceiveProgress: (a, b) => print('Received : ${a / b}'),
      );

      print("Success");
      print(json.decode(response.data));
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print(e.response!.data);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
      }
    }
  }
}
