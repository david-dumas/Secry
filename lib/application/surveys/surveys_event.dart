part of 'surveys_bloc.dart';

@freezed
class SurveysEvent with _$SurveysEvent {
  const factory SurveysEvent.initialized(String id) = _Initialized;
  const factory SurveysEvent.GeneralQuestionUpdated(List<GeneralSurveyQuestion> GeneralSurveyInfo) =
  _GeneralQuestionUpdated;
  const factory SurveysEvent.SurveyQuestionsUpdated(List<SurveyAnswerInfo> SurveyQuestionsInfo) =
  _SurveyQuestionsUpdated;
  const factory SurveysEvent.isFetchingUpdated(bool isFetching) = _IsFetchingUpdated;
  const factory SurveysEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
  const factory SurveysEvent.isDataQuestionFetchedUpdated(bool isQuestionFetched) = _IsDataQuestionFetchedUpdated;
  const factory SurveysEvent.currentQuestionUpdated(int currentQuestion) = _CurrentQuestionUpdated;
  const factory SurveysEvent.totalQuestionsUpdated(int totalQuestions) = _TotalQuestionsUpdated;
}