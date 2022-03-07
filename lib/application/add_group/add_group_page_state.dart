part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageState with _$AddGroupPageState {
  const factory AddGroupPageState(
      {required String groupTitle,
      required Image? groupImage,
      required String searchAllPeopleSearchValue,
      required List<GroupUser> usersForSearchQuery,
      required List<GroupUser> groupMembers,
      required int currentStepIndex}) = _AddGroupPageState;

  factory AddGroupPageState.initial() => AddGroupPageState(
      groupTitle: "",
      groupImage: null,
      searchAllPeopleSearchValue: "",
      usersForSearchQuery: [],
      groupMembers: [],
      currentStepIndex: 0);
}
