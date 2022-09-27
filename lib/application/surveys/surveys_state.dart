part of 'surveys_bloc.dart';

@freezed
class SurveysState with _$SurveysState {
  const factory SurveysState(
      {required List<SurveyRowInfo> chatInfoItems,
        required List<SurveyRowInfo> surveyInfoItems,
        required bool isDataFetched,
        required bool isFetching,
        required FeatureType currentFeatureType}) = _SurveysState;

  factory SurveysState.initial() => SurveysState(
      chatInfoItems: [],
      surveyInfoItems: [],
      isDataFetched: false,
      isFetching: false,
      currentFeatureType: FeatureType.chats);
}
