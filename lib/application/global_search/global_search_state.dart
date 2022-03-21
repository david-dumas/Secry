part of 'global_search_bloc.dart';

@freezed
class GlobalSearchState with _$GlobalSearchState {
  const factory GlobalSearchState(
      {required String searchValue,
      required List<GroupUser> usersForSearchQuery,
      required int searchUsersPaginationPageNumber,
      required int searchUsersPaginationPageSize,
      required bool isDataFetched,
      required bool isFetchingInitialData,
      required bool isFetchingMoreDataForScrollDown,
      required GeneralPaginationInfo? paginationInfo}) = _GlobalSearchState;

  factory GlobalSearchState.initial() => GlobalSearchState(
      searchValue: "",
      usersForSearchQuery: [],
      searchUsersPaginationPageNumber: 1,
      searchUsersPaginationPageSize: 15,
      isDataFetched: false,
      isFetchingInitialData: false,
      isFetchingMoreDataForScrollDown: false,
      paginationInfo: null);
}
