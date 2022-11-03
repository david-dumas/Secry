import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

import '../../domain/surveys/survey_questions_info.dart';
import '../../domain/surveys/survey_questions_general_info.dart';
import 'surveys_api_service.dart';

@Singleton(as: ISurveysRepository)
class SurveysRepository extends ISurveysRepository {
  final SurveysApiService _surveysApiService;

  SurveysRepository(this._surveysApiService) : super();


  @override
  Future<List<SurveyQuestionGeneralInfo>>
  getSurveysDummyData() async {
    try {
      final response = await _surveysApiService.api.getSurveysDummyData();
      if (response.isSuccessful) {
        final mappedData = json.decode(response.data) as Map<String, dynamic>;
        List<SurveyQuestionGeneralInfo> surveyQuestionsInfo = [];
        if (mappedData.containsKey('questions')) {
          List<dynamic> questions = mappedData["questions"];
          surveyQuestionsInfo =
              (questions).map((json) => SurveyQuestionGeneralInfo.fromJsonMap(json))
                  .toList();
        }
        return surveyQuestionsInfo;
      }
      else {
        print("list empty");
        return List.empty();
      }
    } catch (error) {
      print("catch!");
      print(error);
      return List.empty();
    }
  }

  @override
  Future<List<SurveyQuestionsInfo>> getSurveyQuestionDummyData(questionId) async {

      try {
        final response = await _surveysApiService.api.getSurveyQuestionDummyData();
        if (response.isSuccessful) {
          final mappedData = json.decode(response.data) as Map<String, dynamic>;
          List<SurveyQuestionsInfo> surveyQuestionsInfoData = [];
          if (mappedData.containsKey('answers')) {
            List<dynamic> questions = mappedData["answers"];
            surveyQuestionsInfoData =
                (questions).map((json) => SurveyQuestionsInfo.fromJsonMap(json))
                    .toList();
          }
          return surveyQuestionsInfoData;
        }
        else {
          print("list empty");
          return List.empty();
        }
      } catch (error) {
        print("catch!");
        print(error);
        return List.empty();
      }
  }

}