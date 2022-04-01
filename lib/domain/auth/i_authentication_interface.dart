import 'package:dartz/dartz.dart';
import 'package:secry/domain/auth/user.dart';
import 'auth_failure.dart';

abstract class IAuthenticationInterface {
  Future<Either<AuthFailure, Unit>> createNewUser({required User user, required String password});
  Future<bool> resetPassword({required String email});
}
