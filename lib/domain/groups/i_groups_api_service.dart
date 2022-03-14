import 'package:dio/dio.dart' hide Headers;
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_groups_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class IGroupsApiService {
  factory IGroupsApiService(Dio dio, {String baseUrl}) = _IGroupsApiService;

  @GET('/api/v2/group')
  @Headers(<String, dynamic>{"accept": "application/json"})
  Future<HttpResponse<dynamic>> getPrivateGroups(
      @Header('Authorization') String token, @Query("PageNumber") int pageNumber, @Query("PageSize") int pageSize);

  @POST('/api/v2/group')
  @Headers(<String, dynamic>{"accept": "application/json", "Content-Type": "application/json"})
  Future<HttpResponse<dynamic>> createNewGroup(@Header('Authorization') String token, @Body() String body);

  @GET('/api/v2/group/{groupId}')
  @Headers(<String, dynamic>{"accept": "application/json"})
  Future<HttpResponse<dynamic>> getGroupChatsAndSurveysWithGeneralGroupInfo(
      @Path("groupId") groupIdAsPath, @Header('Authorization') String token, @Query("groupId") String groupId);
}
