part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageEvent with _$AddGroupPageEvent {
  const factory AddGroupPageEvent.initialized() = _Initialized;
  const factory AddGroupPageEvent.groupTitleUpdated(String newTitle) = _GroupTitleUpdated;
  const factory AddGroupPageEvent.groupImageUpdated(Image newImage) = _GroupImageUpdated;
  const factory AddGroupPageEvent.searchAllPeopleSearchValueUpdated(String newValue) =
      _SearchAllPeopleSearchValueUpdated;
  const factory AddGroupPageEvent.usersForSearchQueryUpdated(List<GroupUser> newUsers) = _UsersForSearchQueryUpdated;
  const factory AddGroupPageEvent.groupMembersUpdated(List<GroupUser> newMembers) = _GroupMembersUpdated;
  const factory AddGroupPageEvent.currentStepIndexUpdated(int newIndex) = _CurrentStepIndexUpdated;
}
