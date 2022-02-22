part of 'group_overview_bloc.dart';

@freezed
class GroupOverviewEvent with _$GroupOverviewEvent {
  const factory GroupOverviewEvent.initialized(String groupId) = _GroupOverviewEvent;
  const factory GroupOverviewEvent.chatInfoItemsUpdated(List<GroupOverviewRowInfo> chatInfoItems) =
      _ChatInfoItemsUpdated;
  const factory GroupOverviewEvent.surveyInfoItemsUpdated(List<GroupOverviewRowInfo> surveyInfoItems) =
      _SurveyInfoItemsUpdated;
}
