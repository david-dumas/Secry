import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_api_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

@singleton
class AuthenticationApiService {
  final Dio _dio;
  late final IAuthApiService auth;

  AuthenticationApiService(
    this._dio,
  ) {
    auth = IAuthApiService(_dio);
  }
}

class GoogleSignInApi {
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
}
