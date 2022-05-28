import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signIn({required String email, required String password});
  Future<UserCredential> signInWithGoogle();
  Future<UserCredential> signInWithTwitter();
  Future<UserCredential?> signInWithFacebook();
  Option<auth.User> getSignedInUser();
  Future<void> signOut();
}
