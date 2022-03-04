part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageEvent with _$AddGroupPageEvent {
  const factory AddGroupPageEvent.groupTitleUpdated(String newTitle) = _GroupTitleUpdated;
  const factory AddGroupPageEvent.groupImageUpdated(Image newImage) = _GroupImageUpdated;
  const factory AddGroupPageEvent.searchAllPeopleSearchValueUpdated(String newValue) =
      _SearchAllPeopleSearchValueUpdated;
  const factory AddGroupPageEvent.groupMembersUpdated(List<User> newMembers) = _GroupMembersUpdated;
}
