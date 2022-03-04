import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/user.dart';

part 'add_group_page_event.dart';
part 'add_group_page_state.dart';
part 'add_group_page_bloc.freezed.dart';

@injectable
class AddGroupPageBloc extends Bloc<AddGroupPageEvent, AddGroupPageState> {
  AddGroupPageBloc() : super(AddGroupPageState.initial()) {
    on<AddGroupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(AddGroupPageEvent event, Emitter<AddGroupPageState> emit) async {
    await event.map(
      groupTitleUpdated: (e) async {
        emit(state.copyWith(groupTitle: e.newTitle));
      },
      groupImageUpdated: (e) async {
        emit(state.copyWith(groupImage: e.newImage));
      },
      searchAllPeopleSearchValueUpdated: (e) async {
        emit(state.copyWith(searchAllPeopleSearchValue: e.newValue));
      },
      groupMembersUpdated: (e) async {
        emit(state.copyWith(groupMembers: e.newMembers));
      },
    );
  }
}
