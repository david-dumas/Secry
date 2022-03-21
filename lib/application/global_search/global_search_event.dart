part of 'global_search_bloc.dart';

@freezed
class GlobalSearchEvent with _$GlobalSearchEvent {
  const factory GlobalSearchEvent.initialized() = _Initialized;
  const factory GlobalSearchEvent.searchValueUpdated(String newValue) = _SearchValueUpdated;
  const factory GlobalSearchEvent.usersForSearchQueryUpdated(List<GroupUser> newUsers) = _UsersForSearchQueryUpdated;
  const factory GlobalSearchEvent.searchUsersPaginationPageNumberUpdated(int newValue) =
      _SearchUsersPaginationPageNumberUpdated;
  const factory GlobalSearchEvent.pageRefreshed() = _PageRefreshed;
  const factory GlobalSearchEvent.scrolledToLoadMoreItems() = _ScrolledToLoadMoreItems;
  const factory GlobalSearchEvent.isFetchingInitialDataUpdated(bool isFetching) = _IsFetchingInitialDataUpdated;
  const factory GlobalSearchEvent.isFetchingMoreDataForScrollDownUpdated(bool isFetching) =
      _IsFetchingMoreDataForScrollDownUpdated;
  const factory GlobalSearchEvent.isDataFetchedUpdated(bool isFetched) = _IsDataFetchedUpdated;
}
