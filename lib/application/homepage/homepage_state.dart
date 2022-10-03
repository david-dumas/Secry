part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required PaginationInfo? paginationInfo,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs,
      required bool isDataFetched,
      required bool isFetchingInitialGroups,
      required bool isFetchingMoreGroupsForScrollDown}) = _HomepageState;

  factory HomepageState.initial() => HomepageState(
      privateGroupsRowsInfo: [],
      paginationInfo: null,
      searchValue: '',
      privateGroupAvatarSvgs: [],
      isDataFetched: false,
      isFetchingInitialGroups: false,
      isFetchingMoreGroupsForScrollDown: false);
}
