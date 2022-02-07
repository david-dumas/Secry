import 'package:dio/dio.dart';
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_groups_api_service.g.dart';

@RestApi(baseUrl: temporaryPostmanBaseUrl)
abstract class IGroupsApiService {
  factory IGroupsApiService(Dio dio, {String baseUrl}) = _IGroupsApiService;

  @GET('/get_private_groups')
  Future<HttpResponse<dynamic>> getPrivateGroups(
      // @Body() String body,
      );
}
