part of 'homepage_bloc.dart';

@freezed
class HomepageEvent with _$HomepageEvent {
  const factory HomepageEvent.initialized() = _Initialized;
  const factory HomepageEvent.privateGroupsInfoUpdated(List<GroupOverviewRowInfo> privateGroupsRowsInfo) =
      _PrivateGroupsInfoUpdated;
  const factory HomepageEvent.updatedIsShowingSearchBar(bool isShowing) = _UpdatedIsShowingSearchBar;
  const factory HomepageEvent.searchValueUpdated(String newValue) = _SearchValueUpdated;
  const factory HomepageEvent.generalGroupInfoUpdated(GeneralGroupInfo newGroupInfo) = _GeneralGroupInfoUpdated;
}
