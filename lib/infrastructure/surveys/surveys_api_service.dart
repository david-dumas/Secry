import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/i_surveys_api_service.dart';

@singleton
class SurveysApiService {
  final Dio _dio;
  late final ISurveysApiService api;

  SurveysApiService(
    this._dio,
  ) {
    api = ISurveysApiService(_dio);
  }
}
