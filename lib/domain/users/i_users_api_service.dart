import 'package:dio/dio.dart' hide Headers;
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_users_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class IUsersAPIService {
  factory IUsersAPIService(Dio dio, {String baseUrl}) = _IUsersAPIService;

  @GET('/api/v2/auth')
  Future<HttpResponse<dynamic>> getUsersToSearchInNewGroup(@Header('Authorization') String token,
      @Query("SearchQuery") String searchQuery, @Query("PageNumber") int pageNumber, @Query("PageSize") int pageSize);

  @POST('/api/v2/group')
  @Headers(<String, dynamic>{"accept": "application/json", "Content-Type": "application/json"})
  Future<HttpResponse<dynamic>> createNewGroup(@Header('Authorization') String token, @Body() String body);
}
