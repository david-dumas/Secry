import 'package:secry/domain/surveys/survey_questions_general_info.dart';
import 'package:secry/domain/surveys/survey_questions_info.dart';

abstract class ISurveysRepository {
  Future<List<SurveyQuestionsInfo>> getSurveyQuestionDummyData(questionId);
  Future<List<SurveyQuestionGeneralInfo>> getSurveysDummyData();
}
