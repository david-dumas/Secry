import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/general/survey_row_info.dart';
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
  Future<List<SurveyQuestionsInfo>> getSurveysDummyData() async {
    try {
      print("GO");
      final response = await _surveysApiService.api.getSurveyDummyData();
      if (response.isSuccessful) {
        print(response.data);
        final mappedData = json.decode(response.data) as Map<String, dynamic>;
        List<SurveyQuestionsInfo> surveyQuestionsInfoData = [];
        if (mappedData.containsKey('questions')) {
          print("Ghello");
          List<dynamic> questions = mappedData["questions"];
          print("length: ${questions.length}");
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
  @override
  Future<SurveyQuestionGeneralInfo?>
  updateSurveysDummyData() async {
    try {
      print("1");
      final response =
      await _surveysApiService.api.updateSurveysDummyData();

      if (response.isSuccessful) {
        print("2");
        final mappedData = json.decode(response.data) as Map<String, dynamic>;

        if (!mappedData.containsKey('id')) {
          return null;
        }

        List<SurveyQuestionsInfo> surveyQuestionsInfoData = [];

        final String id = mappedData.containsKey('questionId')
            ? (mappedData['questionId'] != null ? mappedData['questionId'] : '')
            : '';
        final String title = mappedData.containsKey('questiontitle')
            ? (mappedData['questiontitle'] != null ? mappedData['questiontitle'] : '')
            : '';
        final DateTime? groupCreatedAt = mappedData.containsKey('createdAt')
            ? (mappedData['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(mappedData['createdAt'])
            : null)
            : null;

        if (mappedData.containsKey('questions')) {
          List<dynamic> questions = mappedData["questions"];
          surveyQuestionsInfoData =
              (questions).map((json) => SurveyQuestionsInfo.fromJsonMap(json))
              .toList();
        }

        final surveyQuestionGeneralInfo = SurveyQuestionGeneralInfo(
            id: id,
            title: title,
            createdAt: groupCreatedAt,
            questions: surveyQuestionsInfoData);
        return surveyQuestionGeneralInfo;
      } else {
        return null;
      }
    } catch (error) {
      print(error);
      return null;
    }
  }
}
