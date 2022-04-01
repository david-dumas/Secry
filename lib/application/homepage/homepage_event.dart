part of 'homepage_bloc.dart';

@freezed
class HomepageEvent with _$HomepageEvent {
  const factory HomepageEvent.initialized() = _Initialized;
  const factory HomepageEvent.privateGroupsInfoUpdated(List<GroupOverviewRowInfo> privateGroupsRowsInfo) =
      _PrivateGroupsInfoUpdated;
  const factory HomepageEvent.updatedIsShowingSearchBar(bool isShowing) = _UpdatedIsShowingSearchBar;
  const factory HomepageEvent.searchValueUpdated(String newValue) = _SearchValueUpdated;
  const factory HomepageEvent.paginationInfoUpdated(PaginationInfo paginationInfo) = _PaginationInfoUpdated;
  const factory HomepageEvent.scrolledToLoadMoreItems() = _ScrolledToLoadMoreItems;
  const factory HomepageEvent.groupsRefreshed() = _GroupsRefreshed;
  const factory HomepageEvent.isFetchingInitialGroupsUpdated(bool isFetching) = _IsFetchingInitialGroupsUpdated;
  const factory HomepageEvent.isFetchingMoreGroupsForScrollDownUpdated(bool isFetching) =
      _IsFetchingMoreGroupsForScrollDownUpdated;
  const factory HomepageEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
}
