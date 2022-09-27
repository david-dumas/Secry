import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/general/survey_row_info.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

import 'surveys_api_service.dart';

@Singleton(as: ISurveysRepository)
class SurveysRepository extends ISurveysRepository {
  final SurveysApiService _surveysApiService;

  SurveysRepository(this._surveysApiService) : super();

  @override
  Future<List<SurveyRowInfo>> getSurveysDummyData() async {
    try {
      final response = await _surveysApiService.api.getSurveysDummyData();

      if (response.isSuccessful) {
        final List<SurveyRowInfo> surveysRowsData =
        (json.decode(response.data) as List).map((json) =>
            SurveyRowInfo.fromJsonMap(json)).toList();
        print(error);
        return surveysRowsData;
      } else {
        return List.empty();

      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }
}
