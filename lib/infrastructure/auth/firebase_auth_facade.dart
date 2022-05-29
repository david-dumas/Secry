import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:twitter_login/twitter_login.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

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

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential?> signInWithTwitter() async {
    // Create a TwitterLogin instance
    final twitterLogin = new TwitterLogin(
        apiKey: "rgpLHWfS92Xwg4bd1ccK8xn6l",
        apiSecretKey: "yXcRqv7xh4X4VFfZDjEoIeD2dwWrfsFAX8hFctupRwAbaxiw7j",
        redirectURI: "secry://");

    // Trigger the sign-in flow
    final authResult = await twitterLogin.login();

    if (authResult.authToken == null) {
      return null;
    }
    if (authResult.authTokenSecret == null) {
      return null;
    }

    // Create a credential from the access token
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken!,
      secret: authResult.authTokenSecret!,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
  }

  Future<UserCredential?> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    if (loginResult.accessToken?.token == null) {
      return null;
    }

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
