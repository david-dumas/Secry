part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageEvent with _$AddGroupPageEvent {
  const factory AddGroupPageEvent.initialized() = _Initialized;
  const factory AddGroupPageEvent.groupTitleUpdated(String newTitle) = _GroupTitleUpdated;
  const factory AddGroupPageEvent.groupImageUpdated(Image newImage) = _GroupImageUpdated;
  const factory AddGroupPageEvent.groupImageDeleted() = _GroupImageDeleted;
  const factory AddGroupPageEvent.searchAllPeopleSearchValueUpdated(String newValue) =
      _SearchAllPeopleSearchValueUpdated;
  const factory AddGroupPageEvent.usersForSearchQueryUpdated(List<GroupUser> newUsers) = _UsersForSearchQueryUpdated;
  const factory AddGroupPageEvent.groupMembersUserAdded(GroupUser addedUser) = _GroupMembersUserAdded;
  const factory AddGroupPageEvent.groupMembersUserDeleted(String userId) = _GroupMembersUserDeleted;
  const factory AddGroupPageEvent.groupMembersUpdated(List<GroupUser> newMembers) = _GroupMembersUpdated;
  const factory AddGroupPageEvent.currentStepIndexUpdated(int newIndex) = _CurrentStepIndexUpdated;
  const factory AddGroupPageEvent.newGroupCreated() = _NewGroupCreated;
  const factory AddGroupPageEvent.areUsersForSearchUsersFetchedUpdated(bool areFetched) =
      _AreUsersForSearchUsersFetchedUpdated;
  const factory AddGroupPageEvent.isFetchingUsersForSearchQueryUpdated(bool isFetching) =
      _IsFetchingUsersForSearchQueryUpdated;
  const factory AddGroupPageEvent.searchUsersPaginationInfoUpdated(PaginationInfo? newPaginationInfo) =
      _SearchUsersPaginationInfoUpdated;
}
