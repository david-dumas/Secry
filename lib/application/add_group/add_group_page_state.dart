part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageState with _$AddGroupPageState {
  const factory AddGroupPageState(
      {required String groupTitle,
      required Image? groupImage,
      required String searchAllPeopleSearchValue,
      required PaginationInfo? paginationInfo,
      required List<GroupUser> usersForSearchQuery,
      required List<GroupUser> groupMembers,
      required int currentStepIndex,
      required bool areUsersForSearchUsersFetched,
      required bool isFetchingUsersForSearch,
      required bool isGroupSuccessfullyCreated,
      required bool isCreateNewGroupRequestExecuted}) = _AddGroupPageState;

  factory AddGroupPageState.initial() => AddGroupPageState(
      groupTitle: "",
      groupImage: null,
      searchAllPeopleSearchValue: "",
      paginationInfo: null,
      usersForSearchQuery: [],
      groupMembers: [],
      currentStepIndex: 0,
      areUsersForSearchUsersFetched: false,
      isFetchingUsersForSearch: false,
      isGroupSuccessfullyCreated: false,
      isCreateNewGroupRequestExecuted: false);
}
