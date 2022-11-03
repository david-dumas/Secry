part of 'surveys_bloc.dart';

@freezed
class SurveysState with _$SurveysState {
  const factory SurveysState(
      {required List<SurveyAnswerInfo> SurveyQuestionsInfo,
      required bool isDataFetched,
      required bool isDataQuestionFetched,
      required bool isFetching,
      required int currentQuestionIndex,
      required int totalQuestions,
      required List<GeneralSurveyQuestion> GeneralSurveyInfo
      }) = _SurveysState;

  factory SurveysState.initial() => SurveysState(
      GeneralSurveyInfo: [],
      SurveyQuestionsInfo: [],
      isDataFetched: false,
      isDataQuestionFetched: false,
      isFetching: false,
      currentQuestionIndex: 0,
      totalQuestions: 0);
}
