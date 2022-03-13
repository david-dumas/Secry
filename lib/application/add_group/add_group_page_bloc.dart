import 'dart:async';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/users/i_users_repository.dart';
import 'package:secry/domain/users/group_user.dart';

import 'package:secry/domain/groups/new_group.dart';

part 'add_group_page_event.dart';
part 'add_group_page_state.dart';
part 'add_group_page_bloc.freezed.dart';

@injectable
class AddGroupPageBloc extends Bloc<AddGroupPageEvent, AddGroupPageState> {
  final IUsersRepository _usersRepository;

  AddGroupPageBloc(this._usersRepository) : super(AddGroupPageState.initial()) {
    on<AddGroupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(AddGroupPageEvent event, Emitter<AddGroupPageState> emit) async {
    await event.map(
      initialized: (e) async {
        final usersToSearchInNewGroup = await getUsersForSearchQuery(state.searchAllPeopleSearchValue);

        add(AddGroupPageEvent.usersForSearchQueryUpdated(usersToSearchInNewGroup));
      },
      groupTitleUpdated: (e) async {
        emit(state.copyWith(groupTitle: e.newTitle));
      },
      groupImageUpdated: (e) async {
        emit(state.copyWith(groupImage: e.newImage));
      },
      groupImageDeleted: (e) async {
        emit(state.copyWith(groupImage: null));
      },
      searchAllPeopleSearchValueUpdated: (e) async {
        emit(state.copyWith(searchAllPeopleSearchValue: e.newValue));

        final usersToSearchInNewGroup = await getUsersForSearchQuery(e.newValue);
        add(AddGroupPageEvent.usersForSearchQueryUpdated(usersToSearchInNewGroup));
      },
      usersForSearchQueryUpdated: (e) async {
        emit(state.copyWith(usersForSearchQuery: e.newUsers));
      },
      groupMembersUserAdded: (e) async {
        if (state.groupMembers.firstWhereOrNull((user) => user.id == e.addedUser.id) == null) {
          add(AddGroupPageEvent.groupMembersUpdated([...state.groupMembers, e.addedUser]));
        }
      },
      groupMembersUserDeleted: (e) async {
        add(AddGroupPageEvent.groupMembersUpdated([...state.groupMembers]..removeWhere((user) => user.id == e.userId)));
      },
      groupMembersUpdated: (e) async {
        emit(state.copyWith(groupMembers: e.newMembers));
      },
      currentStepIndexUpdated: (e) async {
        emit(state.copyWith(currentStepIndex: e.newIndex));
      },
      newGroupCreated: (e) async {
        final listWithGroupMemberIds = state.groupMembers.map((groupMember) => groupMember.id).toList();

        final newGroup = NewGroup(
            title: state.groupTitle,
            imageUrl:
                'https://firebasestorage.googleapis.com/v0/b/bakeryapp-75e68.appspot.com/o/users%2FIMG_1733-min.jpeg?alt=media&token=6ebf28ca-14c1-4c5b-abb2-fbbe1fc5d0ef',
            memberIds: listWithGroupMemberIds);

        await _usersRepository.createNewGroup(newGroup);
      },
    );
  }

  Future<List<GroupUser>> getUsersForSearchQuery(String searchValue) async {
    return _usersRepository.getUsersForSearchQuery(
        searchQuery: searchValue,
        pageNumber: state.searchUsersPaginationPageNumber,
        pageSize: state.searchUsersPaginationPageSize);
  }
}
