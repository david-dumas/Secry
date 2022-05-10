part of 'group_overview_bloc.dart';

@freezed
class GroupOverviewState with _$GroupOverviewState {
  const factory GroupOverviewState(
      {required List<GroupOverviewRowInfo> chatInfoItems,
      required List<GroupOverviewRowInfo> surveyInfoItems,
      required bool isDataFetched,
      required bool isFetching,
      required FeatureType currentFeatureType}) = _GroupOverviewState;

  factory GroupOverviewState.initial() => GroupOverviewState(
      chatInfoItems: [],
      surveyInfoItems: [],
      isDataFetched: false,
      isFetching: false,
      currentFeatureType: FeatureType.chats);
}
