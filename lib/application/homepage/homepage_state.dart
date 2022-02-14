part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo,
      required bool isShowingSearchBar,
      required String searchValue,
      required List<DrawableRoot?> privateGroupAvatarSvgs}) = _HomepageState;

  factory HomepageState.initial() =>
      HomepageState(privateGroupsRowsInfo: [], isShowingSearchBar: false, searchValue: '', privateGroupAvatarSvgs: []);
}
