import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';

part 'all_chats_or_surveys_in_group_page_event.dart';
part 'all_chats_or_surveys_in_group_page_state.dart';
part 'all_chats_or_surveys_in_group_page_bloc.freezed.dart';

@injectable
class AllChatsOrSurveysInGroupPageBloc
    extends Bloc<AllChatsOrSurveysInGroupPageEvent, AllChatsOrSurveysInGroupPageState> {
  AllChatsOrSurveysInGroupPageBloc() : super(AllChatsOrSurveysInGroupPageState.initial()) {
    on<AllChatsOrSurveysInGroupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(
      AllChatsOrSurveysInGroupPageEvent event, Emitter<AllChatsOrSurveysInGroupPageState> emit) async {
    await event.map(
      initialized: (e) async {
        emit(state.copyWith(cellInfoItems: e.cellInfoItems));
      },
      searchValueUpdated: (e) async {
        emit(state.copyWith(searchValue: e.newValue));
      },
    );
  }
}
