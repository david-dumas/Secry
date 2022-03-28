import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:secry/util/network_and_requests/response_util.dart';
import 'authentication_api_service.dart';

@Singleton(as: IAuthenticationInterface)
class AuthenticationRepository extends IAuthenticationInterface {
  final AuthenticationApiService _authenticationApiService;

  AuthenticationRepository(this._authenticationApiService) : super();

  @override
  Future<Either<AuthFailure, Unit>> createNewUser({required User user, required String password}) async {
    try {
      var body = jsonEncode({
        'email': user.email,
        'phoneNumber': user.phone ?? null,
        'firstName': user.firstName,
        'lastName': user.lastName,
        'password': password
      });

      final response = await _authenticationApiService.auth.createNewUser(body);

      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(AuthFailure.generalError());
      }
    } catch (error) {
      return left(AuthFailure.generalError());
    }
  }

  @override
  Future<bool> resetPassword({required String email}) async {
    try {
      var body = jsonEncode({
        'email': '$email',
      });

      final response = await _authenticationApiService.auth.resetPassword(body);

      if (response.isSuccessful) {
        return Future<bool>.value(true);
      } else {
        return Future<bool>.value(false);
      }
    } catch (error) {
      return Future<bool>.value(false);
    }
  }
}
