import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_api_service.dart';

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
