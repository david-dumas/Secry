import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';
import 'authentication_api_service.dart';

@Singleton(as: IAuthenticationInterface)
class AuthenticationRepository extends IAuthenticationInterface {
  final AuthenticationApiService _authenticationApiService;

  AuthenticationRepository(this._authenticationApiService) : super();

  @override
  Future createNewUser(User user, String password) async {
    // TODO use same format as with "resetPassword" below in this file.
    // TODO Do NOT call Dio directly

    var dio = Dio();

    final jsonUser = user.toJson();
    // TODO check if containsKey
    jsonUser['password'] = password;

    try {
      var response = await dio.post(
        'https://sjno.nl/secry/v1/auth/user',
        data: jsonUser,
        onSendProgress: (a, b) => print('Send : ${a / b}'),
        onReceiveProgress: (a, b) => print('Received : ${a / b}'),
      );

      print(json.decode(response.data));
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      if (e.response != null) {
        //print(e.response!.data);
        return e.response;
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
      }
    }
  }

  @override
  Future<bool> resetPassword({required String email}) async {
    try {
      var body = jsonEncode({
        'email': '$email',
      });

      final response = await _authenticationApiService.auth.resetPassword(body);
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        return Future<bool>.value(true);
      } else {
        return Future<bool>.value(false);
      }
    } catch (error) {
      print(error);
      return Future<bool>.value(false);
    }
  }
}
