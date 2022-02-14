part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {required List<GroupOverviewRowInfo> privateGroupsRowsInfo, required bool isShowingSearchBar}) = _HomepageState;

  factory HomepageState.initial() => HomepageState(privateGroupsRowsInfo: [], isShowingSearchBar: false);
}
