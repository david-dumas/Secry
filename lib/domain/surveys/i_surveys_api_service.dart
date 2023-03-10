import 'package:dio/dio.dart';
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'i_surveys_api_service.g.dart';

@RestApi(baseUrl: temporaryPostmanPrivateSurveysUrl)
abstract class ISurveysApiService {
  factory ISurveysApiService(Dio dio, {String baseUrl}) = _ISurveysApiService;

  @GET('/get_private_surveys')
  Future<HttpResponse<dynamic>> getMostRecentPrivateSurveysForGroup(
      // @Body() String body,
      );
}
