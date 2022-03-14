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
}
