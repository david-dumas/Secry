import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/users/i_users_repository.dart';
import 'package:secry/domain/users/group_user.dart';

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
        final usersToSearchInNewGroup = await _usersRepository.getUsersForSearchQuery(searchQuery: "");
        final usersAddedToNewGroup = await _usersRepository.getDummyUsersForAddedGroup();

        add(AddGroupPageEvent.usersForSearchQueryUpdated(usersToSearchInNewGroup));
        add(AddGroupPageEvent.groupMembersUpdated(usersAddedToNewGroup));
      },
      groupTitleUpdated: (e) async {
        emit(state.copyWith(groupTitle: e.newTitle));
      },
      groupImageUpdated: (e) async {
        emit(state.copyWith(groupImage: e.newImage));
      },
      searchAllPeopleSearchValueUpdated: (e) async {
        emit(state.copyWith(searchAllPeopleSearchValue: e.newValue));
      },
      usersForSearchQueryUpdated: (e) async {
        emit(state.copyWith(usersForSearchQuery: e.newUsers));
      },
      groupMembersUpdated: (e) async {
        emit(state.copyWith(groupMembers: e.newMembers));
      },
      currentStepIndexUpdated: (e) async {
        emit(state.copyWith(currentStepIndex: e.newIndex));
      },
    );
  }
}
