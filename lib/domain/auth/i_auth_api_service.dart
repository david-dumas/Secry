import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:secry/constants.dart';

part 'i_auth_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class IAuthApiService {
  factory IAuthApiService(Dio dio, {String baseUrl}) = _IAuthApiService;

  @POST('/api/v2/auth/reset-password')
  Future<HttpResponse<dynamic>> resetPassword(
    @Body() String body,
  );

  @POST('/api/v2/auth')
  Future<HttpResponse<dynamic>> createNewUser(
    @Body() String body,
  );
}
