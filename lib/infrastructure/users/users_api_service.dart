import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/users/i_users_api_service.dart';

@singleton
class UsersApiService {
  final Dio _dio;
  late final IUsersAPIService api;

  UsersApiService(
    this._dio,
  ) {
    api = IUsersAPIService(_dio);
  }
}
