part of 'tabbar_bloc.dart';

@freezed
class TabbarState with _$TabbarState {
  const factory TabbarState(
      {required int selectedIndex,
      required List<String> titleTagsForSelectedIndex,
      required String currentTitleTagForSelectedIndex,
      required bool isUserSignedIn}) = _TabbarState;

  factory TabbarState.initial() => TabbarState(
      selectedIndex: 0,
      titleTagsForSelectedIndex: [
        'page_title_home',
        'page_title_search',
        'page_title_saved_groups_and_surveys',
        'page_title_account',
      ],
      currentTitleTagForSelectedIndex: 'page_title_home',
      isUserSignedIn: false);
}
