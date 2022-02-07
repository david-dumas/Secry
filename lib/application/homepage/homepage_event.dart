part of 'homepage_bloc.dart';

@freezed
class HomepageEvent with _$HomepageEvent {
  const factory HomepageEvent.initialized() = _Initialized;
  const factory HomepageEvent.privateGroupsInfoUpdated(List<GroupOverviewRowInfo> privateGroupsRowsInfo) =
      _PrivateGroupsInfoUpdated;
}
