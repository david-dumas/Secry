import 'package:dio/dio.dart';
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_chats_api_service.g.dart';

@RestApi(baseUrl: temporaryPostmanPrivateChatsUrl)
abstract class IChatsApiService {
  factory IChatsApiService(Dio dio, {String baseUrl}) = _IChatsApiService;

  @GET('/get_private_chats_v2')
  Future<HttpResponse<dynamic>> getMostRecentPrivateChatsForGroup(
      // @Body() String body,
      );
}
