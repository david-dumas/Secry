part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required int totalNumberOfGroups,
      required bool isShowingSearchBar,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs}) = _HomepageState;

  factory HomepageState.initial() => HomepageState(
      privateGroupsRowsInfo: [],
      totalNumberOfGroups: 0,
      isShowingSearchBar: false,
      searchValue: '',
      privateGroupAvatarSvgs: []);
}
