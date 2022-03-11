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

  // TODO Delete
  @GET('/get_users_added_to_new_group')
  Future<HttpResponse<dynamic>> getUsersAddedToNewGroup();
}
