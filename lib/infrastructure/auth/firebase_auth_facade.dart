import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;

@Singleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final auth.FirebaseAuth _auth;

  FirebaseAuthFacade(
    this._auth,
  ) : super();

  @override
  Option<auth.User> getSignedInUser() {
    return optionOf(_auth.currentUser);
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({required String email, required String password}) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      final user = credential.user;

      if (user == null) {
        return left(AuthFailure.userNotFound());
      }

      final newUser = credential.additionalUserInfo?.isNewUser ?? false;

      if (newUser) {
        // TODO
      }

      return right(unit);
    } on FirebaseAuthException catch (exception) {
      if (exception.code == 'email-already-exists') {
        return left(const AuthFailure.emailAlreadyExists());
      } else if (exception.code == 'invalid-email') {
        return left(AuthFailure.invalidEmail());
      } else if (exception.code == 'invalid-password') {
        return left(AuthFailure.invalidPassword());
      } else if (exception.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      }
      return left(AuthFailure.generalError());
    }
  }

  @override
  Future resetPassword({required String email}) async {
    // TODO implement password reset via API
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
