part of 'surveys_bloc.dart';

@freezed
class SurveysEvent with _$SurveysEvent {
  const factory SurveysEvent.initialized(String id) = _Initialized;
  const factory SurveysEvent.SurveyQuestionsUpdated(List<SurveyRowInfo> SurveyQuestionsInfo) =
  _SurveyQuestionsUpdated;
  const factory SurveysEvent.isFetchingUpdated(bool isFetching) = _IsFetchingUpdated;
  const factory SurveysEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
}