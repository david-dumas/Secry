part of 'surveys_bloc.dart';

@freezed
class SurveysState with _$SurveysState {
  const factory SurveysState(
      {required List<SurveyRowInfo> SurveyQuestionsInfo,
      required bool isDataFetched,
      required bool isFetching}) = _SurveysState;

  factory SurveysState.initial() => SurveysState(SurveyQuestionsInfo: [], isDataFetched: false, isFetching: false);
}
