import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signIn({required String email, required String password});
  Option<auth.User> getSignedInUser();
  Future resetPassword({required String email});
  Future<void> signOut();
}
