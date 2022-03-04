part of 'add_group_page_bloc.dart';

@freezed
class AddGroupPageState with _$AddGroupPageState {
  const factory AddGroupPageState(
      {required String groupTitle,
      required Image? groupImage,
      required String searchAllPeopleSearchValue,
      required List<User> groupMembers,
      required int currentStepIndex}) = _AddGroupPageState;

  factory AddGroupPageState.initial() => AddGroupPageState(
      groupTitle: "", groupImage: null, searchAllPeopleSearchValue: "", groupMembers: [], currentStepIndex: 0);
}
