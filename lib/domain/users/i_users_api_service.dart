import 'package:dio/dio.dart';
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_users_api_service.g.dart';

@RestApi(baseUrl: temporaryPostmanGetUsersForCreateNewGroup)
abstract class IUsersAPIService {
  factory IUsersAPIService(Dio dio, {String baseUrl}) = _IUsersAPIService;

  @GET('/get_users_to_search_in_new_group')
  Future<HttpResponse<dynamic>> getUsersToSearchInNewGroup();

  // TODO Delete
  @GET('/get_users_added_to_new_group')
  Future<HttpResponse<dynamic>> getUsersAddedToNewGroup();
}
