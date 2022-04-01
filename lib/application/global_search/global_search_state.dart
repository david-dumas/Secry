part of 'global_search_bloc.dart';

@freezed
class GlobalSearchState with _$GlobalSearchState {
  const factory GlobalSearchState(
      {required String searchValue,
      required List<GroupUser> usersForSearchQuery,
      required bool isDataFetched,
      required bool isFetchingInitialData,
      required bool isFetchingMoreDataForScrollDown,
      required PaginationInfo? paginationInfo}) = _GlobalSearchState;

  factory GlobalSearchState.initial() => GlobalSearchState(
      searchValue: "",
      usersForSearchQuery: [],
      isDataFetched: false,
      isFetchingInitialData: false,
      isFetchingMoreDataForScrollDown: false,
      paginationInfo: null);
}
