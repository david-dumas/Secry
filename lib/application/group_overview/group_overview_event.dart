part of 'group_overview_bloc.dart';

@freezed
class GroupOverviewEvent with _$GroupOverviewEvent {
  const factory GroupOverviewEvent.initialized(String groupId) = _Initialized;
  const factory GroupOverviewEvent.chatInfoItemsUpdated(List<GroupOverviewRowInfo> chatInfoItems) =
      _ChatInfoItemsUpdated;
  const factory GroupOverviewEvent.surveyInfoItemsUpdated(List<GroupOverviewRowInfo> surveyInfoItems) =
      _SurveyInfoItemsUpdated;
  const factory GroupOverviewEvent.groupOverviewRefreshed(String groupId) = _GroupOverviewRefreshed;
  const factory GroupOverviewEvent.isFetchingUpdated(bool isFetching) = _IsFetchingUpdated;
  const factory GroupOverviewEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
  const factory GroupOverviewEvent.currentFeatureTypeUpdated(FeatureType newFeatureType) = _CurrentFeatureTypeUpdated;
  const factory GroupOverviewEvent.groupRefreshed() = _GroupRefreshed;
}
