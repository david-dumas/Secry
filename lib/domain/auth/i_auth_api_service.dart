import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'i_auth_api_service.g.dart';

@RestApi(baseUrl: "https://sjno.nl/secry")
abstract class IAuthApiService {
  factory IAuthApiService(Dio dio, {String baseUrl}) = _IAuthApiService;

  @POST('/v1/auth/user/reset-password')
  Future<HttpResponse<dynamic>> resetPassword(
    @Body() String body,
  );
}
