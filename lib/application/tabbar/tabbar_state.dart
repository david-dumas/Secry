part of 'tabbar_bloc.dart';

@freezed
abstract class TabbarState with _$TabbarState {
  const factory TabbarState(
      {required int selectedIndex,
      required List<String> titlesForSelectedIndex,
      required String currentTitleForSelectedIndex}) = _TabbarState;

  factory TabbarState.initial() => TabbarState(
      selectedIndex: 0,
      titlesForSelectedIndex: [
        tr('page_title_home'),
        tr('page_title_search'),
        tr('page_title_saved_groups_and_surveys'),
        '',
      ],
      currentTitleForSelectedIndex: tr('page_title_home'));
}
