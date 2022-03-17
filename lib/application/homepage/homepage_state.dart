part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required GeneralGroupInfo? generalGroupInfo,
      required bool isShowingSearchBar,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs,
      required bool isDataFetched,
      required int pageNumber,
      required int pageSize}) = _HomepageState;

  factory HomepageState.initial() => HomepageState(
      privateGroupsRowsInfo: [],
      generalGroupInfo: null,
      isShowingSearchBar: false,
      searchValue: '',
      privateGroupAvatarSvgs: [],
      isDataFetched: false,
      pageNumber: 1,
      pageSize: 15);
}
