part of 'surveys_bloc.dart';

@freezed
class SurveysEvent with _$SurveysEvent {
  const factory SurveysEvent.initialized(String groupId) = _Initialized;
  const factory SurveysEvent.SurveyRefreshed(String groupId) = _SurveyRefreshed;
  const factory SurveysEvent.isFetchingUpdated(bool isFetching) = _IsFetchingUpdated;
  const factory SurveysEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
  const factory SurveysEvent.currentFeatureTypeUpdated(FeatureType newFeatureType) = _CurrentFeatureTypeUpdated;
  // const factory SurveysEvent.groupRefreshed() = _SurveyRefreshed;
}